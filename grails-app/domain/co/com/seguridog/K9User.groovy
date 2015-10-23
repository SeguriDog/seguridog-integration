package co.com.seguridog

import java.time.LocalDate
import java.time.Month

class K9User {
    Integer cedula
    String lastName
    String firstName
    String loginUser
    String loginPass
    LocalDate birthDate
    String cellphone
    String eMail

    int getAge() {
        birthDate.compareTo(LocalDate.now())
    }

    String toString() {
        firstName + " " + lastName
    }

    static constraints = {
        cedula unique: true
        lastName maxSize: 40
        firstName maxSize: 40
        birthDate min: LocalDate.of(1900, Month.JANUARY, 1)
        cellphone size: 10..11
        eMail email: true
        loginUser unique: true
        loginPass()
    }
}
