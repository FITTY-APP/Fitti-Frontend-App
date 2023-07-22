import 'package:fitty_frontend_app/domain/plan/exercise/widget/exercise_widget.dart';
import 'package:flutter/material.dart';

class ExerciseListPage extends StatefulWidget {
  const ExerciseListPage({super.key});

  @override
  State<ExerciseListPage> createState() => _ExerciseListPageState();
}

class _ExerciseListPageState extends State<ExerciseListPage> {
  List<String> _exercises = ["벤치프레스", "스쿼트", "데드리프트", "오버헤드프레스", "바벨로우"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _exercises.length,
          itemBuilder: (context, index) {
            return ExerciseWidget(
              exerciseName: _exercises[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}
