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
    String photoCanine

    String getNameFullCanine (){
        microChip + " " + nameCanine
    }

    Integer getAgeCanine (){
        def start = dateBirthday
        def end = new Date()
        return end[Calendar.YEAR] - start[Calendar.YEAR]
    }

    static transients = [
            'nameFullCanine',
            'ageCanine'
    ]

    static namedQueries = {
        todayAgeCanine {
            between(ageCanine, 1, 8)
        }
    }

    static hasMany = [canineabilities : CanineAbility, clinichistoriesCan: ClinicHistory, exerciseabilities: ExerciseAbility, workcanines: WorkCanine]

    static constraints = {
        microChip (blank: false,nullable: false,unique: true)
        nameCanine (blank: false,maxSize: 15)
        nameFather (blank: true,maxSize: 15)
        nameMother (blank: true,maxSize: 15)
        dateBirthday (blank: false)
        sexCanine (blank: false)
        typeRace (blank: false)
        colorCanine (blank: false)
        signCanine(blank: true)
        walkSide (blank: true)
        sitDown (blank: true)
        feltDown (blank: true)
        attendCall (blank: true)
        positionStay (blank: true)
        watchCanine (blank: true)
        stateCanine (blank: false)
        photoCanine (blank: false)
    }
}
