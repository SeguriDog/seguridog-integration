package co.com.seguridog

class K9HandlerController {

    def index() { }

    def activities_history(){
        def activities_list = WorkCanine.findAllByHandlers(session.user)
        [activities_list : activities_list]
    }

    def current_activities(){
        def curActivities_list = WorkCanine.findAllByDateUbicationWorkAreaLessThanEqualsAndDateFinishReturnUnitK9GreaterThanEqualsAndHandlers(new Date(), new Date(), session.user)
        [curActivities_list : curActivities_list]
    }

    def search_user(){}

    def search_canines(){}

    def result_search_user(){
        def result_user
        if (params.search_type_user.equals("1")){
            result_user = K9User.findAllByFirstNameLikeAndEnableUser("%${params.search_text}%", true)
        } else if (params.search_type_user.equals("2")){
            result_user = K9User.findAllByLastNameLikeAndEnableUser("%${params.search_text}%", true)
        } else if (params.search_type_user.equals("3")){
            result_user = K9User.findAllByEnableUser(true)
        }
        [result_user : result_user]
    }

    def result_search_canines(){
        def result_canine
        if (params.search_type_canine.equals("1")){
            result_canine = Canine.findAllByMicroChipIlike("%${params.search_text}%")
        } else if (params.search_type_canine.equals("2")){
            result_canine = Canine.findAllByNameCanineIlike("%${params.search_text}%")
        } else if (params.search_type_canine.equals("3")){
            result_canine = Canine.findAllBySexCanineIlike("%${params.search_text}%")
        } else {
            result_canine = Canine.findAll()
        }
        [result_canine : result_canine]
    }
}