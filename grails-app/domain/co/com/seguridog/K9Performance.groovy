package co.com.seguridog

class K9Performance {
    String Sentado
    String Echado
    String Llamado
    String Quieto
    String CaminarAlLado
    String ManejoTradilla
    String Indicacion
    String ControlCanino
    String Entonacion
    String PremiaAdecuadamente
    String AlertarOrden
    String Inmovilizar
    String SoltarVigilar
    String ElementosUsados
    String Observaciones
    String Recomendaciones

    static constraints = {
        Sentado (inList["SI", "NO"], blank: false)
        Echado (inList["SI", "NO"], blank: false)
        Llamado (inList["SI", "NO"], blank: false)
        Quieto (inList["SI", "NO"], blank: false)
        CaminarAlLado (inList["SI", "NO"], blank: false)
        ManejoTradilla (inList["SI", "NO"], blank: false)
        Indicacion (inList["SI", "NO"], blank: false)
        ControlCanino (inList["SI", "NO"], blank: false)
        Entonacion (inList["SI", "NO"], blank: false)
        PremiaAdecuadamente (inList["SI", "NO"], blank: false)
        AlertarOrden (inList["SI", "NO"], blank: false)
        Inmovilizar (inList["SI", "NO"], blank: false)
        SoltarVigilar (inList["SI", "NO"], blank: false)
        ElementosUsados (blank: false)
        Observaciones(blank: false)
        Recomendaciones(blank: false)
    }
}
