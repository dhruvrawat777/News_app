import '../models/CategoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category;
  CategoryModel dummy;
  dummy.categoryName = 'Any';
  dummy.imgUrl =
      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.ytimg.com%2Fvi%2FMPV2METPeJU%2Fmaxresdefault.jpg&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DMPV2METPeJU&tbnid=KypVIfrnXZbYeM&vet=12ahUKEwi-wLjLwPjrAhXHJCsKHUnLA28QMygAegUIARDMAQ..i&docid=PesX8IHCvvYULM&w=1280&h=720&q=dogs&ved=2ahUKEwi-wLjLwPjrAhXHJCsKHUnLA28QMygAegUIARDMAQ';
  category.add(dummy);
  return category;
}
