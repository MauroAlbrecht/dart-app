class Pessoa {
  String _nome;
  String _endereco;

  Pessoa(this._nome, this._endereco);

  String getEndereco() {
    return _endereco;
  }

  String getNome() {
    return _nome;
  }

  @override
  String toString() {
    return {
      "Nome" : _nome,
      "Endereço" : _endereco
    }.toString();
  }
}
