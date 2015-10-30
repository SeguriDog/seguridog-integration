package co.com.seguridog

class TrainingInstructor {
    String nameCourse
    Date dateCourse
    Integer teacherCourse
    Integer studentCourse

    static constraints = {
        nameCourse (blank: false)
        dateCourse (blank: false)
        teacherCourse (blank: false)
        studentCourse (blank: false)
    }

}
