import 'package:assignmnt/Widgets/appbar.dart';
import 'package:assignmnt/Widgets/svideo_screen_widget.dart';
import 'package:assignmnt/common/common_styles.dart';
import 'package:assignmnt/common/utils.dart';
import 'package:assignmnt/model/apimodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Apiservices/data_fetch_provider.dart';
import '../common/color.dart';
import '../common/screen_width_and_height.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: AppbarWidget(
                  text: 'Video',
                )),
            body: SingleChildScrollView(
                child: Column(children: [
              MyWidget(
                // name: snapshot.data!.downloadUrl.toString(),//
                name: 'Abraham ',
                duration: '30 mins',
              ),
              const VideoWidget(
                  storyline: 'can we survive this?',
                  likes: '17k likes',
                  image:
                      'https://i.picsum.photos/id/1011/5472/3648.jpg?hmac=Koo9845x2akkVzVFX3xxAc9BCkeGYA9VRVfLE4f0Zzk'),
              const Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12),
                child: Divider(
                  color: ColorsConsts.black,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.picsum.photos/id/1011/5472/3648.jpg?hmac=Koo9845x2akkVzVFX3xxAc9BCkeGYA9VRVfLE4f0Zzk'),
                          //datafetchApiProvider
                          //.datafetchApiModel!.downloadUrl
                          //.toString())
                        ),
                        Text(
                          'Joys albela',
                          style: CommonStyles.textField16w500black(),
                        ),
                        Utils.getSizedBox(width: 30),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 226, 8, 8)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Live',
                              style: CommonStyles.labelText15w500White(),
                            )),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(ColorsConsts.grey),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: CommonStyles.normalTextBlue14(),
                            ))
                      ])),
              const VideoWidget(
                storyline: 'concert of image dragons?',
                likes: '20k',
                image:
                    'https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
              ),
              const MyWidget(
                name: 'Suhaass ',
                duration: '15 mins',
              ),
              const VideoWidget(
                storyline: 'Life is beautiful?',
                likes: '57k likes',
                image: 'https://picsum.photos/id/1005/5760/3840',
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12),
                child: Divider(
                  color: ColorsConsts.black,
                ),
              ),
            ]))));
  }
}
