
class FoodItemsModel{
  final title;
  final totalItems;
  final itemImagePath;
  final List<Items> items;
  FoodItemsModel({
    this.title,
    this.totalItems,
    this.itemImagePath,
    this.items
  });
}

class Items{
  final imageUrl;
  final totalItems;
  final itemName;
  Items({this.imageUrl,this.totalItems,this.itemName});
}