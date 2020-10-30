class CategoriesModel{
  int id;
  String name;
  String desc;

  categoryMap(){
    var map = Map<String,dynamic>();
    map['id'] = id;
    map['name'] = name;
    map['desc'] = desc;

    return map;
  }

}