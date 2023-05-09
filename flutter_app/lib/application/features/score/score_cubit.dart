import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/application/models/duration_extension.dart';
import 'package:flutter_app/application/models/score_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ScoreState {}

class ScoreInitial extends ScoreState {}

class ScoreCubit extends Cubit<ScoreState> {
  ScoreCubit(this.score) : super(ScoreInitial()) {
    _storeResultsInDatabase();
  }

  final ScoreModel score;

  Future<void> _storeResultsInDatabase() async {
    String id = FirebaseAuth.instance.currentUser!.uid;
    var quizzes = FirebaseFirestore.instance.collection('/user/$id/quizzes');
    await quizzes.add({
      'date': FieldValue.serverTimestamp(),
      'duration': score.quizTakingTime.inNormalFormat(),
      'result': score.result,
      'url': score.url,
    });
  }
}
