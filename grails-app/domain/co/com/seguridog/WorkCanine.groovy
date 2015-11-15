package co.com.seguridog

class WorkCanine {
    String userOfService
    String addressUbicationWorkArea
    Date dateUbicationWorkArea
    Integer hoursPerDay
    String typeService
    String addressRestCanine
    Date dateFinishReturnUnitK9

    static belongsTo = [handlers : K9Handler, canines : Canine]

    static constraints = {
        userOfService (blank: false)
        dateUbicationWorkArea (blank: false)
        dateFinishReturnUnitK9 (blank: false)
        addressUbicationWorkArea (blank: false)
        addressRestCanine (blank: false)
        hoursPerDay (blank: false)
        typeService (blank: false, inList: ["Fija", "Movil"])
    }
}
