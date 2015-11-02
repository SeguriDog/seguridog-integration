package co.com.seguridog

import java.time.LocalDate

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

    int getAge() {
        birthDate.compareTo(new Date())
    }

    String toString() {
        firstName + " " + lastName
    }

    static constraints = {
<<<<<<< HEAD
        cedula unique: true
        lastName maxSize: 40
        firstName maxSize: 40
        birthDate min: LocalDate.of(1900, Month.JANUARY, 1)
        cellphone size: 10..11
        eMail email: true
        loginUser unique: true
        loginPass()
=======
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
>>>>>>> 4d150330aa6a7f4318c4235718c971c35c5bebdb
    }
}
