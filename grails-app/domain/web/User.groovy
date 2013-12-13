package web

class User {

    String firstName
    String lastName
    String emailAddress
    String companyName
    String facebookPageLink
    String twitterHandle

    static hasMany = [surveys: Survey]
    static constraints = {
        facebookPageLink nullable: true
        twitterHandle nullable: true
    }
}
