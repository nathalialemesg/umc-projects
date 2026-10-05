void main() {

  Clothes tshirt = Clothes("T-Shirt", 149.90, 200);

  print("\n");
  print(tshirt.exibirInfo());

  tshirt.decrementClothes(10);
  print(tshirt.exibirInfo());

  tshirt.incrementClothes(5);
  print(tshirt.exibirInfo());

}

class Clothes {

  String type;
  double value;
  int quantity;

  Clothes(this.type, this.value, this.quantity);

  double totalValueInStock() {
    return value * quantity;
  }

 String exibirInfo() {
    return "Type: $type\n"
           "Value: R\$ $value\n"
           "Quantity: $quantity\n"
           "Total value in stock: R\$ ${totalValueInStock()}\n";
  }

  void decrementClothes(int quantity){
    if(quantity > 0 && this.quantity >= quantity){
      this.quantity -= quantity;
      print("Quantity decremented by $quantity. New quantity: ${this.quantity}\n");
    } else {
      print("Invalid quantity. Cannot decrement.\n");
    }

  }

  void incrementClothes(int quantity){
    if(quantity > 0){
      this.quantity += quantity;
      print("Quantity incremented by $quantity. New quantity: ${this.quantity}\n");
    } else {
      print("Invalid quantity. Cannot increment.\n");
    }
  }
}