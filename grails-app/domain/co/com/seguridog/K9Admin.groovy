package co.com.seguridog

class K9Admin extends K9User{
    Date dateInitialAccess

    static constraints = {
        dateInitialAccess blank: false
    }
}
