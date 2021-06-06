import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/config/palette.dart';
import 'package:flutter_clubhouse_ui/data.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;

  const UpcomingRooms({Key? key, required this.upcomingRooms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 100.0,
        decoration: BoxDecoration(
          color: Palette.secondaryBackground,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
          child: Column(
            children: upcomingRooms
                .map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.time),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  '${e.club} 😛'.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.0,
                                      ),
                                ),
                              ),
                              Flexible(
                                  child: Text(e.name + e.name + e.name,
                                      overflow: TextOverflow.ellipsis)),
                            ]),
                      )
                    ],
                  ),
                )
                .toList(),
          ),
        ));
  }
}
