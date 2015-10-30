package co.com.seguridog

class ClinicHistory {
    Date dateTreatment
    String nameTreatment
    String typeTreatment
    String evaluation

    static belongsTo = [medics : K9Veterinarian, canines : Canine]

    static constraints = {
        dateTreatment (blank: false)
        nameTreatment (blank: false)
        typeTreatment (blank: false)
        evaluation (blank: false)
    }
}
