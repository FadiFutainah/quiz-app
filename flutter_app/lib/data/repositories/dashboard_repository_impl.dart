import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/domain/entities/score/firebase_score_entity.dart';
import 'package:flutter_app/domain/entities/user_score/firebase_user.dart';
import 'package:flutter_app/domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  @override
  Future getUsers() async {
    var users = await FirebaseFirestore.instance.collection('/user').get();

    List<FirebaseUser> data = users.docs
        .map((e) => FirebaseUser(id: e.id, email: e['email'], role: e['role']))
        .toList();

    return data;
  }

  @override
  Future getUserQuizHistory(String id) async {
    var quizzes =
        await FirebaseFirestore.instance.collection('/user/$id/quizzes').get();

    List<FirebaseScoreEntity> data = quizzes.docs
        .map((e) => FirebaseScoreEntity(
              date: e.data()['date'].toString(),
              duration: e.data()['duration'],
              result: e.data()['result'],
              url: e.data()['url'],
            ))
        .toList();

    return data;
  }
}
