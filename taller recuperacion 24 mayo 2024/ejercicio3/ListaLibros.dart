import 'Libros.dart';
class ListaLibros {
  List<Libro> _libros = [];

  int get cantidadLibros => _libros.length;

  void insertarLibro(Libro libro) {
    int index = 0;
    while (index < _libros.length && _libros[index].titulo.compareTo(libro.titulo) < 0) {
      index++;
    }
    _libros.insert(index, libro);
  }

  void eliminarLibro(int posicion) {
    if (posicion >= 0 && posicion < _libros.length) {
      _libros.removeAt(posicion);
    }
  }

  Libro obtenerLibro(int posicion) {
    if (posicion >= 0 && posicion < _libros.length) {
      return _libros[posicion];
    }
     return Libro("Libro no encontrado", "N/A");
  }

  int buscarLibro(String parteTitulo) {
    for (int i = 0; i < _libros.length; i++) {
      if (_libros[i].titulo.toLowerCase().contains(parteTitulo.toLowerCase())) {
        return i;
      }
    }
    return -1;
  }
}