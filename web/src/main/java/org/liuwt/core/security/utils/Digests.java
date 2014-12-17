package org.liuwt.core.security.utils;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.SecureRandom;

import org.apache.commons.lang3.Validate;
import org.liuwt.core.utils.Exceptions;

/**
 * 支持SHA-1/MD5消息摘要的工具类.
 * 
 * 返回ByteSource，可进一步被编码为Hex, Base64或UrlSafeBase64
 * 
 * @author liuwt, created on 2013-8-8 下午7:34:56
 */
public class Digests {

	private static final String SHA1 = "SHA-1";
	private static final String MD5 = "MD5";

	private static SecureRandom random = new SecureRandom();

	/**
	 * 对输入字符串进行sha1散列.
	 */
	public static byte[] sha1(final byte[] input) {
		return digest(input, SHA1, null, 1);
	}

	public static byte[] sha1(final byte[] input, final byte[] salt) {
		return digest(input, SHA1, salt, 1);
	}

	public static byte[] sha1(final byte[] input, final byte[] salt,
			final int iterations) {
		return digest(input, SHA1, salt, iterations);
	}

	/**
	 * 对字符串进行散列, 支持md5与sha1算法.
	 */
	private static byte[] digest(final byte[] input, final String algorithm,
			final byte[] salt, final int iterations) {
		try {
			final MessageDigest digest = MessageDigest.getInstance(algorithm);

			if (salt != null) {
				digest.update(salt);
			}

			byte[] result = digest.digest(input);

			for (int i = 1; i < iterations; i++) {
				digest.reset();
				result = digest.digest(result);
			}
			return result;
		}
		catch (final GeneralSecurityException e) {
			throw Exceptions.unchecked(e);
		}
	}

	/**
	 * 生成随机的Byte[]作为salt.
	 * 
	 * @param numBytes byte数组的大小
	 */
	public static byte[] generateSalt(final int numBytes) {
		Validate.isTrue(numBytes > 0,
				"numBytes argument must be a positive integer (1 or larger)",
				numBytes);

		final byte[] bytes = new byte[numBytes];
		random.nextBytes(bytes);
		return bytes;
	}

	/**
	 * 对文件进行md5散列.
	 */
	public static byte[] md5(final InputStream input) throws IOException {
		return digest(input, MD5);
	}

	/**
	 * 对文件进行sha1散列.
	 */
	public static byte[] sha1(final InputStream input) throws IOException {
		return digest(input, SHA1);
	}

	private static byte[] digest(final InputStream input, final String algorithm)
			throws IOException {
		try {
			final MessageDigest messageDigest = MessageDigest
					.getInstance(algorithm);
			final int bufferLength = 8 * 1024;
			final byte[] buffer = new byte[bufferLength];
			int read = input.read(buffer, 0, bufferLength);

			while (read > -1) {
				messageDigest.update(buffer, 0, read);
				read = input.read(buffer, 0, bufferLength);
			}

			return messageDigest.digest();
		}
		catch (final GeneralSecurityException e) {
			throw Exceptions.unchecked(e);
		}
	}

}
