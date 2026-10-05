class Product {
  String _name = "";
  double _value = 0;
  int _quantity = 0;

  Product(String name, double value, int quantity) {
    this._name = name;
    this._value = value;
    this._quantity = quantity;
  }

  set name(String newName){
    if (newName.isEmpty) {
      print("Name cannot be empty");
    } else {
      this._name = newName;
    }
  }

  set value(double newValue){
    if (newValue <= 0) {
      print("Value must be greater than zero");
    } else {
      this._value = newValue;
    }
  }

  set quantity(int newQuantity){
    if (newQuantity < 0) {
      print("Quantity cannot be negative");
    } else {
      this._quantity = newQuantity;
    }
  }

  String get name{
    return _name;
  }

  double get value{
    return _value;
  }

  int get quantity{
    return _quantity;
  }

}