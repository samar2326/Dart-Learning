import 'dart:io';

void main(List<String> args) {
  List<product> ListOfProduct = addProduct();
  displayProduct(ListOfProduct);
}

List<product> addProduct() {
  List<product> productlist = [];
  print(
      "Enter yes if you want to add product \n Press any other key if you dont want to add product");
  String input = stdin.readLineSync()!;

  while (input.toLowerCase().trim().compareTo("yes") == 0) {
    var prod = product();
    print("Enter Product name");
    prod.product_name = stdin.readLineSync()!;
    print("Enter Product MRP");
    prod.MRP = num.parse(stdin.readLineSync()!);
    print("Enter Product Discount");
    prod.discount = num.parse(stdin.readLineSync()!);
    prod.actual_price = prod.calulate_actual_price(prod.MRP, prod.discount);
    productlist.add(prod);
    print("Enter yes if you want to add product");
    input = stdin.readLineSync()!;
  }
  return productlist;
}

void displayProduct(List<product> products) {
  products.forEach((element) {
    print(
        " Product Name :  ${element.product_name} \n Product MRP : ${element.MRP} \n Product Discount  : ${element.discount} \n Product Price After Discount : ${element.actual_price} \n-------------------------------------------------------------");
  });
}

class product {
  String product_name = "";
  num MRP = 0;
  num discount = 0;
  num actual_price = 0;
  num calulate_actual_price(num MRP, num Discount) =>
      MRP * (100 - discount) / 100;
}
