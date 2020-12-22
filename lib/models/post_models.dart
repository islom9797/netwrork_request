class Post{
  int id;
  String number,name;
  String status;
  Map data;

  Post({this.id,this.status,this.data});
  Post.from({this.id,this.number,this.name});
  Post.fromJson(Map<String,dynamic> json):
      id=json['id'],
      status=json['status'],
      data=json['data'];
  Map<String,dynamic> toJson(){
    return {
      'id':this.id,
      'status':this.status,
      'data':this.data,
    };
  }
}