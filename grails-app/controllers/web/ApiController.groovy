package web

import grails.converters.JSON

class ApiController {

    def index() {
        render "Please check that the URL you have used is correctly formatted"
    }

    def getCustomer(){
        User u = User.get(params.customerid)

        def surveysToPresent = [:]

        u.surveys.each {
            surveysToPresent << [title: it.title, id: it.id]
        }
        render(contentType: 'text/json') {[
                'company_name': u.companyName,
                'twitter' : u.twitterHandle,
                'facebook' : u.facebookPageLink,
                'surveys' : [surveysToPresent]
        ]} as JSON
    }

    def getSurvey(){
        Survey s = Survey.get(params.surveyid)

        def questionsToPresent = [:]

        questionsToPresent = s.questions.collect {
            [
                    id: it.id,
                    text: it.text,
                    responses : it.responses.collect{ resp ->
                        [id: resp.id, text: resp.text]
                    }
            ]
        }

        render(contentType: 'text/json') {[
                'id' : s.id,
                'title': s.title,
                'questions' : questionsToPresent
        ]} as JSON
    }


/*

{
  responses:[
   {
     question_id : 1,
     response_id : 2
   },
   {
     question_id : 2,
     response_id : 6
   }
  ]
}
 */
    def surveyComplete(){
        def jsonObject = request.JSON

        Survey theSurvey = Survey.findById(jsonObject.id)

        jsonObject.responses.each{ response ->
            theSurvey.questions.find {it.id == response.question_id}.responses.find {it.id == response.response_id}.numberOfPeopleSelected++
        }
        theSurvey.save(flush: true, failOnError: true)

        render(status: 204)
    }
}
