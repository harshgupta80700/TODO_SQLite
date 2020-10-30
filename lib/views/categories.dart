import 'package:flutter/material.dart';
import 'package:todo_sqlite/models/categories.dart';
import 'package:todo_sqlite/services/category_service.dart';
import 'package:todo_sqlite/shared/appbar.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  TextEditingController _categoryTextEditingController = TextEditingController();
  TextEditingController _descriptionTextEditingController = TextEditingController();

  CategoriesModel categories = CategoriesModel();
  CategoryService categoryService = CategoryService();

  _showCategoriesForm(BuildContext context){
    return showDialog(
        context: context,
      barrierDismissible: false,
      builder: (_){
          return AlertDialog(
            title: Center(child: Text("Categories Form")),
            actions: [

              FlatButton(onPressed: (){Navigator.pop(context);}, child: Text("CANCEL"),color: Colors.red,),
              FlatButton(onPressed: (){
                categories.name = _categoryTextEditingController.text;
                categories.desc = _descriptionTextEditingController.text;
                categoryService.saveCategories(categories);
              }, child: Text("SUBMIT"),color: Colors.blue)
            ],
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _categoryTextEditingController,
                  decoration: InputDecoration(
                    hintText: "Category"
                  ),
                ),
                TextFormField(
                  controller: _descriptionTextEditingController,
                  decoration: InputDecoration(
                      hintText: "Description"
                  ),
                )
              ],
            ),

          );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: (){_showCategoriesForm(context);},
      ),
    );
  }
}
