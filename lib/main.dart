import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeal',
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                title: TextStyle(
                    fontSize: 18,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold))),
        // home: CategoriesScreen(),
        initialRoute: '/categories-screen',
        routes: {
          '/': (ctx) => CategoriesScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        });
  }
}
        // onGenerateRoute: (settings) {
        //   print(settings.arguments);
        //   if (settings.name == '/meal-detail') {
        //     return ... ;
        //   }else if(settings.name == '/something-else'){
        //     return ...;
        //   }
        //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        // },
        // onUnknownRoute: (settings) {
        //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        // });
    //{
    //   '/categories-screen': (_) => CategoriesScreen(),
    //   '/categories-meals': (ctx) => CategoryMealsScreen(),
    //   // CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
    //   RoutePaths.CategoriesMeal: (ctx) => CategoryMealsScreen(),
    // });
  
