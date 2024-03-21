import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotitifier extends StateNotifier<List<Meal>>{
  FavoriteMealsNotitifier():super([]);
  
  bool toggleMealFavoriteStatus(Meal meal){
    final mealIsFavorite = state.contains(meal);
    if(mealIsFavorite){
      state = state.where((element) => element.id != meal.id).toList();
      return false;
    }
    else{
      state=[...state,meal];
      return true;
    }
  }
  
  }

  final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotitifier,List<Meal>>((ref) => FavoriteMealsNotitifier());