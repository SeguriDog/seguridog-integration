package co.com.seguridog

import groovy.sql.Sql

class K9InstructorController {

    def dataSource

    def index() {}

    def register_ExerciseAbility() {}

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

    def look_profile_user(){
        def exercise_ability_list = ExerciseAbility.findAllByInstructorsAndDateAbilityLessThanEquals(session.user, new Date())
        def user_list = K9Instructor.findById(session.user.id)
        [exercise_ability_list : exercise_ability_list, user_list : user_list]
    }

    def edit_profile_user(){
        def edit_user = K9Instructor.findById(session.user.id)
        [edit_user : edit_user]
    }

    def save_profile_user(){
        Sql sql = Sql.newInstance(dataSource)
        sql.executeUpdate('update k9user set first_name = ?, last_name = ?, login_user = ?, login_pass = ?, birth_date = ?, cellphone = ?, e_mail = ? where id = ?',
                [params.firstName,params.lastName,params.loginUser,params.loginPass,params.birthDate,params.cellphone,params.eMail,session.user.id])
        redirect(controller: "K9Instructor", action: "look_profile_user")
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
        redirect(controller: "K9Instructor", action: "index")
    }
}
