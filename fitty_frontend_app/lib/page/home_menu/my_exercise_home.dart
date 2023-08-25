import 'package:fitty_frontend_app/data/all_exercise_record.dart';
import 'package:fitty_frontend_app/page/exercise/daily_routine_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyExerciseHome extends StatelessWidget {
  const MyExerciseHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => DailyRoutinePage(
                title: "오늘의 운동",
                selectedDay: DateTime.now(),
              ));
        },
        child: const Text('오늘의 운동 시작하기'),
      ),
    );
  }
}
