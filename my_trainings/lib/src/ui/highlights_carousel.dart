import 'package:flutter/material.dart';
import 'package:my_trainings/src/constants/baseconstants.dart';
import 'package:my_trainings/src/model/highlights_model.dart';

class HighLightsCarousel extends StatelessWidget {
  final HighLightsModel highLightsModel;

  HighLightsCarousel({this.highLightsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset(
            highLightsModel.trainerImage,
            fit: BoxFit.cover,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Color(0xFF343434).withOpacity(0.7),
                  Color(0xFF343434).withOpacity(0.7),
                ])),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 75, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    highLightsModel.topicTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(highLightsModel.trainingAddress,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  Container(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        highLightsModel.trainingPrice,
                        style: TextStyle(
                            color: BaseConstants.BG_COLOR,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text('View Details->',
                          style: TextStyle(color: Colors.white70)),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
