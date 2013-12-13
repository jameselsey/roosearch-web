package web

class Response {

    Integer id
    String text
    Integer numberOfPeopleSelected = 0

    static constraints = {
        id()
        text()
        numberOfPeopleSelected()
    }

    String toString(){
        return text
    }
}
