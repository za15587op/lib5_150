import 'package:flutter/material.dart';
import 'package:lib5_150/food.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}


class _FirstpageState extends State<Firstpage> {
  List<Food> foods = [];
  String foodValue = "";
  @override
  void initState(){
    super.initState();
    foods = Food.getFood();
    // print(foods);
    print(foods.map((e) => e.thaifood).toList());
  }

  List<Widget> createRedioFood(){

    List<Widget> myFoods = [];

    for (var fd in foods) {
      myFoods.add(
        RadioListTile(
          title: Text(fd.enfood),
          subtitle: Text(fd.thaifood),
          secondary: Text("${fd.price} บาท"),
          value: fd.value,
         groupValue: foodValue,
          onChanged: (value) {
            setState(() {
              foodValue = value!;
              print(fd.thaifood);
            });
          })
      );
    }

    return myFoods;    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food 150'),
      ),
      body: Column(
        children: createRedioFood(),
      ),
    );
  }
}