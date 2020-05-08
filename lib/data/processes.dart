import 'package:flutter/material.dart';
import 'package:timeline/model/timeline_model.dart';
import 'package:timeline/timeline.dart';

Widget Processes() {
  final List<TimelineModel> list = [
    TimelineModel(
        id: '1',
        description: 'Wash vegetables well, cut them into moderate pieces',
        title: 'Break some vegetables'),
    TimelineModel(
      id: '2',
      description: 'Add oil, heat until hot, add vegetables ',
      title: 'Boil until cooked',
    ),
    TimelineModel(
      id: '3',
      description: 'Add oil, heat until hot, add vegetables ',
      title: 'Boil until cooked',
    ),
    TimelineModel(
      id: '4',
      description: 'Add oil, heat until hot, add vegetables ',
      title: 'Boil until cooked',
    ),
    TimelineModel(
      id: '5',
      description: 'Add oil, heat until hot, add vegetables ',
      title: 'Boil until cooked',
    ),
    TimelineModel(
      id: '6',
      description:
          'Add oil, heat until hot, add vegetables heat until hot, add vegetables',
      title: 'Boil until cooked',
    )
  ];

  return Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: Colors.grey, style: BorderStyle.solid, width: 0.3),
      ),
      child: TimelineComponent(
        lineColor: Colors.green,
        timelineList: list,
      ),
    ),
  );
}
