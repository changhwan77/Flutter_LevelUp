import 'package:flutter/material.dart';
import 'package:flutter_level_up/component/main_calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_level_up/component/schedule_card.dart';
import 'package:flutter_level_up/component/today_banner.dart';
import 'package:flutter_level_up/component/schedule_bottom_sheet.dart';
import 'package:flutter_level_up/const/colors.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            isDismissible: true,
            builder: (_) => ScheduleBottomSheet(),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate,
              onDaySelected: onDaySelected,
            ),
            TodayBanner(selectedDate: selectedDate, count: 0),
            SizedBox(
              height: 8.0,
            ),
            ScheduleCard(content: '프로그래밍 공부', endTime: 14, startTime: 12),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
