package co.com.seguridog

import grails.validation.Validateable

@Validateable
class K9User {

    Integer cedula
    String firstName
    String lastName
    String loginUser
    String loginPass
    Date birthDate
    String cellphone
    String eMail
    String typeContract
    Date dateContract
    Integer typeUsers
    Boolean enableUser
    String photoUser

    int getAge() {
        birthDate.compareTo(new Date())
    }

    String toString() {
        firstName + " " + lastName
    }

    String getFullName(){
        firstName + " " + lastName
    }

    static transients = ['fullName']

    static constraints = {
        cedula nullable: false, blank: false, unique: true
        lastName nullable: false, blank: false, maxSize: 40
        firstName nullable: false, blank: false, maxSize: 40
        birthDate nullable: false
        cellphone nullable: false, blank: false, size: 7..10
        eMail nullable: false, blank: false, email: true
        loginUser nullable: false, blank: false, unique: true
        loginPass(nullable: false, blank: false, unique:true, length:8..15, validator:{val, obj ->
            if(val?.equalsIgnoreCase(obj.firstName)) {
                return false
            }
        })
        typeContract blank: false
        dateContract blank: false
        typeUsers range: 1..4
        enableUser blank: false
        photoUser blank: false
    }
}
