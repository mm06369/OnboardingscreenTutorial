

import 'package:flutter/material.dart';
import 'package:todo_app/config/asset_config.dart';
import 'package:todo_app/constants.dart';

import '../../routes/route_name.dart';

class InstructionPage extends StatefulWidget{
  const InstructionPage({super.key});

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
    
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List content = [
    {
      "image": AssetConfig.clockImage, 
      "title": "Organize Your Tasks", 
      "description": "Keep your tasks organized by category, priority, or due date."
    },
    {
      "image": AssetConfig.collaborate, 
      "title": "Collaborate With Others", 
      "description": "Invite friends or colleagues to collaborate on tasks and projects. Make yourself Productive."
    },
    {
    "image": AssetConfig.congratulate, 
    "title": "Congratulations!", 
    "description": "You're ready to start using PlanIt to manage your tasks and stay organized."
    }
  ];

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: const Color(0xFF3A87F3),
    body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index) {
                // debugPrint(index.toString());
                setState(() {
                  currentIndex = index;
                });
              },
              controller: _controller,
              itemCount: 3,
              itemBuilder: (_, i) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        BgShape(index: currentIndex,),
                        Container(
                          padding: const EdgeInsets.only(top: 50),
                          alignment: Alignment.center,
                          child: Image.asset(content[i]['image'],
                          width: getDeviceWidth(context) * 0.70,
                          height: getDeviceHeight(context) * 0.50,
                          ),
                        ),
                      ],
                    ),
                    // sizeBox10R(context),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(content[i]["title"],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Patua One',
                        fontSize:  getDeviceWidth(context) < 300 ? 20 : 30
                      ),
                      ),  
                    ),
                    sizeBox10R(context),
                    Padding(
                      padding: const EdgeInsets.only(left:25),
                      child: Text(content[i]["description"],
                      maxLines: 3,
                      style: TextStyle(
                        fontFamily: 'Pridi',
                        fontSize: getDeviceWidth(context) < 310 ? 18 : 20,
                        color: Colors.white
                      ) 
                      ,),
                    ),
                  ]
                ),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(content.length, (index) => buildDot(context, index)),
                    ),
                  ),
          sizeBox50R(context),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){

                  if (currentIndex < content.length - 1){
                    _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                  } 
                  else if (currentIndex == content.length - 1){
                      Navigator.pushNamed(context, login);
                    }
                   
                }, child: Text(currentIndex == content.length - 1 ? "Let's go" : "Next",
                textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Patua One',
                    fontSize: 24, 
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                  ),
                )),
                Align(
                  widthFactor: 0.5,
                  child: IconButton(onPressed: (){
                    if (currentIndex < content.length - 1){
                       _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                    else if (currentIndex == content.length - 1){
                      Navigator.pushNamed(context, login);
                    }
                   
                  }, icon: const Icon(Icons.double_arrow, color: Colors.white, size: 24,weight: 50,)))
              ],
            ),
          ),
          sizeBox30R(context)
        ],
      ),
  );
}

Container buildDot(BuildContext context, int index){
  return Container(
    height: 10,
    width: 10,
    margin: const EdgeInsets.only(right: 10),
     decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ?  Colors.black :  Colors.white,
        border: Border.all(
          color: currentIndex == index ? Colors.white : Colors.white,
          width: 2
        )
      ),

  );
}
}

class BgShape extends StatelessWidget {
  const BgShape({super.key, required this.index});

  final int index;

  List<Color> getColor (int index){
    
    List<Color> lst = [];
    
    if (index == 0){
      lst.add(const Color(0xFF226F60));
      lst.add(const Color(0xFF0B5F4F));
    }

    else if (index == 1){
      lst.add(const Color(0xFFD32175));
      lst.add(const Color(0xFFBC0F60));
    }

    else if (index == 2){
      lst.add(const Color(0xFF433BC2));
      lst.add(const Color(0xFF3832A9));
    }

    return lst;
  }

  @override
  Widget build(BuildContext context) {
    List <Color> color = getColor(index);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 350,
          width: getDeviceWidth(context) * 0.5,
          color: color[0],
        ),
         Container(
          height: 350,
          width: getDeviceWidth(context) * 0.5,
          color: color[1],
        ),
      ],
    );
  }
}
