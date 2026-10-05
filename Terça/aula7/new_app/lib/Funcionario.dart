abstract class Funcionario {
  String _nome = "";
  double _salario = 0.0;

  //Construtor
  Funcionario(String nome, double salario) {
    this.setNome = nome;
    this.setSalario = salario;
  }

  //getters & setters

  String get getNome {
    return _nome;
  }

  double get getSalario {
    return _salario;
  }

  set setNome(String novoNome) {
    if (novoNome.isEmpty) {
      throw Exception("Nome não pode ser vazio");
    }
    this._nome = novoNome;
  }

  set setSalario(double novoSalario) {
    if (novoSalario < 0) {
      throw Exception("Salário não pode ser negativo");
    }
    this._salario = novoSalario;
  }
  
  //exibir informações do funcionário
  String exibirInformacoes(){
    return("Nome: $getNome, Salário: $getSalario");
  }
}
