<%@ page import="web.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-user" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list user">

        <g:if test="${userInstance?.facebookPageLink}">
            <li class="fieldcontain">
                <span id="facebookPageLink-label" class="property-label"><g:message code="user.facebookPageLink.label"
                                                                                    default="Facebook Page Link"/></span>

                <span class="property-value" aria-labelledby="facebookPageLink-label"><g:fieldValue
                        bean="${userInstance}" field="facebookPageLink"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.twitterHandle}">
            <li class="fieldcontain">
                <span id="twitterHandle-label" class="property-label"><g:message code="user.twitterHandle.label"
                                                                                 default="Twitter Handle"/></span>

                <span class="property-value" aria-labelledby="twitterHandle-label"><g:fieldValue bean="${userInstance}"
                                                                                                 field="twitterHandle"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.companyName}">
            <li class="fieldcontain">
                <span id="companyName-label" class="property-label"><g:message code="user.companyName.label"
                                                                               default="Company Name"/></span>

                <span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${userInstance}"
                                                                                               field="companyName"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.emailAddress}">
            <li class="fieldcontain">
                <span id="emailAddress-label" class="property-label"><g:message code="user.emailAddress.label"
                                                                                default="Email Address"/></span>

                <span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${userInstance}"
                                                                                                field="emailAddress"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="user.firstName.label"
                                                                             default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}"
                                                                                             field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="user.lastName.label"
                                                                            default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}"
                                                                                            field="lastName"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.surveys}">
            <li class="fieldcontain">
                <span id="surveys-label" class="property-label"><g:message code="user.surveys.label"
                                                                           default="Surveys"/></span>

                <g:each in="${userInstance.surveys}" var="s">
                    <span class="property-value" aria-labelledby="surveys-label"><g:link controller="survey"
                                                                                         action="show"
                                                                                         id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <li class="fieldcontain">
            <span id="qr-label" class="property-label"><g:message code="user.surveys.label"
                                                                  default="QR Code"/></span>
            <span class="property-value" aria-labelledby="qr-label">
                <g:link controller="user" action="generateQrCode" id="${userInstance.id}">Generate QR Code</g:link>
            </span>
        </li>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${userInstance?.id}"/>
            <g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label"
                                                                                   default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
