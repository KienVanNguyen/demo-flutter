import 'package:demofutter/data/avartar.dart';
import 'package:flutter/material.dart';
import 'package:demofutter/data/data.dart';

class PetDetail extends StatelessWidget {

  final Phone phone;

  PetDetail({required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: Stack(
              children: [

                Hero(
                  tag: phone.imageUrl,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(phone.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            phone.name,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          Row(
                            children: [

                              Icon(
                                Icons.location_on,
                                color: Colors.grey[600],
                                size: 20,
                              ),

                              SizedBox(
                                width: 4,
                              ),

                              Text(
                                phone.location,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(
                                width: 4,
                              ),

                              Text(
                                "(" + phone.distance + "km)",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: phone.favorite ? Colors.red[400] : Colors.white,
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: 24,
                          color: phone.favorite ? Colors.white : Colors.grey[300],
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [

                      buildPetFeature("Gi??", "3.550.000 VND"),
                      buildPetFeature("M??u", "X??m"),
                      buildPetFeature("Rom", "256GB"),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Th??ng tin",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Ng?????i d??ng Galaxy Fold khi l??n giao di???n One UI 4.1 c?? th??? Chia s??? nhanh m???ng Wi-Fi v???i nh???ng d??ng kh??c. Ti???p ?????n b???n c?? th??? truy c???p l???ch s??? ch???nh s???a ho??n ch???nh cho h??nh ???nh v?? video ???????c chia s??? v???i Quick Share, thay t??y ch???n c??i ?????t dung l?????ng b??? nh??? RAM ???o. Ngo??i ra, giao di???n One UI 4.1 gi??p Galaxy Fold c?? kh??? n??ng t??y bi???n cao v???i b???ng m??u Material You.",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [

                          UserAvatar(),

                          SizedBox(
                            width: 12,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Ng?????i b??n",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(
                                height: 4,
                              ),

                              Text(
                                "NVK SHOP",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.blue[300],
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Mua h??ng ngay",
                              style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

  buildPetFeature(String value, String feature){
    return Expanded(
      child: Container(
        height: 78,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [

            Text(
              value,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 4,
            ),

            Text(
              feature,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),

          ],
        ),
      ),
    );
  }

}