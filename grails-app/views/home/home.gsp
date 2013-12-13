<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Roosearch - Feedback with a bounce</title>
    <gvisualization:apiImport/>
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
    <h1>Feedback with a bounce</h1>

    <div align="center">

        <div>
            <p>Roosearch is the latest service for ensuring you get the best quality feedback from your services.</p>
        </div>

        <div>
            <img src="images/placeit_title.png"  width="426" height="283" style="margin: 15px"/>
        </div>
    </div>


    <h1>How does it work?</h1>

    <table>
        <tr>
            <td>
                <h3>Step 1</h3>
                Register and start setting up your surveys
            </td>
            <td><img src="images/step1_register.png" width="426" height="283"/></td>
        </tr>
        <tr>
            <td>
                <h3>Step 2</h3>
                Generate your QR code, print it off and attach to your menus, flyers, posters etc.
            </td>
            <td><img src="images/step2_qrcodes.png"/></td>
        </tr>
        <tr>
            <td>
                <h3>Step 3</h3>
                Users download the Roosearch app, retrieve your surveys using the QR code, and start giving you immediate feedback
            </td>
            <td><img src="images/step3_feedback.png" width="426" height="283"/></td>
        </tr>
        <tr>
            <td>
                <h3>Step 4</h3>
                You can see immediately the responses from the users, and act accordingly!
            </td>
            <td><img src="images/step4_results.png" width="426" height="283"/></td>
        </tr>
    </table>

    <g:form>
        <fieldset class="buttons">

        </fieldset>
    </g:form>

</div>
</body>
</html>
