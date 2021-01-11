import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_trainings/src/constants/baseconstants.dart';
import 'package:my_trainings/src/constants/clipper_component.dart';
import 'package:my_trainings/src/model/course_details_model.dart';

class CourseDetailsSummary extends StatefulWidget {
  final CourseDetailsModel courseDetailsModel;

  CourseDetailsSummary(this.courseDetailsModel);

  @override
  _CourseDetailsSummaryState createState() => _CourseDetailsSummaryState();
}

class _CourseDetailsSummaryState extends State<CourseDetailsSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            SafeArea(
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyClippers(),
                    child: imageCenter(),
                  ),
                ],
              ),
            ),
            title(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [courseDate(), courseInstructor()],
            ),
            summaryText(),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: joinCourseButton(),
            ),
            SizedBox(height: 5),
          ])),
    );
  }

  Widget imageCenter() {
    return Container(
      width: double.infinity,
      color: BaseConstants.BG_COLOR,
      child: Container(
        padding: EdgeInsets.all(25),
        child: ClipOval(
            child:
                Image.asset(widget.courseDetailsModel.courseInstructorImage)),
      ),
    );
  }

  Widget title() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 20, right: 18),
        child: Text(
          widget.courseDetailsModel.courseTitle,
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }

  Widget courseDate() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Text(
        '${widget.courseDetailsModel.courseDate}th\n' +
            '${widget.courseDetailsModel.courseTime}',
        style: TextStyle(fontSize: 14, color: Colors.black),
      ),
    ));
  }

  Widget courseInstructor() {
    return Container(
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Text(widget.courseDetailsModel.courseInstructor,
          style: TextStyle(fontSize: 17, color: Colors.black)),
    );
  }

  Widget summaryText() {
    return Flexible(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            '${widget.courseDetailsModel.courseSummary}' ?? '-',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget joinCourseButton() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: BaseConstants.BG_COLOR),
        child: Center(
          child: FlatButton(
            child: Text(
              'Join Course',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Colors.transparent,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
