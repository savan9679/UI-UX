import 'package:demo/src/scoped-model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'screens/main_screen.dart';
class App extends StatelessWidget{

 final FoodModel foodModel = FoodModel();

  Widget build(BuildContext context){
    return ScopedModel<FoodModel>(
      model: foodModel,
      child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "food delivery app",
      theme: ThemeData(
        primaryColor: Colors.blueAccent
        ),
        home: MainScreen(foodModel:foodModel),
        ),
    );
  }
}