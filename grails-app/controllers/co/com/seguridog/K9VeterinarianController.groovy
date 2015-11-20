package co.com.seguridog

import groovy.sql.Sql

class K9VeterinarianController {

    def user

    def dataSource

    def index() {
    }

    def register_clinic_history() {
        def canine_list = Canine.findAllByStateCanine('Activo')
        [canine_list : canine_list]
    }

    def search_clinic_history_by_dog() {
        //def canine_list = Canine.findAllByStateCanine('Activo')
        def clinic_history_list = ClinicHistory.findAll()
        [clinic_history_list : clinic_history_list]
    }

    def result_search_clinic_history() {

    }

    def save_data_clinic() {
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into clinic_history(version,canines_id,date_treatment,evaluation,medics_id,name_treatment,type_treatment) values (?, ?, ?, ?, ?, ?, ?)',
                [8,params.canine_id,params.dateTreatment,params.evaluation,session.user.id,params.nameTreatment,params.typeTreatment])
        redirect(controller: "K9Veterinarian", action: "index")
    }

    def edit_data_clinic() {

    }
}
