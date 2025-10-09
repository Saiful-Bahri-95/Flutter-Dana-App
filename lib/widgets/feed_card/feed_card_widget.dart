import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class FeedCardWidget extends StatefulWidget {
  const FeedCardWidget({super.key});

  @override
  State<FeedCardWidget> createState() => _FeedCardWidgetState();
}

class _FeedCardWidgetState extends State<FeedCardWidget> {
  List<Widget> friendsFeedList = [
    FriendFeedList1(),
    FriendFeedList2(),
    FriendFeedList3(),
  ];
  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: EdgeInsets.only(left: 16, right: 16, top: 12),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(16, 16, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feed',
                      style: primaryTextTheme.headlineMedium?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Find out what your friends are up to!',
                      style: textTheme.bodyMedium?.copyWith(fontSize: 10),
                    ),
                  ],
                ),
                OutlinedButton(onPressed: () {}, child: Text('EXPLORE')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: CarouselSlider.builder(
              itemCount: friendsFeedList.length,
              itemBuilder: (context, index, realIndex) =>
                  friendsFeedList[index],
              options: CarouselOptions(
                scrollPhysics: NeverScrollableScrollPhysics(),
                autoPlay: true,
                scrollDirection: Axis.vertical,
                reverse: true,
                padEnds: true,
                height: 60,
                enableInfiniteScroll: true,
                initialPage: 2,
                autoPlayCurve: Curves.easeInCirc,
                viewportFraction: 1,
                autoPlayInterval: Duration(seconds: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
