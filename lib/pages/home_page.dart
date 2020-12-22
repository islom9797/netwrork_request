import 'package:flutter/material.dart';
import 'package:task_api/models/post_models.dart';
import 'package:task_api/service/http_service.dart';
class HomePage extends StatefulWidget {
  static const String id='home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data;
  //get without api
  void _apiPostList(){
    NetW.GET(NetW.API_LIST, NetW.paramsEmpty()).then((response){
      print(response);
      _showResponse(response);
    });
  }
  //get with api
  void _apiPostList1(Post post){
    NetW.GET(NetW.API_LIST1+post.id.toString(),NetW.paramsEmpty()).then((response){
     print(response);
     _showResponse(response);
    });
  }

  void _apiCreateList(Post post){
    NetW.POST(NetW.API_CREATE,NetW.paramsCreate(post)).then((response){
      print(response);
      _showResponse(response);
    });
  }
  void _apiUpdateList(Post post){
    NetW.PUT(NetW.API_UPDATE+post.id.toString(), NetW.paramsUpdate(post)).then((response){
      print(response);
      _showResponse(response);
    });
  }
  void _apiDeleteList(Post post){
    NetW.DEL(NetW.API_DELETE+post.id.toString(), NetW.paramsEmpty()).then((response){
      print(response);
      _showResponse(response);
    });
  }
  void _showResponse(String response){
    setState(() {
      data=response;
    });
  }
  @override
  void initState(){
    super.initState();

    //get
    //_apiPostList();

   // get api
   // var post =new Post(id:1);
   // _apiPostList1(post);

    //post
    // var post=new Post(status: 'Axmadjon',data: {'id':1});
    // _apiCreateList(post);

    //put
    // var post=new Post(id:21);
    // _apiUpdateList(post);

  //  del
    var post=new Post(id:2);
    _apiDeleteList(post);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:Center(
        child:Text(data!=null?data:'No Data',style:TextStyle(color:Colors.white,)),
      ),
    );
  }
}
