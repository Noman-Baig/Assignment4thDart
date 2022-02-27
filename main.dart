import 'dart:io';

void main() {
  print("\nTask 1\n");
  List items = ["Mango", "Leechy", "PineApple", "Grapes"];
  print("List of String Items : ${items}");
  print("\nTask 2\n");
  List bothItems = [
    1,
    2,
    3,
    "Four",
    "Five",
    "Six",
    true,
    false,
    2.45,
  ];
  print("List of All type of Data : ${bothItems}");

  print("\nTask 3\n");

  List edu = ["SSC", "HSC", "BCS", "BS", "BCOM", "MS", "M. Phil", "PhD"];
  print(edu[0]);
  print(edu[1]);
  print(edu[2]);
  print(edu[3]);
  print(edu[4]);
  print(edu[5]);
  print(edu[6]);
  print(edu[7]);

  print("\nTask 4\n");

  List stu = ["noman", "mazz", "ahtisham"];
  print("Enrolled Students : ${stu}");
  print("Total Marks is : 500");
  stdout.write("Enter Student Name : ");
  String stuName = stdin.readLineSync()!.toLowerCase();
  if (stuName == "noman" || stuName == "mazz" || stuName == "Ahtisham") {
    stdout.write(
        "Welcome ${stuName.toUpperCase()} Please Tell Me Your Obtained Marks ");
    int marks = int.parse(stdin.readLineSync()!);
    num total = marks / 500;
    num percent = total * 100;
    print("${stuName.toUpperCase()} Your Percentage is : ${percent}");
  } else {
    print("Sorry This Student is Not Enrolled");
  }

  print("\nTask 5 Ascending \n");
  List score = [20, 12, 33, 25];
  print(score);
  score.sort();
  print("\nTask 6 Descending \n");
  print("Sorted Ascending : ${score}");
  print("\nTask 6 Descending \n");
  print("Sorted Descending : ${score.reversed.toList()}");

  print("\nTask 7  \n");

  List pLang = ["dart", "JavaScript", "Java", "python", "C#", "C++"];
  print(pLang.length);

  stdout.write("Enter 2 or Any Start Index  ");
  int start = int.parse(stdin.readLineSync()!);
  if (start > pLang.length) {
    print("Your Start Limit is ${pLang.length}");
  } else {
    stdout.write("Prefered ${start + 1} to Enter ");
    int end = int.parse(stdin.readLineSync()!);
    stdout.write("What You Want To Change ? ");
    String chng = stdin.readLineSync()!;

    pLang.replaceRange(start, end, [chng]);
    print(pLang);
  }

  print("\nTask 8  \n");

  List color = ["Blue", "Margenda", "Purple", "Green", "white"];
// color.elements();
  print(color);
  stdout.write("Enter 1 For Add in Start & 2 For in End");
  int ask = int.parse(stdin.readLineSync()!);
  if (ask == 1) {
    stdout.write("What You Wnat to Add in Start ? ");
    String addcolor = stdin.readLineSync()!;
    color.insert(0, addcolor);
    print(color);
  } else if (ask == 2) {
    stdout.write("What You Want to Add in End ? ");
    String addcolor = stdin.readLineSync()!;
    color.add(addcolor);
    print(color);
  } else {
    print("Choose Just 1 And 2");
  }

  print("\nTask 8 Again But Two or more Values add in Begining \n");

  List color1 = ["Blue", "Margenda", "Purple", "Green", "white"];

  print(color1);

  stdout
      .write("Add Tow Or More Colors in Start Give Space After Every Color ? ");
  String addcolor1 = stdin.readLineSync()!;
  var b = addcolor1.split(" ");
  print(b);
  color1.insert(0, b);
  print(color1);
  print("\nDelete First color From List\n");
  print(color1);
  stdout.write("press 1 to delete First color ");
  int del = int.parse(stdin.readLineSync()!);
  if (del == 1) {
    color1.removeAt((0));
    print(color1);
  } else {
    print("Please print 1 to delete First Color");
  }
}
