package web

class Question {

    Integer id
    String text

    static hasMany = [responses: Response]
    static mapping = {
        responses lazy: false
    }

    static constraints = {
        id()
        text()
        responses()
    }

    String toString(){
        return text
    }
}
