package co.com.seguridog

import javax.sql.DataSource
import groovy.sql.Sql
import groovy.xml.Entity

class K9AdminController {

    def dataSource

    def index() {}

    def register() {
        //render(view:"/K9Admin/register.gsp")
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

}

