package looptalks

class Usuario {
String titulo
    String nombre
    String usuario
    String ubicacion
    String cve_dbf
    String clavearcgis
    String passwd
    Boolean estatus
    String area
    
    static constraints = {
        titulo(size:0..10, nullable:true)
        usuario(unique:true, nullable:false, blank:false)
        passwd(minSize:6)
        area(inList:["Sistemas", "Administrativo", "Juridico"])
    }
    static mapping = {
        id generator: 'increment'
    }
}
