import 'dart:io';

void main(List<String> args) {
  List<users> ListOfuseruct = adduser();
  displayusers(ListOfuseruct);
}

List<users> adduser() {
  List<users> userList = [];
  print(
      "Enter yes if you want to add new user \n Press any other key if you dont want to add user");
  String input = stdin.readLineSync()!;

  while (input.toLowerCase().trim().compareTo("yes") == 0) {
    var user = users();
    print("Enter User name");
    user.name = stdin.readLineSync()!;
    print("Enter User age");
    user.age = num.parse(stdin.readLineSync()!);
    print("Enter User email");
    //TODO : use valid email checker
    user.email_address = stdin.readLineSync()!;
    //TODO : use valid phone number checker
    print("Enter User Phone number");
    user.phone_number = num.parse(stdin.readLineSync()!);
    userList.add(user);
    print(
        "Enter yes if you want to add new User \n Press any other key if you dont want to add user");
    input = stdin.readLineSync()!;
  }
  return userList;
}

void displayusers(List<users> useructs) {
  useructs.forEach((element) {
    print(
        " User Name :  ${element.name} \n user age : ${element.age} \n user E-mail Address  : ${element.email_address} \n User Phone Number : ${element.phone_number} \n-------------------------------------------------------------");
  });
}

class users {
  String name = "";
  num age = 0;
  String email_address = "";
  num phone_number = 0;
}
