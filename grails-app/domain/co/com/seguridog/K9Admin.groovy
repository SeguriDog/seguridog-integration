package co.com.seguridog

import grails.validation.Validateable

@Validateable
class K9Admin extends K9User{
    Date dateInitialAccess

    static constraints = {
        dateInitialAccess blank: false
    }
}
