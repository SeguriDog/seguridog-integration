package co.com.seguridog

import javax.servlet.http.HttpSession

class K9UserController {

    def scaffold = K9User

    def index() {}

    def login = {

    }

    def authenticate = {
        def user = K9User.findByLoginUserAndLoginPass(params.loginUser, params.loginPass)
        if (user) {
            session.user = user
            if (user.typeUsers == 1) {
                flash.message = "${session.user.loginUser}"
                redirect(controller: "K9Admin", action: "index")
            } else if (user.typeUsers == 2) {
                redirect(controller: "K9Instructor", action: "index")
            } else if (user.typeUsers == 3) {
                redirect(controller: "K9Veterinarian", action: "index")
            } else if (user.typeUsers == 4) {
                redirect(controller: "K9Handler", action: "index")
            } else {
                redirect(action: "login")
            }
        } else {
            flash.message = "Lo sentimos, usuario y/o password incorrecto(s). Intenta nuevamente."
            redirect(action: "login")
        }
    }

    def logout = {
        //flash.message = "Adios ${session.user.loginUser}"
        session.invalidate()
        redirect(controller: "K9User", action: "login")
    }
}