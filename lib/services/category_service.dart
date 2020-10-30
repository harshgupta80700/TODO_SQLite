import 'package:todo_sqlite/models/categories.dart';

class CategoryService{

  saveCategories(CategoriesModel categories){
    print(categories.name);
    print(categories.desc);
  }

}