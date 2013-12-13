import web.*

class BootStrap {

    def init = { servletContext ->

        // Keep references on these as we'll use them for populating sample surveys
        Response great = new Response(id: 1, text: "Great", numberOfPeopleSelected: 3).save(flush: true, failOnError: true)
        Response average = new Response(id: 2, text: "Average", numberOfPeopleSelected: 2).save(flush: true, failOnError: true)
        Response poor = new Response(id: 3, text: "Poor", numberOfPeopleSelected: 1).save(flush: true, failOnError: true)
        Response tasty = new Response(id: 4, text: "Tasty", numberOfPeopleSelected: 2).save(flush: true, failOnError: true)
        Response ok = new Response(id: 5, text: "OK", numberOfPeopleSelected: 3).save(flush: true, failOnError: true)
        Response horrible = new Response(id: 6, text: "Horrible", numberOfPeopleSelected: 1).save(flush: true, failOnError: true)
        Response friends = new Response(id: 7, text: "Friends", numberOfPeopleSelected: 4).save(flush: true, failOnError: true)
        Response advert = new Response(id: 8, text: "Advert", numberOfPeopleSelected: 2).save(flush: true, failOnError: true)
        Response radio = new Response(id: 9, text: "Radio", numberOfPeopleSelected: 0).save(flush: true, failOnError: true)

        // These are some other responses that we'll make available in the response bank
        ["Excellent", "Good", "Satisfactory", "Bad", "Very bad", "true", "false", "Yes", "No", "Maybe"].each {
            new Response(text: it).save(flush: true, failOnError: true)
        }

        Question q1 = new Question(id: 1, text: "What did you think of the service?", responses: [great, average, poor]).save(flush: true, failOnError: true)
        Question q2 = new Question(id: 2, text: "Was the food nice?", responses: [tasty, ok, horrible]).save(flush: true, failOnError: true)
        Question q3 = new Question(id: 3, text: "How did you hear about our establishment?", responses: [friends, advert, radio]).save(flush: true, failOnError: true)

        Survey cosmos = new Survey(id: 1, title: "COSMOs customer feedback", questions: [q1, q2, q3]).save(flush: true, failOnError: true)
        Survey jamies = new Survey(id: 2, title: "Jamies Italian customer feedback", questions: [q1, q2, q3]).save(flush: true, failOnError: true)

        new User(firstName: 'Jamie',
                lastName: 'Oliver',
                emailAddress: 'jamieoliver@gmail.com',
                companyName: 'Jamies Italian Cardiff',
                twitterHandle: 'JamiesItalianUK',
                facebookPageLink: '155660184467188',
                surveys: [jamies])
                .save(flush: true, failOnError: true)

        new User(firstName: 'Manabu',
                lastName: 'Lee',
                emailAddress: 'manny@hotmail.com',
                companyName: 'COSMOs Cardiff',
                facebookPageLink: 'http://www.facebook.com/pages/Cosmo-Cardiff/149516125084210?fref=ts',
                surveys: [cosmos])
                .save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}
