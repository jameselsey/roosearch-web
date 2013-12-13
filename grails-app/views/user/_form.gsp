<%@ page import="web.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'facebookPageLink', 'error')} ">
    <label for="facebookPageLink">
        <g:message code="user.facebookPageLink.label" default="Facebook Page Link"/>

    </label>
    <g:textField name="facebookPageLink" value="${userInstance?.facebookPageLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'twitterHandle', 'error')} ">
    <label for="twitterHandle">
        <g:message code="user.twitterHandle.label" default="Twitter Handle"/>

    </label>
    <g:textField name="twitterHandle" value="${userInstance?.twitterHandle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'companyName', 'error')} ">
    <label for="companyName">
        <g:message code="user.companyName.label" default="Company Name"/>

    </label>
    <g:textField name="companyName" value="${userInstance?.companyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailAddress', 'error')} ">
    <label for="emailAddress">
        <g:message code="user.emailAddress.label" default="Email Address"/>

    </label>
    <g:textField name="emailAddress" value="${userInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="user.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="user.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'surveys', 'error')} ">
    <label for="surveys">
        <g:message code="user.surveys.label" default="Surveys"/>

    </label>
    <g:select name="surveys" from="${web.Survey.list()}" multiple="multiple" optionKey="id" size="5"
              value="${userInstance?.surveys*.id}" class="many-to-many"/>
</div>

