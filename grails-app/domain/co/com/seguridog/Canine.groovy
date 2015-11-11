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
    String stateCanine

    static hasMany = [canineabilities : CanineAbility, clinichistoriesCan: ClinicHistory, exerciseabilities: ExerciseAbility, workcanines: WorkCanine]

    static constraints = {
        microChip (blank: false,nullable: false,unique: true)
        nameCanine (blank: false,maxSize: 15)
        nameFather (blank: false,maxSize: 15)
        nameMother (blank: false,maxSize: 15)
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
        stateCanine (blank: false)
    }

}
