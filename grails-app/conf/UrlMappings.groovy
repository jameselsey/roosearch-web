class UrlMappings {

	static mappings = {
        "/api/customer/$customerid"(controller: "api", action: 'getCustomer')
        "/api/survey/$surveyid"(controller: "api", action: [GET: 'getSurvey'])
        "/api/survey"(controller: "api", action: [POST: 'surveyComplete'])

        "/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }

		"/"(controller: "home")
		"500"(view:'/error')
	}
}
