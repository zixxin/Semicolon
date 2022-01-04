import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(
                // leading :
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back_rounded),
                    Spacer(flex : 1),
                    // SizedBox(width : 120),
                    Text(//상단 바 이름 설정.
                        '키워드 관리',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        textAlign : TextAlign.center
                    ),
                    Spacer(flex : 1),
                  ],
                )
                // actions : [Icon(Icons.backspace_rounded)] // 위 오른쪽설정.
            ),
            body: Container(
              alignment : Alignment.center,
              child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex : 1,
                    fit : FlexFit.tight,
                    child : Column(
                      children: [
                        Flexible(
                          flex : 1,
                          fit : FlexFit.tight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("내 키워드",
                              style : TextStyle(
                                fontSize :17,
                                fontWeight: FontWeight.bold
                              )),
                              SizedBox(width : 60),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child : RaisedButton(
                                onPressed: () { },
                                child : Text("비우기"),
                                color : Colors.white,
                                
                              ),
                              ),
                            ],
                          )),
                        Flexible(
                          flex : 2,
                          fit : FlexFit.tight,
                          child: Text("추가되는 항목을 여기에 표시.")),
                      ],
                    )
                  ),
                  Flexible(
                    flex : 2,
                    fit : FlexFit.tight,
                    child : Column(
                      children: [
                        Flexible(
                          flex : 1,
                          fit : FlexFit.tight,
                          child: searchBar(),),
                        Flexible(
                          flex : 5,
                          fit : FlexFit.tight,
                          child: _buildList(), 
                          ),
                      ],
                    )
                  ),
                ],
              )
            ),

            bottomNavigationBar: BottomAppBar(
                child : SizedBox(
                  height : 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('전체공지',
                          style: TextStyle(fontSize: 10),),
                          IconButton(
                            icon : Icon(Icons.message),
                            onPressed: () {  },
                            iconSize: 20,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('중요공지',style: TextStyle(fontSize: 10),),
                          IconButton(
                            icon : Icon(Icons.star_border_outlined),
                            onPressed: () {  },
                            iconSize: 20,
                          ),
                        ],
                      ),

                    ],
                  ),
                )
            )
        )
    );
  }
}

class TempBox_yellow extends StatelessWidget {
  const TempBox_yellow ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height : 50,
      width : 500,
      decoration : BoxDecoration(
        color : Colors.yellowAccent,
        border : Border.all()
      )
    );
  }
}

class TempBox_green extends StatelessWidget {
  const TempBox_green ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height : 50,
        width : 500,
        decoration : BoxDecoration(
            color : Colors.greenAccent,
            border : Border.all()
        )
    );
  }
}

class TempBox_red extends StatelessWidget {
  const TempBox_red ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height : 50,
        width : 50,
        decoration : BoxDecoration(
            color : Colors.redAccent,
            border : Border.all()
        )
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child :Container(
        height : 50,
        width : 300,
        decoration : BoxDecoration(
            color : Colors.black12,
        ),
      child :Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width : 1),
          Text("추가하고 싶은 키워드 검색",
          style : TextStyle(
            fontSize: 18,
            color : Colors.black.withOpacity(0.4))
            ),
          Icon(Icons.search),
          SizedBox(width : 1),
        ],
      )
    )
    );
  }
}
  
Widget _buildList(){
  return ListView.separated(
    itemBuilder: (BuildContext _context, int index){
      return Container(
        child : Row(
          children : [
            SizedBox(width:15),
            Text("#",
            style: TextStyle(
              color : Colors.blueGrey,
              fontSize: 20),
            ),
            Text(index.toString(),
            style: TextStyle(
              color : Colors.blueGrey,
              fontSize: 20),
            ),
          ]
        ),
       );
    } ,
    separatorBuilder : (BuildContext _context, int index){
      return Container(height : 1, color: Color(0xff999999));
    },//아이템과아이템.
    itemCount: 25,
    );
}



