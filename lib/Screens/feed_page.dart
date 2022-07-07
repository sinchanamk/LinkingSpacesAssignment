import 'package:assignmnt/Apiservices/data_fetch_provider.dart';
import 'package:assignmnt/Widgets/topview_widget.dart';
import 'package:assignmnt/model/apimodel.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/appbar.dart';
import '../common/color.dart';
import '../common/common_styles.dart';
import '../common/screen_width_and_height.dart';
import '../common/utils.dart';

class MyFeedPage extends StatefulWidget {
  const MyFeedPage({super.key});
  @override
  State<MyFeedPage> createState() => _MyFeedPageState();
}

class _MyFeedPageState extends State<MyFeedPage> {
  late Future<DatafetchApiModel> futureAlbum;
  @override
  void initState() {
    super.initState();
    if (context.read<APIProvider>().datafetchApiModel == null) {
      context.read<APIProvider>().getBanner();
    }

    listdemo.add(DatafetchApiModel(
        author: 'Lucy baker',
        downloadUrl:
            'https://i.picsum.photos/id/1016/3844/2563.jpg?hmac=WEryKFRvTdeae2aUrY-DHscSmZuyYI9jd_-p94stBvc',
        height: 0,
        id: '',
        url: '',
        width: 0));
    listdemo.add(
      DatafetchApiModel(
          author: 'sophiani',
          downloadUrl:
              'https://i.picsum.photos/id/1011/5472/3648.jpg?hmac=Koo9845x2akkVzVFX3xxAc9BCkeGYA9VRVfLE4f0Zzk',
          height: 0,
          id: '',
          url: '',
          width: 0),
    );
    listdemo.add(DatafetchApiModel(
        author: 'Webbgey',
        downloadUrl: 'https://picsum.photos/id/1005/5760/3840',
        height: 0,
        id: '',
        url: '',
        width: 0));
    listdemo.add(DatafetchApiModel(
        author: 'Nokiaal',
        downloadUrl:
            'https://i.picsum.photos/id/1023/3955/2094.jpg?hmac=AW_7mARdoPWuI7sr6SG8t-2fScyyewuNscwMWtQRawU',
        height: 0,
        id: '',
        url: '',
        width: 0));
    listdemo.add(DatafetchApiModel(
        author: 'hjohnnyy',
        downloadUrl:
            'https://i.picsum.photos/id/1024/1920/1280.jpg?hmac=-PIpG7j_fRwN8Qtfnsc3M8-kC3yb0XYOBfVzlPSuVII',
        height: 0,
        id: '',
        url: '',
        width: 0));
  }

  List<DatafetchApiModel> listdemo = [];
  TextEditingController courseNameField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final datafetchApiProvider = Provider.of<DatafetchApiProvider>(context);

    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppbarWidget(
            text: 'Feed',
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
              height: deviceHeight(context) / 4.8,
              width: deviceWidth(context),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // itemCount: 12, //datafetchApiProvider.apiFetchModel!.length,
                  itemCount: listdemo.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return index == 0
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                                height: 90,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.pink, spreadRadius: 3),
                                    ],
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://i.picsum.photos/id/1003/1181/1772.jpg?hmac=oN9fHMXiqe9Zq2RM6XT-RVZkojgPnECWwyEF1RvvTZk',
                                      ),
                                    )),
                                child: const Center(
                                    child: CircleAvatar(
                                  backgroundColor: ColorsConsts.white,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: ColorsConsts.black,
                                  ),
                                ))),
                          )
                        : //TopviewWidget();
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.pink, spreadRadius: 3),
                                  ],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        listdemo[index].downloadUrl.toString()),
                                  )),
                              child: Center(
                                child: Text(
                                  listdemo[index].author.toString(),
                                  style: TextStyle(color: ColorsConsts.white),
                                ),
                              ),
                            ),
                          );
                  })),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.picsum.photos/id/1016/3844/2563.jpg?hmac=WEryKFRvTdeae2aUrY-DHscSmZuyYI9jd_-p94stBvc'),
                ),
                SizedBox(
                  width: 220,
                  height: 40,
                  child: TextFormField(
                    controller: courseNameField,
                    cursorColor: Color.fromARGB(255, 62, 64, 65),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide(
                          color: ColorsConsts.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 145, 144, 144),
                        ),
                      ),
                      hintText: 'What do you want? '.toUpperCase(),
                      hintStyle: TextStyle(
                          color: Colors.indigo[100],
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: ColorsConsts.grey,
                  child: Icon(
                    Icons.image_search,
                    color: ColorsConsts.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 0),
            child: Divider(
              color: Color.fromARGB(255, 156, 155, 155),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: ColorsConsts.green,
                            child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY'))),
                        Padding(
                          padding: const EdgeInsets.only(right: 148.0),
                          child: Column(
                            children: [
                              Text(
                                'John Smith',
                                style: CommonStyles.labelText15w500Grey(),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '30 mins',
                                    style: CommonStyles.labelText16w500Black(),
                                  ),
                                  Utils.getSizedBox(width: 3),
                                  Icon(
                                    Icons.circle,
                                    color: Color.fromARGB(255, 43, 42, 42),
                                    size: 6,
                                  ),
                                  Utils.getSizedBox(width: 7),
                                  Icon(
                                    Icons.people,
                                    size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        FavoriteButton(
                          isFavorite: true, iconSize: 36,
                          // iconDisabledColor: Colors.white,
                          valueChanged: (_isFavorite) {
                            print('Is Favorite : $_isFavorite');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.network(
                          'https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=a-H8Y'),
                        ),
                        SizedBox(
                          width: 220,
                          height: 40,
                          child: TextFormField(
                            controller: courseNameField,
                            cursorColor: ColorsConsts.primary,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35.0),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 171, 171, 172),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 163, 163, 163),
                                ),
                              ),
                              hintText: 'Say something... '.toUpperCase(),
                              hintStyle: TextStyle(
                                  color: Colors.indigo[100],
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 171, 171, 172),
                          child: Icon(
                            Icons.share,
                            color: ColorsConsts.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12),
                    child: Divider(
                      color: Color.fromARGB(255, 151, 150, 150),
                    ),
                  ),
                ]);
              }),
        ]),
      ),
    ));
  }
}
