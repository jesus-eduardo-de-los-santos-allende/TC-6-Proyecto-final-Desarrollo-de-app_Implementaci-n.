class Receta {

  String id;
  String nombre;
  String descripcion;
  List<String> ingredientes;
  String preparacion;
  String categoria;
  int tiempoPreparacion;
  String imagen;

  bool creadaPorUsuario;


  Receta({

    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.ingredientes,
    required this.preparacion,
    required this.categoria,
    required this.tiempoPreparacion,
    required this.imagen,

    this.creadaPorUsuario = false,

  });



  Map<String,dynamic> toMap(){

    return {

      'id': id,
      'nombre': nombre,
      'descripcion': descripcion,
      'ingredientes': ingredientes,
      'preparacion': preparacion,
      'categoria': categoria,
      'tiempoPreparacion': tiempoPreparacion,
      'imagen': imagen,

      'creadaPorUsuario':
          creadaPorUsuario,

    };

  }



  factory Receta.fromMap(
      Map<String,dynamic> map){

    return Receta(

      id: map['id'],

      nombre:
          map['nombre'],

      descripcion:
          map['descripcion'],

      ingredientes:
          List<String>.from(
            map['ingredientes'],
          ),

      preparacion:
          map['preparacion'],

      categoria:
          map['categoria'],

      tiempoPreparacion:
          map['tiempoPreparacion'],

      imagen:
          map['imagen'],

      creadaPorUsuario:
          map['creadaPorUsuario'] ?? false,

    );

  }

}