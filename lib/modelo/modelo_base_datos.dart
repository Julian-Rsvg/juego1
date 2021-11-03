
class Modelo {
    Modelo({
        this.id,
        this.nombre,
        this.apellidos,
        this.edad,
        this.alias,
    });

    int id;
    String nombre;
    String apellidos;
    int edad;
    String alias;

    factory Modelo.fromJson(Map<String, dynamic> json) => Modelo(
        id: json["id"],
        nombre: json["nombre"],
        apellidos: json["apellidos"],
        edad: json["edad"],
        alias: json["alias"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "apellidos": apellidos,
        "edad": edad,
        "alias": alias,
    };
}
