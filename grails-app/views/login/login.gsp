<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Roosearch - Feedback with a bounce</title>
    <gvisualization:apiImport/>

    <style type="text/css">
    .container{
        padding: 20px;
    }
    .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
        -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
        box-shadow: 0 1px 2px rgba(0,0,0,.05);
    }
    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 10px;
    }
    .form-signin input[type="text"],
    .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
    }

    </style>
</head>

<body>

<a href="#show-survey" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link controller="home" action="index" class="button">Home</g:link></li>
        <li><g:link controller="user" action="list" class="button">User List</g:link></li>
        <li><g:link controller="user" action="create" class="button">Get Started!</g:link></li>
        <li><g:link controller="login" action="index" class="button">Login</g:link></li>
    </ul>
</div>

<div id="show-survey" class="content scaffold-show" role="main">

    <div class="container">

        <form class="form-signin">
            <h2 class="form-signin-heading">Please sign in</h2>
            <input type="text" class="input-block-level" placeholder="Email address">
            <input type="password" class="input-block-level" placeholder="Password">
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
            </label>
            <button class="btn btn-large btn-primary" type="submit">Sign in</button>
            <p>
            This feature is not yet implemented, please use the <g:link controller="user" action="list" class="button">demo users</g:link>
            </p>
        </form>

    </div>

    <g:form>
        <fieldset class="buttons">

        </fieldset>
    </g:form>

</div>
</body>
</html>
