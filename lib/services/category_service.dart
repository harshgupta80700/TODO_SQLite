import 'package:todo_sqlite/models/categories.dart';
import 'package:todo_sqlite/repositories/repositories.dart';

class CategoryService{

  Repositories _repositories;

  CategoryService(){
    _repositories = Repositories();
  }

  saveCategories(CategoriesModel categories) async{
    return await _repositories.insertData('categories',categories.categoryMap());
  }

}