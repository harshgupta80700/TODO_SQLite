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
    this.name = todo['name'];
    this.desc = todo['desc'];
    this.id = todo['id'];
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map = {
      'name':this.name,
      'desc':this.desc
    };
    return map;
  }

}