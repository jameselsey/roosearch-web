package web


class LoginController {

    static scaffold = true

    def index = {
        render(view: "login.gsp")
    }
}
