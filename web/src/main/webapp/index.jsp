<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1 align="center">Hello, world!</h1>
</div>
<div class="container">
    <ul class="nav nav-pills" role="tablist">
        <li role="presentation" class="active"><a href="#">Home</a></li>
        <li role="presentation"><a href="#">Profile</a></li>
        <li role="presentation"><a href="#">Messages</a></li>
    </ul>
</div>
<div class="container">
    <div class="jumbotron">
        <h1>Hello, world!</h1>

        <p>this is a hello world page which is writed by bootstrap.</p>

        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
    </div>
</div>
<div class="container">
    <div class="progress">
        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40"
             aria-valuemin="0" aria-valuemax="100" style="width: 40%">
            <span class="sr-only">40% Complete (success)</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20"
             aria-valuemin="0" aria-valuemax="100" style="width: 20%">
            <span class="sr-only">20% Complete</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60"
             aria-valuemin="0" aria-valuemax="100" style="width: 60%">
            <span class="sr-only">60% Complete (warning)</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80"
             aria-valuemin="0" aria-valuemax="100" style="width: 80%">
            <span class="sr-only">80% Complete (danger)</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0"
             aria-valuemax="100" style="width: 45%">
            <span class="sr-only">45% Complete</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-success" style="width: 35%">
            <span class="sr-only">35% Complete (success)</span>
        </div>
        <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 20%">
            <span class="sr-only">20% Complete (warning)</span>
        </div>
        <div class="progress-bar progress-bar-danger" style="width: 10%">
            <span class="sr-only">10% Complete (danger)</span>
        </div>
    </div>
</div>
<div class="container">
    <ul class="list-group">
        <li class="list-group-item list-group-item-success">Dapibus ac facilisis in</li>
        <li class="list-group-item list-group-item-info">Cras sit amet nibh libero</li>
        <li class="list-group-item list-group-item-warning">Porta ac consectetur ac</li>
        <li class="list-group-item list-group-item-danger">Vestibulum at eros</li>
    </ul>
    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-success">Dapibus ac facilisis in</a>
        <a href="#" class="list-group-item list-group-item-info">Cras sit amet nibh libero</a>
        <a href="#" class="list-group-item list-group-item-warning">Porta ac consectetur ac</a>
        <a href="#" class="list-group-item list-group-item-danger">Vestibulum at eros</a>
    </div>
</div>
<div class="container">
    <div class="panel panel-info">
        <!-- Default panel contents -->
        <div class="panel-heading">Table heading</div>
        <table class="table table-hover">
            <tbody>
            <theader>
                <th>Name</th>
                <th>Address</th>
            </theader>
            <tr class="active">
                <td>Eric Grammer</td>
                <td>America</td>
            </tr>
            <tr class="danger">
                <td>Weitao Liu</td>
                <td>China</td>
            </tr>
            </tbody>
        </table>
        <nav>
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a></li>
                <li class="next"><a href="#">Newer &rarr;</a></li>
            </ul>
        </nav>
    </div>
</div>
<div class="container">
    <div class="panel panel-danger">
        <!-- Default panel contents -->
        <div class="panel-heading">Panel heading</div>

        <!-- List group -->
        <ul class="list-group">
            <li class="list-group-item">Cras justo odio</li>
            <li class="list-group-item">Dapibus ac facilisis in</li>
            <li class="list-group-item">Morbi leo risus</li>
            <li class="list-group-item">Porta ac consectetur ac</li>
            <li class="list-group-item">Vestibulum at eros</li>
        </ul>
    </div>
</div>

<div class="container">
    <!-- Standard button -->
    <button type="button" class="btn btn-default">Default</button>

    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
    <button type="button" class="btn btn-primary">Primary</button>

    <!-- Indicates a successful or positive action -->
    <button type="button" class="btn btn-success">Success</button>

    <!-- Contextual button for informational alert messages -->
    <button type="button" class="btn btn-info">Info</button>

    <!-- Indicates caution should be taken with this action -->
    <button type="button" class="btn btn-warning">Warning</button>

    <!-- Indicates a dangerous or potentially negative action -->
    <button type="button" class="btn btn-danger">Danger</button>

    <!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
    <button type="button" class="btn btn-link">Link</button>

    <!-- Single button -->
    <div class="btn-group">
        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
            Action <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
        </ul>
    </div>

    <!-- Split button -->
    <div class="btn-group">
        <button type="button" class="btn btn-danger">Action</button>
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
            <span class="caret"></span>
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
        </ul>
    </div>

    <a href="#">Inbox <span class="badge">42</span></a>

    <button class="btn btn-primary" type="button">
        Messages <span class="badge">4</span>
    </button>
</div>
<div class="container">
    <form role="form">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="exampleInputFile">File input</label>
            <input type="file" id="exampleInputFile">

            <p class="help-block">Example block-level help text here.</p>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox"> Check me out
            </label>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>
<div class="container">
    <form class="form-inline" role="form">
        <div class="form-group">
            <label class="sr-only" for="exampleInputEmail2">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">@</div>
                <input class="form-control" type="email" placeholder="Enter email">
            </div>
        </div>
        <div class="form-group">
            <label class="sr-only" for="exampleInputPassword2">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox"> Remember me
            </label>
        </div>
        <select class="form-control">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
        <button type="submit" class="btn btn-default">Sign in</button>
    </form>
</div>
<div class="container">
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>

            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Sign in</button>
            </div>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="">
                Option one is this and that&mdash;be sure to include why it's great
            </label>
        </div>
        <div class="checkbox disabled">
            <label>
                <input type="checkbox" value="" disabled>
                Option two is disabled
            </label>
        </div>

        <div class="radio">
            <label>
                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                Option one is this and that&mdash;be sure to include why it's great
            </label>
        </div>
        <div class="radio">
            <label>
                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                Option two can be something else and selecting it will deselect option one
            </label>
        </div>
        <div class="radio disabled">
            <label>
                <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
                Option three is disabled
            </label>
        </div>
    </form>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>