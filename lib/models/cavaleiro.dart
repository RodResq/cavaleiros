
class Cavaleiro {
  final String nome;
  final int numeroCasa;
  final String armadura;

  Cavaleiro(this.nome, this.numeroCasa, this.armadura);

  @override
  String toString() {
    return 'Cavaleiro{nome: $nome, numeroCasa: $numeroCasa, armadura: $armadura}';
  }
}