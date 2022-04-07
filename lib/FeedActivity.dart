import 'package:flutter/material.dart';
import 'package:demofutter/data/courseModel.dart';

class FeedActivity extends StatefulWidget {
  @override
  _FeedScreen createState() => _FeedScreen();
}
class _FeedScreen extends State<FeedActivity> {
  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 120,
          width: width,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, Color(0xfff97d6d))),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(width * .5, Colors.blue)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[

                          // Align(
                          //     alignment: Alignment.center,
                          //     child: Text(
                          //       "Recomended",
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 30,
                          //           fontWeight: FontWeight.w500),
                          //     ))
                        ],
                      ))),
            ],
          )),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  Widget _categoryRow(BuildContext context, String title) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20),
      height: 68,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              style: TextStyle(
                  color: Color(0xff494c79),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 20),
                  _chip("Công nghệ", Color(0xfffbbd5c), height: 5),
                  SizedBox(width: 10),
                  _chip("Tin mới",  Color(0xff73d4dd), height: 5),
                  SizedBox(width: 10),
                  _chip("Khuyến mãi", Colors.orange, height: 5),
                  SizedBox(width: 10),
                  _chip("Mẹo hay", Color(0xff203387), height: 5),
                ],
              )),
          SizedBox(height: 10)
        ],
      ),
    );
  }

  Widget _courseList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _courceInfo(context, CourseList.list[0],
                _decorationContainerA(),
                background: Colors.lightBlueAccent),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            _courceInfo(context, CourseList.list[1], _decorationContainerB(),
                background: Colors.lightBlueAccent),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            _courceInfo(context, CourseList.list[2], _decorationContainerC(),
                background: Colors.lightBlueAccent),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            _courceInfo(context, CourseList.list[3], _decorationContainerA(),
                background: Colors.lightBlueAccent),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            _courceInfo(context, CourseList.list[4], _decorationContainerB(),
                background: Colors.lightBlueAccent),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            _courceInfo(context, CourseList.list[5], _decorationContainerC(),
                background: Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context,
      {Color primaryColor = Colors.redAccent, required Widget backWidget}) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width * .34,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 5), blurRadius: 10, color: Color(0x12000000))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: backWidget,
      ),
    );
  }

  Widget _courceInfo(BuildContext context, CourseModel model, Widget decoration,
      {required Color background}) {
    return Container(
        height: 170,
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: .7,
              child: _card(context,
                  primaryColor: background, backWidget: decoration),
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Text(model.name,
                                style: TextStyle(
                                    color:  Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: background,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(model.noOfCource,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              )),
                          SizedBox(width: 10)
                        ],
                      ),
                    ),
                    Text(model.university,
                        style: TextStyle (
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                    SizedBox(height: 15),
                    Text(model.description,
                        style: TextStyle (
                            fontSize: 12, color: Color(0xff494c79))),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        _chip(model.tag1, Color(0xfff46352), height: 5),
                        SizedBox(
                          width: 10,
                        ),
                        _chip(model.tag2,Color(0xff73d4dd), height: 5),
                      ],
                    )
                  ],
                ))
          ],
        ));
  }

  Widget _chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 12),
      ),
    );
  }

  Widget _decorationContainerA() {
    return Stack(
      children: <Widget>[
        Container(
            height: 300,
            child:  Image.network("https://dizibrand.com/wp-content/uploads/2021/08/su-phat-trien-CSDL-dizibrand.png")
        ),
      ],
    );
  }

  Widget _decorationContainerB() {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          child:  Image.network("https://ionetech.vn/Thumb/480x%20auto/2020/04/24/202004241051525246-4340f876070561c005eebe0c438037e6.jpg")
        ),
      ],
    );
  }

  Widget _decorationContainerC() {
    return Stack(
      children: <Widget>[
        Container(
            height: 300,
            child:  Image.network("https://techvccloud.mediacdn.vn/2018/12/7/ao-hoa-15441692640081067708617.jpg")
        ),
      ],
    );
  }

  Positioned _smallContainer(Color primaryColor, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primaryColor.withAlpha(255),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 20),
              _categoryRow(context, "Cập nhập liên tục 24h"),
              _courseList(context)
            ],
          ),
        ),
      ),
    );
  }
}