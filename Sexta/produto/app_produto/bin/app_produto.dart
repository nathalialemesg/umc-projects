import 'package:app_produto/app_produto.dart';

void main() {
  try{Product notebook = Product("Asus", 2500.00, 10);

  print(notebook.name);
  print(notebook.value);
  print(notebook.quantity);

  notebook.name = "Macbook";
  notebook.value = 7800.00;
  notebook.quantity = 8;

  print(notebook.name);
  print(notebook.value);
  print(notebook.quantity);

  } catch(erro){
    print(erro);
  }

}