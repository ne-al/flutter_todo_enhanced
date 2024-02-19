import 'package:flutter_todo_enhanced/app/screens/pages/auth/login_page.dart';
import 'package:flutter_todo_enhanced/app/screens/pages/auth/register_page.dart';
import 'package:flutter_todo_enhanced/app/screens/pages/home.dart';
import 'package:flutter_todo_enhanced/app/screens/views/add_todos.dart';
import 'package:flutter_todo_enhanced/core/handler/auth_handler.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'handler',
      builder: (context, state) => const AuthHandler(),
      routes: [
        GoRoute(
          path: 'home',
          name: 'home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: 'addTodo',
          builder: (context, state) => const AddTodo(),
        ),
        GoRoute(
          path: 'login',
          name: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: 'register',
          name: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
      ],
    ),
  ],
);
