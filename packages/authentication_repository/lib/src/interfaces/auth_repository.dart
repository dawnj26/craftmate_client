enum AuthenticationType { google, facebook }

abstract class IAuthenticationRepository {
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<void> socialAuth(AuthenticationType type);

  Future<void> logOut();
  Future<void> sendOTP(String email);
  Future<void> verifyOtp(String email, String otp);
}
