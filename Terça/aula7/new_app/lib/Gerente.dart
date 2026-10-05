import "Funcionario.dart";
import "Bonificavel.dart";

class Gerente extends Funcionario implements Bonificavel {
  
  String _setor = "";

  Gerente(String nome, double salario, String setor) : super(nome, salario) {
    _setor = setor;
  }

  @override
  double calcularBonificacao() {
    return getSalario * 0.3;
  }

  //Getters & Setters
  String get getSetor {
    return _setor;
  }

  set setSetor(String novoSetor) {
    if (novoSetor.trim().isEmpty) {
      throw ArgumentError("Setor está vazio!");
    }
    _setor = novoSetor;
  }

  @override
  String exibirInformacoes(){
    return super.exibirInformacoes() + ", Setor: $_setor, Bonificação: ${calcularBonificacao()}";
  }
}