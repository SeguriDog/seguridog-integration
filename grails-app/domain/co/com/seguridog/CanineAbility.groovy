package co.com.seguridog

class CanineAbility {
    Date dateTrainingAbility
    String nameEntity
    String actCertification
    Date dateCertification

    static belongsTo = [canines : Canine]

    static constraints = {
        dateTrainingAbility (blank: false)
        nameEntity (blank: false)
        actCertification (blank: false)
        dateCertification (blank: false)
    }

}
