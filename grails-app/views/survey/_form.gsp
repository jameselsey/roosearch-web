<%@ page import="web.Survey" %>



<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="survey.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${surveyInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'questions', 'error')} ">
    <label for="questions">
        <g:message code="survey.questions.label" default="Questions"/>

    </label>
    <g:select name="questions" from="${web.Question.list()}" multiple="multiple" optionKey="id" size="5"
              value="${surveyInstance?.questions*.id}" class="many-to-many"/>
</div>

