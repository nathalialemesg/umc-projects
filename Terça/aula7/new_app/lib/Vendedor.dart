import 'Funcionario.dart';
import 'Bonificavel.dart';

class Vendedor extends Funcionario implements Bonificavel {

  double _metaVendas = 0;

  Vendedor(String nome, double salario, double metaVendas) : super(nome, salario){
    _metaVendas = metaVendas;
  }

  @override
  double calcularBonificacao() {
    return getSalario * 0.2 + _metaVendas * 0.1;
  }

  //Getters & Setters 
  double get getMetaVendas{
    return _metaVendas;
  }

  set setMetaVendas(double novaMetaVendas){
    if (novaMetaVendas < 0){
      throw ArgumentError("Meta não pode ser menor que 0!");
    }
    _metaVendas = novaMetaVendas;
  }

  @override
  String exibirInformacoes(){
    return super.exibirInformacoes() + ", Meta: $_metaVendas, Bonificação: ${calcularBonificacao()}";
  }

}