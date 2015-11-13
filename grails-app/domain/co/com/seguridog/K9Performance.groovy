package co.com.seguridog

class K9Performance {
    String sentado
    String echado
    String llamado
    String quieto
    String caminarAlLado
    String manejoTradilla
    String indicacion
    String controlCanino
    String entonacion
    String premiaAdecuadamente
    String alertarOrden
    String inmovilizar
    String soltarVigilar
    String elementosUsados
    String observaciones
    String recomendaciones

    static constraints = {
        sentado (inList:["SI", "NO"], blank: false)
        echado (inList:["SI", "NO"], blank: false)
        llamado (inList:["SI", "NO"], blank: false)
        quieto (inList:["SI", "NO"], blank: false)
        caminarAlLado (inList:["SI", "NO"], blank: false)
        manejoTradilla (inList:["SI", "NO"], blank: false)
        indicacion (inList:["SI", "NO"], blank: false)
        controlCanino (inList:["SI", "NO"], blank: false)
        entonacion (inList:["SI", "NO"], blank: false)
        premiaAdecuadamente (inList:["SI", "NO"], blank: false)
        alertarOrden (inList:["SI", "NO"], blank: false)
        inmovilizar (inList:["SI", "NO"], blank: false)
        soltarVigilar (inList:["SI", "NO"], blank: false)
        elementosUsados (blank: false)
        observaciones(blank: false)
        recomendaciones(blank: false)
    }
}
