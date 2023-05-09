import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/admin/view/dashboard.dart';
import 'package:flutter_app/application/features/create_quiz/view/create_quiz_page.dart';
import 'package:flutter_app/application/features/log_in/view/log_in_page.dart';
import 'package:flutter_app/application/features/quiz/view/quiz_page.dart';
import 'package:flutter_app/application/features/quiz_history/quiz_history_page.dart';
import 'package:flutter_app/application/features/score/score_page.dart';
import 'package:flutter_app/application/features/sign_up/view/sign_up_page.dart';
import 'package:flutter_app/application/features/splash/splash_page.dart';
import 'package:flutter_app/application/models/quiz_page_data.dart';
import 'package:flutter_app/application/models/score_model.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(routes: AppRouter.routes);

class AppRouter {
  static Future<String> _getInitialRoute(
      BuildContext context, GoRouterState state) async {
    AuthenticationRepository authenticationRepository =
        AuthenticationRepository();
    bool isAuthenticated = authenticationRepository.isAuthenticated();
    if (isAuthenticated) {
      String role = await authenticationRepository.getRole();
      if (role == 'admin') {
        return '/dashboard';
      } else {
        return '/create-quiz';
      }
    } else {
      return '/log-in';
    }
  }

  static List<GoRoute> routes = [
    GoRoute(
      path: '/',
      redirect: _getInitialRoute,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) {
        return const SignUpPage();
      },
    ),
    GoRoute(
      path: '/log-in',
      builder: (context, state) {
        return const LogInPage();
      },
    ),
    GoRoute(
      path: '/create-quiz',
      builder: (context, state) {
        return const CreateQuizPage();
      },
    ),
    GoRoute(
      path: '/quiz',
      builder: (context, state) {
        QuizPageData data = state.extra as QuizPageData;
        return QuizPage(data: data);
      },
    ),
    GoRoute(
      path: '/score',
      builder: (context, state) {
        ScoreModel score = state.extra as ScoreModel;
        return ScorePage(score: score);
      },
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) {
        return const Dashboard();
      },
    ),
    GoRoute(
      path: '/dashboard/user',
      builder: (context, state) {
        String id = state.extra as String;
        return QuizHistoryPage(userId: id);
      },
    ),
  ];
}
