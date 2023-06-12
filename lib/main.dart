import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Photo Gallery",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PhotoGallery(),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({Key? key}) : super(key: key);
  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Photo Gallery"),
      centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Well Come to My Photo Gallery!",
                style: TextStyle(fontSize: 25,color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                 suffixIcon: Icon(Icons.search_rounded),
                  hintText: "Search a photo......",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                ),
              ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Stack(
                 children: [
                   Container(height: 130,width: 130,child:Image.network("https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmljfGVufDB8fDB8fHww&w=1000&q=80"),
                   ),
                   Positioned(
                     bottom: 10,
                       left:25,
                       child: Container(
                     child: TextButton(onPressed: (){MySnackBar("Hallow All", context);},child: Text("Hallow",style: TextStyle(color: Colors.black,fontSize: 17),),)
                   )),
                 ],
               ),
               Stack(
                 children: [
                   Container(height: 130,width: 130,child:Image.network("https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmljfGVufDB8fDB8fHww&w=1000&q=80"),
                   ),
                   Positioned(
                       bottom: 10,
                       left:25,
                       child: Container(
                           child: TextButton(onPressed: (){MySnackBar("Hallow All", context);},child: Text("Hallow",style: TextStyle(color: Colors.black,fontSize: 17),),)
                       )),
                 ],
               ),
               Stack(
                 children: [
                   Container(height: 130,width: 130,child:Image.network("https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmljfGVufDB8fDB8fHww&w=1000&q=80"),
                   ),
                   Positioned(
                       bottom: 10,
                       left:25,
                       child: Container(
                           child: TextButton(onPressed: (){MySnackBar("Hallow All", context);},child: Text("Hallow",style: TextStyle(color: Colors.black,fontSize: 17),),)
                       )),
                 ],
               ),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(height: 130,width: 130,child:Image.network("https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmljfGVufDB8fDB8fHww&w=1000&q=80"),
                    ),
                    Positioned(
                        bottom: 10,
                        left:25,
                        child: Container(
                            child: TextButton(onPressed: (){MySnackBar("Hallow All", context);},child: Text("Hallow",style: TextStyle(color: Colors.black,fontSize: 17),),)
                        )),
                  ],
                ),
                Stack(
                  children: [
                    Container(height: 130,width: 130,child:Image.network("https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmljfGVufDB8fDB8fHww&w=1000&q=80"),
                    ),
                    Positioned(
                        bottom: 10,
                        left:25,
                        child: Container(
                            child: TextButton(onPressed: (){MySnackBar("Hallow All", context);},child: Text("Hallow",style: TextStyle(color: Colors.black,fontSize: 17),),)
                        )),
                  ],
                ),
                Stack(
                  children: [
                    Container(height: 130,width: 130,child:Image.network("https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2NlbmljfGVufDB8fDB8fHww&w=1000&q=80"),
                    ),
                    Positioned(
                        bottom: 10,
                        left:25,
                        child: Container(
                            child: TextButton(onPressed: (){MySnackBar("Hallow All", context);},child: Text("Hallow",style: TextStyle(color: Colors.black,fontSize: 17),),)
                        )),
                  ],
                ),
              ],
            ),

            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo,size: 50,),
                  title: Text("Photo 1"),
                  subtitle: Text("very nice photo"),
                ),
                ListTile(
                  leading: Icon(Icons.photo,size: 50,),
                  title: Text("Photo 2"),
                  subtitle: Text("very nice photo"),
                ),
                ListTile(
                  leading: Icon(Icons.photo,size: 50,),
                  title: Text("Photo 3"),
                  subtitle: Text("very nice photo"),
                ),
              ],
            ),

          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(onPressed: (){MySnackBar("Photo Uplode Successful", context);},child: Icon(Icons.file_upload_rounded),),
    );

  }
}