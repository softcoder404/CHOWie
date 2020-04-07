import 'package:chowie/model/suggested_food_model.dart';

List<String> _procedure = [
  "1. Peel and cut the Yam into medium sized chunks and rinse a couple of times.",
  '2. Put the Yams insides a Pot, add Water just to the level of the Yams and let it cook for 15 minutes on a medium to high heat.',
  '3. Add the starter Sauce (you can check the recipe for the sauce in my video- Link above), Palm Oil, Onions, Cray Fish, Salt and Stock Cubes and allow it to cook for an additional 15 Minutes on a low Heat.',
  '4. Add the Crab meat (You can use whatever addition you prefer at this point like Smoked Fish, Prawns, Smoked Turkey etc ) Mash the Yams with a Potato masher or a wooden spoon (You can mash everything into a creamy paste, and you can mash most of the Yams and still leave some chunks behind). Allow it to simmer for an additional 5 minutes and enjoy while still hot!n qui in.',
  ];


List<SuggestedFoodModel> suggestedFoodList = [
  SuggestedFoodModel(
    name: 'YAM PORRIDGE',
    imageUrl: 'assets/images/sfood1.png',
    procedure: _procedure,
  ),
  SuggestedFoodModel(
    name: 'RICE AND BEANS',
    imageUrl: 'assets/images/sfood2.png',
    procedure: _procedure,
  ),
  SuggestedFoodModel(
    name: 'RICE & FISH STEW',
    imageUrl: 'assets/images/sfood3.png',
    procedure: _procedure,
  ),
];
