// ignore_for_file: use_key_in_widget_constructors, avoid_print, unused_local_variable, unnecessary_new, prefer_collection_literals, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

void main() {
  //Dart101

  //Title: Variables
  String text = "Hello World"; // String is used for textual variables
  int number = 10; // int is used for variables that are integers
  double rate = 10.0; // double is used for variables that are decimal numbers.
  bool condition = true; // Used for variables that are yes or no (0 or 1).

  var variable =
      "variable"; // It is a variable type where we can assign different variable types and then change the value of the variable.
  const constant =
      "constant"; // When const is used to define a variable, the value of that variable is assigned once and cannot be changed later.

  print(text);

  //Title: Basic Widget
  runApp(MaterialApp(home: Part4() 
      // Part3()                                          // The third part
      // Part2() // we call the widget we wrote           // The second part
      // Scaffold(                                        // The first part
      //     appBar: AppBar(
      //       title: const Text("The First App"),
      //     ),
      //     body: Center(
      //       //child: Text("Content"),
      //     ),
      //   );
      ));
  // MaterialApp --> Scaffold --> AppBar / Body --> TEXT (Each of these is a widget);

  //Title: Condition Blocks
  /* We carry out our operations with condition blocks according to conditional expressions. 
  Example: Condition blocks are used to check whether a user is logged in to the system. */
  bool isLogin = false;

  if (isLogin == true) {
    print("Login has been made.");
  } else {
    print("No login has been made.");
  }

  /*Different structures can be used in different situations. 
  Example: A requirement block that determines a student's letter grade based on their course grades.*/

  const int point = 70;
  if (point < 50) {
    print("Bad :(");
  } else if (point > 80) {
    print("Great !!!");
  } else {
    print("Good :)");
  }

  // OR You can use SWITCH.
  const String note = "A";
  switch (note) {
    // The field in parentheses is a conditional expression
    case "A": // The case part is the part you want to match with the case.
      print("Great !!!");
      break; // break indicates that the code block is finished and we need to exit the block.
    case "B":
      print("Good :)");
      break;
    default: //Default is the code block that works if it does not match any of the cases above.
      print("Bad :(");
  }

  //Title: Lists
  /*List() expression cannot be used. 
  Instead, we first fill it with space and then assign it. 
  We can create lists in different ways.*/
  var products = new List.filled(5, "");
  products[0] = "PC";
  products[1] = "Mouse";
  products[2] = "Keyboard";
  products[3] = "Monitor";
  products[4] = "Mic";

  print(products);
  print(products[1]);

  //Growable List
  /**Unlike the list above, additions can be made to this list later. */
  var cities = ["London", "Paris", "Berlin", "NYC"];
  print(cities);
  cities.add("Brussels"); //function to assign variables to list
  print(cities);

  /** The 'cities.where' section acts as a loop within the list.
    The 'element.contains' section within the loop checks 
    whether the elements of the list contain the letter "a".
    If the element contains the letter "a", it is thrown into the result variable. 
    The Result variable returns to us as a list.*/
  var result = cities.where((element) => element.contains("a"));
  print(result);

  /* !!! There are many more functions different from the functions we use. */
  var firstElement =
      cities.first; //Function to find the first element in the list
  print(firstElement);

  //Title: Loops
  /*var i = 0 is your starting value.
  i < 10 is your condition block. 
  You specify the situations in which you want it to work in this section.  
  i++ is the amount of increase in the value of i. 
  Here i++ and i=i+1 have the same meaning.*/
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  //An example that writes all the elements in an array using the cities array found above.
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }

  // OR for in loop
  for (var city in cities) {
    print(city);
  }

  // OR while loop
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }

  // OR do while loop
  int k = 0;
  do {
    print(k);
    k++;
  } while (k < 10);
  /** The difference between the do while loop and 
   other loops is that it first runs the loop once and then checks the condition block.
   In other loops, they first go through the condition block. */

  //Title: Map
  var dictionaryTurkish = new Map();
  dictionaryTurkish["Kitap"] = "Book";
  dictionaryTurkish["Küçük"] = "Little";

  var dictionaryEnglish = {"Book": "Kitap", "Little": "Küçük"};

  dictionaryEnglish["Big"] = "Büyük";

  dictionaryEnglish.remove("Book");
  /*It deletes the element according to the key you provide. 
    If there is no element according to the given key, it does not return an error.*/

  print(dictionaryTurkish);
  print(dictionaryEnglish);

  for (var key in dictionaryEnglish.keys) {
    print("Key Name: " + key);
    print("Value Name: " + dictionaryEnglish[key]!);
  }

  for (var value in dictionaryEnglish.values) {
    print("Value Name: " + value);
  }

  var mapResult = dictionaryEnglish.containsKey("Book");
  print(mapResult);

  dictionaryEnglish.forEach((key, value) {
    print(key + " : " + value);
  });

  // Title: Functions
  /* Functions are blocks of code that perform a specific task,
  are self-contained, reusable, and can usually be called by a specific name.
  Functions help you make your code more modular, 
  breaking complex tasks into smaller pieces and making those pieces more manageable. */
  sayHi();
  sayHiWithName("John");

  /** In this example, a function named calculatedSum is defined.
   * This function takes two parameters num1 and num2, 
   * adds them together, and returns the result. */
  var sum = calculateSum(2, 2);
  print(sum);

  /** In this example we are sending a single parameter and no other parameters are defined. 
   * Here other parameters are defined as null.*/
  testFunc(1);

  /** In this example, parameters are given by specifying their names. */
  testFunc2(num1: 1, num2: 2, num3: 3);
} //main()

void sayHi() {
  print("Hello My Friends.");
}

void sayHiWithName(String name) {
  print("Hello " + name);
}

int calculateSum(int num1, int num2) {
  int result = num1 + num2;
  return result;
}

testFunc(int num1, [int? num2, int? num3]) {
  print(num1);
  print(num2);
  print(num3);
}

testFunc2({int? num1, int? num2, int? num3}) {
  print(num1);
  print(num2);
  print(num3);
}

// Example Flutter
//Our Own Widget
class Part2 extends StatelessWidget {
  @override //
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The First App"),
      ),
      body: Center(
        //child: Text("Content"),
        child: ElevatedButton(
          //we use elevatedbutton widget to create a button
          child: const Text(
              "See Result"), //The text we want to write on the button
          onPressed: () {
            var alert = const AlertDialog(
              //We create a notification box for ourselves
              title: Text("Exam Result"),
              content: Text("Good :)"),
            );

            showDialog(
                //This function cannot be used to call or run the notification box we created.
                context: context,
                builder: (BuildContext context) => alert);
          },
        ),
      ),
    );
  }
}

//Title: ListView
class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cities = ["London", "Paris", "Berlin", "NYC"];

    return Scaffold(
        appBar: AppBar(
          title: const Text("The First App"),
        ),
        body: Column(
          // Allowed us to use multiple widgets in the column plane
          children: <Widget>[
            Expanded(
                /* ListView cannot be used directly because there are no necessary size adjustments for the column widget.
                 Therefore, we use the expanded widget to connect the column widget and the listview widget.*/
                child: ListView.builder(
                    // Dynamic ListView
                    itemCount: cities.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(cities[index]);
                    })
                // ListView( // Static ListView
                //   children: const <Widget>[
                //     Text("The First Lesson"),
                //     Text("The Second Lesson"),
                //     Text("The Third Lesson"),
                //   ],
                // ),
                ),
            Center(
              child: ElevatedButton(
                child: const Text("See Result"),
                onPressed: () {
                  var alert = const AlertDialog(
                    title: Text("Exam Result"),
                    content: Text("Good :)"),
                  );

                  showDialog(
                      context: context,
                      builder: (BuildContext context) => alert);
                },
              ),
            ),
          ],
        ));
  }
}

//Title: Functions
//Title: ListView
class Part4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cities = ["London", "Paris", "Berlin", "NYC"];

    return Scaffold(
        appBar: AppBar(
          title: const Text("The First App"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: cities.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(cities[index]);
                    })),
            Center(
              child: ElevatedButton(
                child: const Text("See Result"),
                onPressed: () {
                  String result = calculateLetterGrade(80);
                  openAlert(result, context);
                },
              ),
            ),
          ],
        ));
  }
}

String calculateLetterGrade(double point) {
  String result = "";
  if (point >= 90) {
    result = "AA";
  } else if (point >= 75 && point < 90) {
    result = "BA";
  } else if (point >= 65 && point < 75) {
    result = "BB";
  } else if (point >= 50 && point < 65) {
    result = "CB";
  } else if (point >= 40 && point < 50) {
    result = "CC";
  } else if (point >= 30 && point < 40) {
    result = "DC";
  } else {
    result = "FF";
  }

  return result;
}

void openAlert(String letterGrade, BuildContext context) {
  var alert = AlertDialog(
    title: const Text("Letter Grade"),
    content: Text("Result: $letterGrade"),
  );

  showDialog(context: context, builder: (BuildContext context) => alert);
}
