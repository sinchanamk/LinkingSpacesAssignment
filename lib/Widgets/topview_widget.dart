import 'package:assignmnt/common/color.dart';
import 'package:flutter/material.dart';
class TopviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    Padding(
                        padding: const EdgeInsets.all(10),
                        child:
                         Container(
                            height: 90,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.pink,
                                       spreadRadius: 3),
                                ],
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://i.picsum.photos/id/1011/5472/3648.jpg?hmac=Koo9845x2akkVzVFX3xxAc9BCkeGYA9VRVfLE4f0Zzk'),
                                )),
                                child: Center(child: Text('Lucy baker',style: TextStyle(color: ColorsConsts.white),),),
                                ),
                      );
                   
  }
}