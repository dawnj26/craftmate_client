import 'package:authentication_repository/authentication_repository.dart';
import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/logger.dart';
import 'package:craftmate_client/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
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
    _authenticationRepository = AuthenticationRepository(config: config);
    _userRepository = UserRepository(config: config);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
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
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                if (config.apiUrl.isEmpty) {
                  _navigator.pushAndRemoveUntil<void>(
                    GetApiScreen.route(StatusScreen.route('authenticated')),
                    (route) => false,
                  );
                } else {
                  _navigator.pushAndRemoveUntil<void>(
                    StatusScreen.route('authenticated'),
                    (route) => false,
                  );
                }
              case AuthenticationStatus.unauthenticated:
                if (config.apiUrl.isEmpty) {
                  _navigator.pushAndRemoveUntil<void>(
                    GetApiScreen.route(LoginPage.route()),
                    (route) => false,
                  );
                } else {
                  _navigator.pushAndRemoveUntil<void>(
                    LoginPage.route(),
                    (route) => false,
                  );
                }
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

class GetApiScreen extends StatefulWidget {
  const GetApiScreen({super.key, required this.nextScreen});

  final Route<void> nextScreen;

  static Route<void> route(Route<void> screen) {
    return MaterialPageRoute(builder: (_) => GetApiScreen(nextScreen: screen));
  }

  @override
  State<GetApiScreen> createState() => _GetApiScreenState();
}

class _GetApiScreenState extends State<GetApiScreen> {
  final apiController = TextEditingController();
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Get API from your best programmer in the world',
                style: TextStyle(fontSize: 24.0),
              ),
              const Gap(12.0),
              TextField(
                controller: apiController,
                decoration: InputDecoration(
                  labelText: 'API Url',
                  border: const OutlineInputBorder(),
                  errorText: errorText,
                ),
              ),
              const Gap(12.0),
              FilledButton(
                onPressed: () {
                  if (apiController.text.isEmpty) {
                    setState(() {
                      errorText = 'Lagyan mo naman';
                    });
                    return;
                  }
                  //https://b4be-2001-fd8-2110-8c36-5e3a-45ff-fe44-947b.ngrok-free.app
                  config.apiUrl = apiController.text;

                  Navigator.of(context).pushReplacement(
                    widget.nextScreen,
                  );
                },
                child: const Text(
                  'Add url',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
