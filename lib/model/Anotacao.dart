class Anotacao{

  int? id;
  String titulo;
  String descricao;
  String data;

  Anotacao(this.titulo, this.descricao, this.data, {this.id});

  Anotacao.fromMap(Map<String, dynamic> map) :
        id = map["id"],
        titulo = map["titulo"],
        descricao = map["descricao"],
        data = map["data"];


  Map<String, dynamic> toMap(){

    Map<String, dynamic> map = {
      "titulo" : this.titulo,
      "descricao" : this.descricao,
      "data" : this.data,
    };

    if( this.id != null ){
      map["id"] = this.id;
    }
    return map;
  }
}