import 'package:flutter/material.dart';
import '../common/color.dart';
import '../common/common_styles.dart';
import '../common/utils.dart';
class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar:  AppBar(
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left:9,top: 10,),
            child: Text(text,style: CommonStyles.labelText15w500Blue(),),
          ),
          actions: [
            
            const CircleAvatar(backgroundColor: Color.fromARGB(255, 214, 213, 213),
              child: Icon(Icons.search,color: ColorsConsts.black,),
            ),
            Utils.getSizedBox(width: 10),
            const CircleAvatar(backgroundColor: Color.fromARGB(255, 216, 216, 216),
              child: Icon(Icons.email,color: ColorsConsts.black,),
            ),
          ],
        ),
        
);}}