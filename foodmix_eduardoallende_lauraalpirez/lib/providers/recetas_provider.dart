import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/receta.dart';


class RecetasProvider extends ChangeNotifier {


final List<Receta> _recetas = [


// ================= COMIDAS =================


Receta(
id: const Uuid().v4(),
nombre: 'Tacos de carne asada',
descripcion: 'Tacos de carne asada.',
ingredientes:[
'Carne de res',
'Tortillas de maíz',
'Cebolla',
'Cilantro',
'Limón',
'Salsa',
'Sal',
'Pimienta'
],
preparacion:
'1. Lava y corta la carne de res en trozos pequeños.\n'
'2. Agrega sal, pimienta y un poco de limón para marinarla durante unos minutos.\n'
'3. Calienta una parrilla .\n'
'4. Coloca la carne y ásala hasta que quede dorada por fuera y completamente cocida.\n'
'5. Retira la carne y córtala en pedazos pequeños.\n'
'6. Calienta las tortillas en un comal.\n'
'7. Sirve la carne en las tortillas y agrega cebolla, cilantro, limón y salsa.',
categoria:'Comida',
tiempoPreparacion:35,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoQW9imX8fZiZYOKZerO7fOQrJJ-ga519Yag&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Enchiladas rojas',
descripcion:'Tortillas bañadas en salsa roja con pollo.',
ingredientes:[
'Tortillas de maíz',
'Pollo deshebrado',
'Chile guajillo',
'Ajo',
'Queso',
'Crema',
'Cebolla'
],
preparacion:
'1. Retira las semillas de los chiles guajillo.\n'
'2. Hierve los chiles hasta que estén suaves.\n'
'3. Licúa los chiles con ajo, sal y un poco de agua.\n'
'4. Cocina la salsa durante unos minutos para mejorar el sabor.\n'
'5. Pasa las tortillas por la salsa caliente.\n'
'6. Rellena las tortillas con pollo deshebrado.\n'
'7. Dobla las enchiladas y agrega queso, crema y cebolla.',
categoria:'Comida',
tiempoPreparacion:45,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ_CAGkV5wUGls_rruSfTitR-s-YhO4RPzIg&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Pozole rojo',
descripcion:'Pozole tradicional mexicano con carne de cerdo.',
ingredientes:[
'Maíz pozolero',
'Carne de cerdo',
'Chile guajillo',
'Ajo',
'Lechuga',
'Rábano',
'Limón'
],
preparacion:
'1. Lava el maíz pozolero y ponlo a cocer hasta que comience a abrirse.\n'
'2. Agrega la carne de cerdo y deja cocinar hasta que esté suave.\n'
'3. Desvena los chiles guajillo y hiérvelos.\n'
'4. Licúa los chiles con ajo y cuela la salsa.\n'
'5. Agrega la salsa al caldo del pozole y deja hervir.\n'
'6. Sirve caliente y acompaña con lechuga, rábano y limón.',
categoria:'Comida',
tiempoPreparacion:120,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu3fjcbtlBiqgKx1VIH0cR1Eaog-JNjPqjmg&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Quesadillas',
descripcion:'Tortillas .',
ingredientes:[
'Tortillas',
'Queso Oaxaca',
'Salsa-opcional'
],
preparacion:
'1. Coloca una tortilla sobre un comal caliente.\n'
'2. Agrega queso Oaxaca en una mitad de la tortilla.\n'
'3. Dobla la tortilla y cocina hasta que el queso se derrita.\n'
'4. Sirve caliente con salsa.',
categoria:'Comida',
tiempoPreparacion:20,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSslAgEy7N-97wlK7V2xJhgSVi2131-tzXTlA&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Chilaquiles verdes',
descripcion:'Totopos con salsa verde y acompañamientos.',
ingredientes:[
'Totopos',
'Tomatillo',
'Chile verde',
'Crema',
'Queso',
'Huevo'
],
preparacion:
'1. Hierve los tomatillos y chiles verdes hasta suavizarlos.\n'
'2. Licúa con ajo y sal hasta obtener una salsa.\n'
'3. Cocina la salsa en un sartén durante unos minutos.\n'
'4. Agrega los totopos y mezcla ligeramente.\n'
'5. Sirve con crema, queso y huevo al gusto.',
categoria:'Comida',
tiempoPreparacion:30,
imagen:
'https://thaicaliente.com/wp-content/uploads/2023/02/Chilaquiles-verdes-feature.jpg',
),



Receta(
id: const Uuid().v4(),
nombre:'Tamales ',
descripcion:'Tamales preparados con masa de maíz.',
ingredientes:[
'Masa de maíz',
'Hojas de maíz',
'Carne de pollo o cerdo',
'Salsa'
],
preparacion:
'1. Remoja las hojas de maíz en agua caliente hasta suavizarlas.\n'
'2. Mezcla la masa con manteca y sal hasta que tenga buena textura.\n'
'3. Coloca una capa de masa sobre la hoja.\n'
'4. Agrega el relleno de carne con salsa.\n'
'5. Cierra los tamales y colócalos en una vaporera.\n'
'6. Cocina aproximadamente una hora hasta que la masa esté firme.',
categoria:'Comida',
tiempoPreparacion:90,
imagen:
'https://www.mexicoenmicocina.com/wp-content/uploads/2018/03/tamales-de-elote-500x500.jpg',
),



Receta(
id: const Uuid().v4(),
nombre:'Flautas de pollo',
descripcion:'Tacos enrollados y fritos rellenos de pollo.',
ingredientes:[
'Tortillas',
'Pollo cocido',
'Aceite',
'Crema',
'Lechuga'
],
preparacion:
'1. Cocina el pollo y deshébralo.\n'
'2. Coloca pollo dentro de cada tortilla.\n'
'3. Enrolla la tortilla formando una flauta.\n'
'4. Fríe en aceite caliente hasta que quede crujiente.\n'
'5. Sirve con lechuga, crema y salsa.',
categoria:'Comida',
tiempoPreparacion:40,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQw0bXKeDs-iqVgS_HmwJbw7rPsmXcg6g5lw&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Sopes ',
descripcion:'Base de masa con frijoles y carne.',
ingredientes:[
'Masa',
'Frijoles',
'Carne',
'Queso',
'Lechuga'
],
preparacion:
'1. Forma círculos pequeños con la masa.\n'
'2. Cocina en comal hasta que estén firmes.\n'
'3. Forma los bordes presionando alrededor.\n'
'4. Cocina nuevamente para que queden dorados.\n'
'5. Agrega frijoles, carne, queso y verduras.',
categoria:'Comida',
tiempoPreparacion:45,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_09Z06sIZcrh8Qp9ouPEHSs7Es0ihq-DB8Q&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Tostadas ',
descripcion:'Tostadas crujientes .',
ingredientes:[
'Tostadas',
'Frijoles',
'Carne',
'Lechuga',
'Queso',
'Crema'
],
preparacion:
'1. Calienta o fríe las tortillas hasta que estén crujientes.\n'
'2. Unta una capa de frijoles sobre la tostada.\n'
'3. Agrega carne preparada.\n'
'4. Coloca lechuga, queso y crema.\n'
'5. Sirve con salsa al gusto.',
categoria:'Comida',
tiempoPreparacion:35,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7dL2kGpxiTOouYbgAQKodpPmAuqQXA-FSIA&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Arroz rojo ',
descripcion:'Arroz preparado con jitomate.',
ingredientes:[
'Arroz',
'Jitomate',
'Ajo',
'Cebolla',
'Zanahoria'
],
preparacion:
'1. Lava el arroz y deja escurrir.\n'
'2. Licúa jitomate con ajo y cebolla.\n'
'3. Fríe el arroz hasta que cambie ligeramente de color.\n'
'4. Agrega la salsa de jitomate y agua.\n'
'5. Cocina tapado hasta que el arroz esté suave.',
categoria:'Comida',
tiempoPreparacion:40,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpRBQjQSbKuZcg-Jph2TYqOX-OijrHXBk6Lw&s',
),

// ================= POSTRES =================


Receta(
id: const Uuid().v4(),
nombre:'Arroz con leche',
descripcion:'Postre  preparado con arroz y leche.',
ingredientes:[
'Arroz',
'Leche',
'Azúcar',
'Canela',
'Vainilla'
],
preparacion:
'1. Lava el arroz y colócalo en una olla con agua.\n'
'2. Cocina hasta que el arroz esté suave.\n'
'3. Agrega la leche, azúcar y vainilla.\n'
'4. Cocina a fuego bajo mientras mezclas para evitar que se pegue.\n'
'5. Añade canela y deja espesar.\n'
'6. Sirve caliente o frío.',
categoria:'Postre',
tiempoPreparacion:50,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmUYacY9wRWbtcv-WMAphCV0KGgw7kV_fJ8A&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Flan ',
descripcion:'Postre suave con caramelo casero.',
ingredientes:[
'Huevo',
'Leche',
'Azúcar',
'Vainilla'
],
preparacion:
'1. Coloca azúcar en una olla y calienta hasta formar caramelo.\n'
'2. Vierte el caramelo en el molde.\n'
'3. Licúa huevos, leche y vainilla.\n'
'4. Agrega la mezcla al molde.\n'
'5. Cocina a baño María hasta que esté firme.\n'
'6. Refrigera antes de desmoldar.',
categoria:'Postre',
tiempoPreparacion:70,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD9xWweZByZBpXaEVQl1LKJ0A76hQmdl-vvg&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Churros',
descripcion:'Postre frito con azúcar y canela.',
ingredientes:[
'Harina',
'Agua',
'Mantequilla',
'Aceite',
'Azúcar',
'Canela'
],
preparacion:
'1. Hierve agua con mantequilla y una pizca de sal.\n'
'2. Agrega harina y mezcla hasta formar una masa.\n'
'3. Deja enfriar un poco y coloca la masa en una manga pastelera.\n'
'4. Forma tiras de masa.\n'
'5. Fríe en aceite caliente hasta que estén dorados.\n'
'6. Pasa los churros por azúcar con canela.',
categoria:'Postre',
tiempoPreparacion:40,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrkKCbMWd-IHYC6H9sYuSjs7dOXXDw8LIp1g&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Gelatina de mosaico',
descripcion:'Gelatina mexicana con cubos de colores.',
ingredientes:[
'Gelatina de sabores',
'Leche',
'Grenetina',
'Azúcar'
],
preparacion:
'1. Prepara gelatinas de diferentes sabores.\n'
'2. Espera a que cuajen completamente.\n'
'3. Corta las gelatinas en cubos pequeños.\n'
'4. Prepara una gelatina de leche.\n'
'5. Mezcla los cubos dentro de la gelatina líquida.\n'
'6. Refrigera hasta que quede firme.',
categoria:'Postre',
tiempoPreparacion:90,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Sml1xjNT-FNYxfEbHNTTwkph7SGt2xj8fA&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Pastel tres leches',
descripcion:'Pastel húmedo .',
ingredientes:[
'Harina',
'Huevo',
'Leche evaporada',
'Leche condensada',
'Crema'
],
preparacion:
'1. Prepara la mezcla del pastel con harina, huevo y azúcar.\n'
'2. Hornea hasta que esté completamente cocido.\n'
'3. Mezcla leche evaporada, condensada y crema.\n'
'4. Perfora el pastel con un tenedor.\n'
'5. Agrega la mezcla de tres leches encima.\n'
'6. Refrigera antes de servir.',
categoria:'Postre',
tiempoPreparacion:90,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMH9St9kl7kblfasKlBEvT_YZtJn-mJrJ1gw&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Pan de elote',
descripcion:'Pan dulce preparado con maíz.',
ingredientes:[
'Elote',
'Huevo',
'Leche',
'Azúcar',
'Mantequilla'
],
preparacion:
'1. Retira los granos del elote.\n'
'2. Licúa elote, huevo, leche, azúcar y mantequilla.\n'
'3. Coloca la mezcla en un molde engrasado.\n'
'4. Hornea hasta que esté dorado.\n'
'5. Deja enfriar antes de cortar.',
categoria:'Postre',
tiempoPreparacion:60,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP02EvyOL4E8_onQKfE14nTtA9zrziGWzdhg&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Buñuelos ',
descripcion:'Postre crujiente con azúcar y canela.',
ingredientes:[
'Harina',
'Agua',
'Aceite',
'Azúcar',
'Canela'
],
preparacion:
'1. Mezcla harina con agua hasta formar una masa suave.\n'
'2. Deja reposar la masa unos minutos.\n'
'3. Extiende la masa hasta que quede muy delgada.\n'
'4. Fríe en aceite caliente hasta dorar.\n'
'5. Retira el exceso de aceite.\n'
'6. Agrega azúcar y canela.',
categoria:'Postre',
tiempoPreparacion:45,
imagen:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN6ArGw3fYrphK-6VLGzOBPXpZbXQZoKSEcQ&s',
),



Receta(
id: const Uuid().v4(),
nombre:'Pastel de chocolate',
descripcion:'Pastel casero de chocolate.',
ingredientes:[
'Harina',
'Cocoa',
'Huevo',
'Azúcar',
'Leche'
],
preparacion:
'1. Mezcla harina, cocoa y azúcar.\n'
'2. Agrega huevos y leche.\n'
'3. Bate hasta obtener una mezcla uniforme.\n'
'4. Coloca en un molde.\n'
'5. Hornea hasta que al insertar un palillo salga limpio.\n'
'6. Decora al gusto.',
categoria:'Postre',
tiempoPreparacion:50,
imagen:
'https://www.solopostres.com/wp-content/uploads/2025/06/Torta-humeda-de-chocolate-casera-800x800.jpg',
),


];



List<Receta> get recetas => _recetas;



void agregarReceta(Receta receta) {

  receta.creadaPorUsuario = true;

  _recetas.add(receta);

  notifyListeners();

}



void eliminarReceta(String id){

_recetas.removeWhere(
(receta)=> receta.id == id
);

notifyListeners();

}



void editarReceta(
String id,
Receta nuevaReceta,
){

final index =
_recetas.indexWhere(
(r)=>r.id==id
);


if(index!=-1){

_recetas[index]=nuevaReceta;

notifyListeners();

}

}



Receta recetaAleatoria(){

_recetas.shuffle();

return _recetas.first;

}


}