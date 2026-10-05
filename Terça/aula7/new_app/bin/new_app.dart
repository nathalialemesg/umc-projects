import '../lib/Estagiario.dart';
import '../lib/Funcionario.dart';
import '../lib/Gerente.dart';
import '../lib/Vendedor.dart';

void main() {
  Funcionario gerente = Gerente("João", 1500, "Vendas");
  Funcionario estagiario = Estagiario("Nathalia", 4000, "Marketing");
  Funcionario vendedor = Vendedor("Maria", 4000, 10000);

  print(gerente.exibirInformacoes());
  print(vendedor.exibirInformacoes());
  print(estagiario.exibirInformacoes());
}