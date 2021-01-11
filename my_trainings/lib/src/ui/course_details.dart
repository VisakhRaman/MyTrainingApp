import 'package:flutter/material.dart';
import 'package:my_trainings/src/model/course_details_model.dart';
import 'package:my_trainings/src/ui/course_details_list_item.dart';

class CourseDetailsListView extends StatefulWidget {
  @override
  _CourseDetailsListViewState createState() => _CourseDetailsListViewState();
}

class _CourseDetailsListViewState extends State<CourseDetailsListView> {
  final CourseDetailsModel courseDetailsModel;

  _CourseDetailsListViewState({this.courseDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: courseDetailsData.length,
        itemBuilder: (context, index) {
          return CourseDetailsListItem(courseDetailsData[index]);
        },
      ),
    );
  }
}
