package co.com.seguridog

class ExerciseAbility{
    Date dateAbility
    String typeAbility
    String nameAbility
    String exercicesAbility
    String typeTraining
    String issuesTraining
    Integer obedience
    Integer velLearning
    Integer naturePlay
    Integer natureExplore
    Integer levelContantactitude
    Integer levelExiting
    Integer actitudeGeneral
    Integer dominated
    Integer relationshipHandler
    Integer comunicativeCanine
    Integer stablityEmotional
    Integer interAgressive


    static belongsTo = [instructors : K9Instructor, canines : Canine]

    static constraints = {
        dateAbility (blank: false)
        typeAbility (blank: false)
        nameAbility (blank: false)
        exercicesAbility (blank: false)
        typeTraining (blank: false)
        issuesTraining (blank: false)
        obedience (blank: false)
        velLearning (blank: false)
        naturePlay (blank: false)
        natureExplore (blank: false)
        levelContantactitude (blank: false)
        levelExiting (blank: false)
        actitudeGeneral (blank: false)
        dominated (blank: false)
        relationshipHandler (blank: false)
        comunicativeCanine (blank: false)
        stablityEmotional (blank: false)
        interAgressive (blank: false)

    }

}
