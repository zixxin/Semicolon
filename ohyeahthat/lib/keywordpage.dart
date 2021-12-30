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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TempBox_red(),
                              TempBox_red(),
                            ],
                          )),
                        Flexible(
                          flex : 2,
                          fit : FlexFit.tight,
                          child: TempBox_green(),),
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
                          flex : 4,
                          fit : FlexFit.tight,
                          child: TempBox_yellow(),),
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
                          Icon(Icons.message),
                          Text('전체공지'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.star_border_outlined),
                          Text('중요공지'),
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
    return Container(
        height : 50,
        width : 500,
        decoration : BoxDecoration(
            color : Colors.black12,
            border : Border.all()
        ),
      child :Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("추가하고 싶은 키워드 검색"),
          Icon(Icons.youtube_searched_for)
        ],
      )
    );
  }
}




