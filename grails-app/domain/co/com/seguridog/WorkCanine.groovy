package co.com.seguridog

class WorkCanine {
    Date dateWorkArea
    String addressWorkArea
    Integer hoursPerDay

    static belongsTo = [handlers : K9Handler, canines : Canine]

    static constraints = {
        dateWorkArea (blank: false)
        addressWorkArea (blank: false)
        hoursPerDay (blank: false)
    }
}
