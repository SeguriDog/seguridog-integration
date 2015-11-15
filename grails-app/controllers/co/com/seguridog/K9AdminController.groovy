package co.com.seguridog

import groovy.sql.Sql

class K9AdminController {

    def dataSource

    def index() {}

    def register() {

    }

    def user_register = {
        redirect(controller: "K9Admin", action: "register")
    }

    def users_list = {
        def list = K9User.findAll()
        [users:list]
    }

    def save_data = {
        def cedula = params.cedula
        def firstName = params.firstName
        def lastName = params.lastName
        def loginUser = params.loginUser
        def loginPass = params.loginPass
        def birthDate = params.birthDate
        def cellphone = params.cellphone
        def eMail = params.eMail
        def typeContract = params.typeContract
        def dateContract = params.dateContract
        def typeUsers = params.typeUsers

        def nameClass
        if( typeUsers.equals("2") ){
            nameClass = 'co.com.seguridog.K9Instructor'
        }else{
            if( typeUsers.equals("3") ){
                nameClass = 'co.com.seguridog.K9Veterinarian'
            }else{
                if( typeUsers.equals("4") ){
                    nameClass = 'co.com.seguridog.K9Handler'
                }
            }
        }

        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into k9user(version,birth_date,cedula,cellphone,date_contract,e_mail,first_name,last_name,login_pass,login_user,type_contract,type_users,class) values (?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?)',
                [6,birthDate,cedula,cellphone,dateContract,eMail,firstName,lastName,loginPass,loginUser,typeContract,typeUsers,nameClass])
        //se puede usar sql.executeInsert("insert into....")
        redirect(controller: "K9Admin", action: "index")
    }


    def register_service (){
        def handler_list = K9Handler.findAllByEnableUser(true)
        def canine_list = Canine.findAllByStateCanine('Activo')
        [handler_list : handler_list, canine_list : canine_list]
    }

    def save_data_service (){
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into work_canine(version,address_rest_canine,address_ubication_work_area,canines_id,date_finish_return_unitk9,date_ubication_work_area,handlers_id,hours_per_day,type_service,user_of_service) values (?,?,?,?,?,?,?,?,?,?)',
                [0,params.addressRestCanine,params.addressWorkArea,params.canine_id,params.dateFinishWork,params.dateWorkArea,params.handler_id,params.hoursPerDay,params.typeService,params.userService])
        redirect(controller: "K9Admin", action: "index")
    }
}
