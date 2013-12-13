package web

class Survey {

    Integer id
    String title

    static hasMany = [questions: Question]

    static mapping = {
        questions lazy: false
    }

    static constraints = {
        id()
        title()
        questions()
    }

    String toString(){
        return title
    }
}
