import 'Funcionario.dart';

class Estagiario extends Funcionario{

  String _curso = "";

  Estagiario(String nome, double salario, String curso) : super(nome, salario){
    _curso = curso;
  }

  String get getCurso {
    return _curso;
  }

  set setCurso(String novoCurso){
    if(novoCurso.trim().isEmpty){
      throw ArgumentError("Curso está vazio!");
    }
    _curso = novoCurso;
  }

 @override
 String exibirInformacoes(){
  return super.exibirInformacoes() + ", Curso: $_curso";
 }

}