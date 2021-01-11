import 'package:flutter/material.dart';
import 'package:my_trainings/src/constants/baseconstants.dart';
import 'package:my_trainings/src/constants/navigation_utils.dart';
import 'package:my_trainings/src/model/course_details_model.dart';
import 'package:my_trainings/src/ui/coursedetails_summary.dart';

class CourseDetailsListItem extends StatelessWidget {
  final CourseDetailsModel courseDetailsModel;
  CourseDetailsListItem(this.courseDetailsModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.white70, width: 1)),
      child: InkWell(
        onTap: () async {
          await NavigationUtils.push(
              context, CourseDetailsSummary(courseDetailsModel));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                  flex: 3,
                  child: Column(children: [
                    Text(courseDetailsModel.courseDate,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(courseDetailsModel.courseTime,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        )),
                    SizedBox(height: 12),
                    Text(courseDetailsModel.courseAddress,
                        style: TextStyle(color: Colors.black, fontSize: 10))
                  ])),
              Expanded(
                child: VerticalDivider(
                  width: 1.5,
                  color: Colors.grey,
                ),
              ),
              Flexible(
                flex: 4,
                child: Column(
                  children: [
                    Text(courseDetailsModel.courseAvailability,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: BaseConstants.BG_COLOR,
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                    Text(courseDetailsModel.courseTitle,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                              radius: 24,
                              child: ClipOval(
                                child: Image.asset(
                                  courseDetailsModel.courseInstructorImage,
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Keynote Speaker',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                              Text(courseDetailsModel.courseInstructor,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ))
                            ],
                          )
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
