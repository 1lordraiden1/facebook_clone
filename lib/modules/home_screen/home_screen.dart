
import 'package:facebook_clone/components/screen_components/screen_component.dart';
import 'package:facebook_clone/models/post_model.dart';
import 'package:flutter/material.dart';

bool isLike = false;

List<PostModel> posts = [ PostModel(userN: "Spiderman", userI: "https://i.pinimg.com/236x/a4/29/e6/a429e62cf5e9dac82e37ddec94d20017.jpg", date: "12:08 AM" , text: "This is the darken one", img: "https://i.pinimg.com/564x/e2/17/53/e2175374a7dab9ab77480806f9bca376.jpg"),
  PostModel(userN: "Teemo", userI: "https://i.pinimg.com/564x/a5/38/75/a53875cb99670c9d08bbcd2e7b1e7961.jpg", date: "12:30 AM" , text: "I'm so toxic", img: "https://i.pinimg.com/236x/fd/30/8d/fd308d7bacc26a8e41c8da94da180cbe.jpg"),
  PostModel(userN: "Yasuo", userI: "https://i.pinimg.com/564x/48/24/03/48240348015efb45e8037ca7b457a175.jpg", date: "12:48 AM" , text: "HASAGIIIII!!", img: "https://i.pinimg.com/564x/ec/a5/08/eca5086c9bf6028baad550c5e8cc7b60.jpg"),
  PostModel(userN: "Yone", userI: "https://i.pinimg.com/236x/63/c0/4f/63c04f9c7d7bf9befee03e142de49574.jpg", date: "2:00 AM" , text: "Brother The God must listen to reason ,you must!", img: "https://i.pinimg.com/564x/c1/cc/8a/c1cc8a40e19be5c7da4b2b9aeeda0b4e.jpg"),
];


class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

@override


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: outIcon,
          title: InkWell(
            onTap: (){
              setState(() {

              });
            },
            child: const Text("Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.search,color: Colors.black,)
                )
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.chat,color: inIcon,)
                )
            ),
            const SizedBox(
              width: 5,
            )
          ],
          bottom: TabBar(
            labelPadding: const EdgeInsets.all(10),
            labelColor: splIcon,
            unselectedLabelColor: inIcon,

            tabs: const [
              Icon(
                Icons.home,

              ),
              Icon(
                Icons.video_collection_outlined,
              ),
              Icon(
                Icons.group,
              ),
              Icon(
                Icons.notifications,
              ),
              Icon(
                Icons.menu,

              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    padding: EdgeInsets.all(10),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        separatorBuilder: (context,index)=>SizedBox(width: 5,),
                        itemBuilder: storyBuilder,
                    ),
                  ),
                  Container(height: 10,color: outIcon,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.network("https://i.pinimg.com/236x/a4/29/e6/a429e62cf5e9dac82e37ddec94d20017.jpg",
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text("Add a post")),
                          ),
                        ),
                        SizedBox(width: 10,),
                        CircleAvatar( backgroundColor: Colors.grey.withOpacity(0.3),child: IconButton(onPressed: (){}, icon: Icon(Icons.image,color: inIcon,size: 20,)))
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: posts.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=>Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: ClipOval(
                                child: Image.network("${posts[index].userI}",
                                  width: 45,
                                  height: 45,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text("${posts[index].userN}",style: TextStyle(color: inIcon),),
                              subtitle: Row(
                                children: [
                                  Text("${posts[index].date}"),
                                  Icon(Icons.group),
                                ],
                              ),
                              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
                              //onTap: ,

                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:11.0),
                              child: Text("${posts[index].text}"),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Image.network("${posts[index].img}",width: double.infinity,fit: BoxFit.cover,),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: InkWell(
                                onTap : (){
                                  setState(() {
                                    isLike = !isLike;

                                  });
                                },
                                child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: isLike ? Icon(Icons.favorite,color:Colors.blue) : Icon(Icons.favorite_outline_outlined,color: Colors.grey), ),
                              )),
                              SizedBox(width: 5,),
                              Expanded(child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.mode_comment_outlined,color: notPressed,))),
                              SizedBox(width: 5,),
                              Expanded(child: Container(height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.share,color: notPressed,))),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),
            Text("data"),
            Text("data"),
            Text("data"),
            Column(
              children: [
                ListTile(
                  leading: ClipOval(
                    child: Image.network("${posts[0].userI}",
                      fit: BoxFit.cover,
                      height: 45,
                      width: 45,
                    ),
                  ),
                  title: Text("${posts[0].userN}"),
                  subtitle: Text("See more"),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      Icon(Icons.dark_mode,),
                      Text("Dark Mode",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
Widget storyBuilder (BuildContext context,int index)=>Stack(
  children: [
    Container(
      padding: EdgeInsets.all(4),
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/236x/7c/49/a0/7c49a0766f9c0c320d144afd38bbaa75.jpg",
            ),
            fit: BoxFit.cover,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: splIcon,
            radius: 22,
            child: ClipOval(

              child: Image.network("https://i.pinimg.com/236x/a4/29/e6/a429e62cf5e9dac82e37ddec94d20017.jpg",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Spiderman",maxLines: 2,style: TextStyle(color: outIcon),
          overflow: TextOverflow.ellipsis,),
        ],
      ),


    ),
  ],
);

//https://i.pinimg.com/236x/a4/29/e6/a429e62cf5e9dac82e37ddec94d20017.jpg
/*
Widget cardBuilder (BuildContext context,int index)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: ClipOval(
            child: Image.network("${posts[index].userI}",
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            ),
          ),
          title: Text("${posts[index].userN}",style: TextStyle(color: inIcon),),
          subtitle: Row(
            children: [
              Text("${posts[index].date}"),
              Icon(Icons.group),
            ],
          ),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
          //onTap: ,

        ),
        Padding(
          padding: const EdgeInsets.only(left:11.0),
          child: Text("${posts[index].text}"),
        ),
      ],
    ),
    SizedBox(height: 10,),
    Image.network("${posts[index].img}",width: double.infinity,fit: BoxFit.cover,),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.favorite_outline_outlined,color: pressed,))),
          SizedBox(width: 5,),
          Expanded(child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.mode_comment_outlined,color: notPressed,))),
          SizedBox(width: 5,),
          Expanded(child: Container(height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.share,color: notPressed,))),
        ],
      ),
    ),
  ],
);

* */