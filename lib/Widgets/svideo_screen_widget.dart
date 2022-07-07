import 'package:assignmnt/common/color.dart';
import 'package:flutter/material.dart';

import '../common/common_styles.dart';
import '../common/screen_width_and_height.dart';
import '../common/utils.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.name, required this.duration});
  final String name;
  final String duration;
 
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.picsum.photos/id/1023/3955/2094.jpg?hmac=AW_7mARdoPWuI7sr6SG8t-2fScyyewuNscwMWtQRawU')),
            Text(
              name,
              style: CommonStyles.textField16w500black(),
            ),
            Utils.getSizedBox(width: 30),
            Text(
              duration,
              style: CommonStyles.labelText16w500Black(),
            ),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(ColorsConsts.grey),
                ),
                onPressed: () {},
                child: Text('Follow',style: CommonStyles.normalTextBlue14(),
                           )),
          ]))
    ]);
  }
}

class VideoWidget extends StatelessWidget {
  final String storyline;
  final String likes;
  final String image;

  const VideoWidget({super.key, required this.storyline, required this.likes, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: deviceHeight(context) / 4.3,
        width: deviceWidth(context),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 6, bottom: 6, right: 15),
                  child: Container(
                      height: 120,
                      width: 286,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(image
                                //'https://i.picsum.photos/id/1012/3973/2639.jpg?hmac=s2eybz51lnKy2ZHkE2wsgc6S81fVD1W2NKYOSh8bzDc'),
                          )),),
                      child: Column(children: [
                        Utils.getSizedBox(height: 50),
                        const Center(
                            child: CircleAvatar(backgroundColor: Colors.blue,radius: 20,
                              child: Icon(
                                                          Icons.play_arrow,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                            )),
                        Utils.getSizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                storyline,
                                style: CommonStyles.labelText15w500White(),
                              ),
                              Text(
                                likes,
                                style: CommonStyles.labelText15w500White(),
                              ),
                            ],
                          ),
                        )
                      ])));
            }));
  }
}
