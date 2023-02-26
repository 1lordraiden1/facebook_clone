import 'package:facebook_clone/components/screen_components/screen_component.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: outIcon,
          title: const Text("Facebook",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
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
                        itemBuilder: storyBuilder
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
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: cardBuilder,
                    itemCount: 10,

                  ),
                ],
              ),
            ),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
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
                "https://i.pinimg.com/236x/7c/49/a0/7c49a0766f9c0c320d144afd38bbaa75.jpg"
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

Widget cardBuilder (BuildContext context,int index)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: ClipOval(
              child: Image.network("https://i.pinimg.com/236x/a4/29/e6/a429e62cf5e9dac82e37ddec94d20017.jpg",
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
            title: Text("Spiderman",style: TextStyle(color: inIcon),),
            subtitle: Row(
              children: [
                Text("Just now"),
                Icon(Icons.group),
              ],
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
            //onTap: ,

          ),
          Text("This is Darken one ;}"),
        ],
      ),
    ),
    SizedBox(height: 10,),
    Image.network("https://i.pinimg.com/564x/e2/17/53/e2175374a7dab9ab77480806f9bca376.jpg",width: double.infinity,fit: BoxFit.cover,)
  ],
);
//https://i.pinimg.com/236x/a4/29/e6/a429e62cf5e9dac82e37ddec94d20017.jpg