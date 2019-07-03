import 'package:flutter/material.dart';
import 'asset.dart';
class SerachBarDemo extends StatefulWidget{
  _SearchBarDemoState createState()=>_SearchBarDemoState();
}
class _SearchBarDemoState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('searchdemo'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){
            showSearch(context: context,delegate: searchBarDelegate());
          },
        )
      ],),
      // body
    );
  }
}

class searchBarDelegate extends SearchDelegate<String>{

  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=>query='',
      )
    ];
  } 
  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: AnimatedIcon(
        icon:AnimatedIcons.menu_arrow,progress: transitionAnimation,
      ),
      onPressed: ()=>close(context,null)
    );
  }
  @override
  Widget buildResults(BuildContext context){
    return Container(
      width:100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context){
    final suggestList = query.isEmpty ? recentSug:searchList.where((input)=>input.startsWith(query)).toList(); 
    return ListView.builder(
      itemCount: suggestList.length,
      itemBuilder: (context,index)=> ListTile(
        title:  RichText(
          text: TextSpan(
            text:suggestList[index].substring(0,query.length),
            style:TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.black
            ),
            children: [
              TextSpan(
                text: suggestList[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}