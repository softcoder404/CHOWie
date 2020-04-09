import 'package:chowie/model/available_food_items_model.dart';
import 'package:chowie/provider/data/food_shelf_items_list.dart';
import 'package:chowie/provider/data/items_list.dart';

class FoodItemsProvider {
  static List<FoodItemsModel> foodItems;
  static List<FoodItemsModel> getFoodItems() {
    foodItems = [
      FoodItemsModel(
        title: 'Refrigerator Foods',
        totalItems: '6',
        itemImagePath: 'assets/images/food1.png',
        items: refItemsList,
      ),
      FoodItemsModel(
        title: 'Food Shelf Items',
        totalItems: '3',
        itemImagePath: 'assets/images/food2.png',
        items: shelfItemsList,
      ),
    ];
    return foodItems;
  }
}
