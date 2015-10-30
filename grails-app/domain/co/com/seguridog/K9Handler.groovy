package co.com.seguridog

class K9Handler extends K9User{
    String approvedCourse
    Date dateApproved

    static hasMany = [workcanines : WorkCanine]

    static constraints = {
        approvedCourse(blank: false)
        dateApproved blank: false
    }

}
