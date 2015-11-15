package co.com.seguridog

class K9Handler extends K9User{
    String basicInductionCourse
    Date dateApprovedInduction
    String typeTrainingHandler

    static hasMany = [workcanines : WorkCanine]

    static constraints = {
        basicInductionCourse (blank: false)
        dateApprovedInduction (blank: false)
        typeTrainingHandler (blank: false, inList: ["Búsqueda de Narcóticos","Búsqueda de Explosivos","Defensa Controlada","Búsqueda o Detección de Moneda","Búsqueda y Rescate de Personas"])
    }

}
