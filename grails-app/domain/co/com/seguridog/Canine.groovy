package co.com.seguridog

class Canine {
    String microChip
    String nameCanine
    String nameFather
    String nameMother
    Date dateBirthday
    String sexCanine
    String typeRace
    String colorCanine
    String signCanine
    String walkSide
    String sitDown
    String feltDown
    String attendCall
    String positionStay
    String watchCanine

    static hasMany = [canineabilities : CanineAbility, clinichistoriesCan: ClinicHistory, exerciseabilities: ExerciseAbility, workcanines: WorkCanine]

    static constraints = {
        microChip (blank: false)
        nameCanine (blank: false)
        nameFather (blank: false)
        nameMother (blank: false)
        dateBirthday (blank: false)
        sexCanine (blank: false)
        typeRace (blank: false)
        colorCanine (blank: false)
        signCanine(blank: false)
        walkSide (blank: false)
        sitDown (blank: false)
        feltDown (blank: false)
        attendCall (blank: false)
        positionStay (blank: false)
        watchCanine (blank: false)
    }

}
