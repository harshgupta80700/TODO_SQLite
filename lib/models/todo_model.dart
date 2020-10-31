class TodoModel{
  String name;
  String desc;
  int id;

  TodoModel({
    this.desc,
    this.name,
    this.id
  });

  TodoModel.fromMap(Map<String,dynamic> todo){
    id = todo['id'];
    name = todo['name'];
    desc = todo['desc'];
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map = {
      'name':this.name,
      'desc':this.desc
    };
    return map;
  }

}