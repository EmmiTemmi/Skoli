import 'dart:io';

void main() {
  print("Welcome to our burger joint");

  print("Menu:");
  print("1. Classic burger - 5000kr");
  print("2. Cheeseburger - 6000kr");
  print("3. Vegan burger - 4500kr");
  print("4. Bacon burger - 7000kr");

  List<String> order = [];
  int total = 0;

  while (true) {
    print("Choose an item to add og type exit to finish");
    String? choice = stdin.readLineSync();

    if (choice == 'exit') {
      break;
    }

    if (choice == '1' || choice == 'Classic burger') {
      order.add("Classic burger");
      total += 5000;
      print("Added Classic burger to your order. Total: $total kr");
    }
    else if (choice == '2' || choice == 'Cheeseburger') {
      order.add("Cheeseburger");
      total += 6000;
      print("Added Cheeseburger to your order. Total: $total kr");
    }
    else if (choice == '3' || choice == 'Vegan burger') {
      order.add("Vegan burger");
      total += 4500;
      print("Added Vegan burger to your order. Total: $total kr");
    }
    else if (choice == '4' || choice == 'Bacon burger') {
      order.add("Bacon burger");
      total += 7000;
      print("Added Bacon burger to your order. Total: $total kr");
    }
    else {
      print("Invalid input");
    }
  }
  print("Your order");
  for (var item in order) {
    print("-$item");
  }
  print("Total:$total kr");

  while (true) {
    print("Choose an item to remove og type exit to finish");
    String? choice = stdin.readLineSync();

    if (choice == 'exit') {
      break;
    }
    if (choice == '1' || choice == 'Classic burger') {
      order.remove("Classic burger");
      total -= 5000;
      print("Removed Classic burger to your order. Total: $total kr");
    }
    else if (choice == '2' || choice == 'Cheeseburger') {
      order.remove("Cheeseburger");
      total -= 6000;
      print("Removed Cheeseburger to your order. Total: $total kr");
    }
    else if (choice == '3' || choice == 'Vegan burger') {
      order.remove("Vegan burger");
      total -= 4500;
      print("Removed Vegan burger to your order. Total: $total kr");
    }
    else if (choice == '4' || choice == 'Bacon burger') {
      order.remove("Bacon burger");
      total -= 7000;
      print("Removed Bacon burger to your order. Total: $total kr");
    }
    else {
      print("Invalid input");
    }
  }
  print("Your order");
  for (var item in order) {
    print("-$item");
  }
  print("Total:$total kr");
}
