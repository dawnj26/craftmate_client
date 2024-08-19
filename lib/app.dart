import 'package:authentication_repository/authentication_repository.dart';
import 'package:config_repository/config_repository.dart';
import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/auth/login/login.dart';
import 'package:craftmate_client/dashboard/view/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AuthenticationRepository _authenticationRepository;
  late final UserRepository _userRepository;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // initialize repositories
    final config = ConfigRepository(apiUrl: 'http://192.168.100.110:9000');
    // final config =
    //     ConfigRepository(apiUrl: 'https://moved-wasp-willingly.ngrok-free.app');
    _authenticationRepository = AuthenticationRepository(config: config);
    _userRepository = UserRepository(config: config);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    // dispose auth streams
    _authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _userRepository),
      ],
      child: BlocProvider(
        create: (_) => AuthBloc(
          authenticationRepository: _authenticationRepository,
          userRepository: _userRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff316A42),
        ),
      ),
      title: 'CraftMate',
      builder: (context, child) {
        // Listen to status changes
        return BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  DashboardPage.route(),
                  (route) => false,
                );

              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                  (route) => false,
                );
              case AuthenticationStatus.unknown:
                _navigator.pushAndRemoveUntil<void>(
                  StatusScreen.route('unknown'),
                  (route) => false,
                );
              default:
                _navigator.pushAndRemoveUntil<void>(
                  StatusScreen.route('nothing is working'),
                  (route) => false,
                );
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashScreen.route(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo_without_label.png'),
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key, required this.status});

  final String status;

  static Route<void> route(String status) {
    return MaterialPageRoute(
      builder: (_) => StatusScreen(status: status),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(status),
          FilledButton(
            onPressed: () {
              context.read<AuthBloc>().add(AuthLogoutRequest());
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
