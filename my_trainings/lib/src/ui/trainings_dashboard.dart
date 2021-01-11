import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_trainings/src/constants/baseconstants.dart';
import 'package:my_trainings/src/model/highlights_model.dart';
import 'package:my_trainings/src/ui/course_details.dart';
import 'package:my_trainings/src/ui/highlights_carousel.dart';

class MyTrainingDashboard extends StatefulWidget {
  @override
  _MyTrainingDashboardState createState() => _MyTrainingDashboardState();
}

class _MyTrainingDashboardState extends State<MyTrainingDashboard> {
  HighLightsModel highLightsModel;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Trainings'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(color: BaseConstants.BG_COLOR, height: height * 0.3),
                Container(
                  child: Text(
                    'Highlights',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                    child: CarouselSlider(
                      items: [
                        for (int i = 0; i < highLightsData.length; i++)
                          HighLightsCarousel(
                            highLightsModel: highLightsData[i],
                          ),
                      ],
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                      ),
                    ))
              ],
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.transparent,
                  onPressed: () {
                    _settingModalBottomSheet(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.filter_list, color: Colors.grey),
                      Text(
                        'Filter',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(child: CourseDetailsListView())
          ],
        ));
  }

  _settingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 0.3,
                  child: filtersPage(context)));
        });
  }
}

Widget filtersPage(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text('Sort and Filters',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      Divider(),
      Center(
        child: Text(
          'Filter View is in progress.',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
