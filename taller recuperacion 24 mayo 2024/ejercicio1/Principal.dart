
/*Escribir un programa para un servicio de streaming que permita hacer una matriz CRUD para las películas, 
teniendo en cuenta su titulo, genero, país de producción. */
import 'dart:io';
import 'Pelicula.dart';

void main (){
  bool f=true;
  Map<String, Pelicula> cartelera={};

 
   int temp=1;
   List <dynamic> pelis=[];
do{
  print("a. agregar pelicula");
  print("b.  ver pelicula");
  print("c. modificar pelicula");
  print("d.  eliminar pelicula");
  print("e. salir");

  print("que deseas hacer?");
  dynamic opcion=stdin.readLineSync();
  switch(opcion){
    case 'a':
      print(" ingrese titulo");
      dynamic title=stdin.readLineSync();
      print(" ingrese genero");
      dynamic gener= stdin.readLineSync();
      print(" ingrese pais");
      dynamic country=stdin.readLineSync();
       String idPelicula="pelicula$temp";
      agregar(idPelicula, title, gener, country, cartelera );
      temp++;
    break;
    case'b':
        print(" ingresa la pelicula que quieres buscar");
        dynamic busqueda=stdin.readLineSync();

        cartelera.forEach((key, pelicula) {
          if(busqueda== key){
               print("id: $key titulo:${pelicula.titulo}  genero:${pelicula.genero} pais:${pelicula.pais}  ");
          }
         
        });
  
     break;
    case 'c':
         print(" ingresa  la pelicula que deseas editar");
         dynamic editarPelicula=stdin.readLineSync();
         editar(editarPelicula, cartelera);
         cartelera.forEach((key, pelicula) {
               print("id: $key titulo:${pelicula.titulo}  genero:${pelicula.genero} pais:${pelicula.pais}  ");
        });
     break;
    case 'd':
      print(" ingrese la pelicula que desea eliminar");
      dynamic borrarPelicula=stdin.readLineSync();
      eliminar(borrarPelicula,cartelera);

       cartelera.forEach((key, pelicula) {
               print("id: $key titulo:${pelicula.titulo}  genero:${pelicula.genero} pais:${pelicula.pais}  ");
        });
     break;
    case 'e':
    f=false;
    break;

  }

}while(f);
}
 void agregar(String a, dynamic  b, dynamic c, dynamic d,  Map <String,Pelicula> h){
    
      h[a]= Pelicula(b,c,d);
       
 }
 void eliminar (dynamic a, Map<String, Pelicula> h){
   
          h.remove(a);
       
 }

void editar(dynamic a, Map<String, Pelicula> h ){
  print("ingresa titulo nuevo");
  dynamic nuevoTitulo=stdin.readLineSync();
  print("ingresa genero nuevo");
  dynamic nuevoGenero=stdin.readLineSync();
  print("ingresa pais nuevo");
  dynamic nuevoPais=stdin.readLineSync();

   h.forEach((key, pelicula) {
    if(a== key){
        pelicula.titulo=nuevoTitulo;
        pelicula.genero=nuevoGenero;
        pelicula.pais=nuevoPais;
    }
   });
   
}




        


    


