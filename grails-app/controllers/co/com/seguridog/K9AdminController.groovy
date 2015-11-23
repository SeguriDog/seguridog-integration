package co.com.seguridog

import groovy.sql.Sql

class K9AdminController {

    def dataSource

    def index() {}

    def view_profile_user(){
        def user = K9Admin.findById(session.user.id)
        [user : user]
    }

    def edit_profile_user(){
        def edit_user = K9Admin.findById(session.user.id)
        [edit_user : edit_user]
    }

    def save_profile_user(){
        Sql sql = Sql.newInstance(dataSource)
        sql.executeUpdate('update k9user set first_name = ?, last_name = ?, login_user = ?, login_pass = ?, birth_date = ?, cellphone = ?, e_mail = ? where id = ?',
                [params.firstName,params.lastName,params.loginUser,params.loginPass,params.birthDate,params.cellphone,params.eMail,session.user.id])
        redirect(controller: "K9Admin", action: "view_profile_user")
    }

    def register_user(){}

    def user_register = {
        redirect(controller: "K9Admin", action: "register_user")
    }

    def users_list = {
        def list = K9User.findAll()
        [users:list]
    }

    def dogs_list = {
        def lista = Canine.findAll()
        [dogs:lista]
    }

    def register_dog(){}

    def dog_register = {
        redirect(controller: "K9Admin", action: "register_dog")
    }

    def save_data_dog = {
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into canine(version,photo_canine,color_canine,date_birthday,micro_chip,name_canine,sex_canine,state_canine,type_race) values (?, ?, ?, ?, ?, ?, ?, ?, ?)',
                [4,params.photoCanine,params.color_canine,params.date_birthday,params.micro_chip,params.name_canine,params.sex_canine,'Activo',params.type_race])
        redirect(controller: "K9Admin", action: "index")
    }

    def save_data_user = {
        def nameClass
        if( params.typeUsers.equals("2") ){
            nameClass = 'co.com.seguridog.K9Instructor'
        }else if( params.typeUsers.equals("3") ){
            nameClass = 'co.com.seguridog.K9Veterinarian'
        }else{
            nameClass = 'co.com.seguridog.K9Handler'
        }
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into k9user(version,photo_user,birth_date,cedula,cellphone,date_contract,e_mail,enable_user,first_name,last_name,login_pass,login_user,type_contract,type_users,class) values (?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?,?)',
                [6,params.photoUser,params.birthDate,params.cedula,params.cellphone,params.dateContract,params.eMail,true,params.firstName,params.lastName,params.loginPass,params.loginUser,params.typeContract,params.typeUsers,nameClass])
        redirect(controller: "K9Admin", action: "index")
    }

    def register_service (){
        def handler_list = K9Handler.findAllByEnableUser(true)
        def canine_list = Canine.findAllByStateCanine('Activo')
        //def canine_last = Canine.todayAgeCanine.findAllByStateCanine('Activo')
        [handler_list : handler_list, canine_list : canine_list]
    }

    def save_data_service (){
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into work_canine(version,address_rest_canine,address_ubication_work_area,canines_id,date_finish_return_unitk9,date_ubication_work_area,handlers_id,hours_per_day,type_service,user_of_service) values (?,?,?,?,?,?,?,?,?,?)',
                [0,params.addressRestCanine,params.addressWorkArea,params.canine_id,params.dateFinishWork,params.dateWorkArea,params.handler_id,params.hoursPerDay,params.typeService,params.userService])
        redirect(controller: "K9Admin", action: "index")
    }

    def search_user(){}

    def search_canines(){}

    def result_search_user(){
        def result_user
        if (params.search_type_user.equals("1")){
            result_user = K9User.findAllByFirstNameLikeAndEnableUser("%${params.search_text}%", true)
        } else if (params.search_type_user.equals("2")){
            result_user = K9User.findAllByLastNameLikeAndEnableUser("%${params.search_text}%", true)
        } else if (params.search_type_user.equals("3")){
            result_user = K9User.findAllByEnableUser(true)
        }
        [result_user : result_user]
    }

    def result_search_canines(){
        def result_canine
        if (params.search_type_canine.equals("1")){
            result_canine = Canine.findAllByMicroChipIlike("%${params.search_text}%")
        } else if (params.search_type_canine.equals("2")){
            result_canine = Canine.findAllByNameCanineIlike("%${params.search_text}%")
        } else if (params.search_type_canine.equals("3")){
            result_canine = Canine.findAllBySexCanineIlike("%${params.search_text}%")
        } else {
            result_canine = Canine.findAll()
        }
        [result_canine : result_canine]
    }

    def look_profile_canine(){
        def canine_info = Canine.findById(params.id_canine_look)
        def canine_clinic = ClinicHistory.findAllByCanines(canine_info)
        def canine_training = ExerciseAbility.findAllByCanines(canine_info)
        [canine_info : canine_info, canine_clinic : canine_clinic, canine_training : canine_training]
    }

    def edit_profile_canine(){
        def edit_canine = Canine.findById(params.id_canine_edit)
        [edit_canine : edit_canine]
    }

    def save_profile_canine() {
        Sql sql = Sql.newInstance(dataSource)
        sql.executeUpdate('update canine set name_canine = ?, name_father = ?, name_mother = ?, date_birthday = ?, type_race = ?, color_canine = ?, sign_canine = ?, sex_canine = ?, state_canine = ? where id = ?',
                [params.name_canine,params.name_father,params.name_mother,params.birthDate,params.type_race,params.color_canine,params.sign_canine,params.sex_canine,params.state_canine,params.id_canine])
        redirect(controller: "K9Admin", action: "index")
    }
}
