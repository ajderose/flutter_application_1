import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<User?> signInWithSpotify() async {
    try {
      // Implement Spotify authentication logic here
      // Example: use a package like flutter_spotify_authentication
      UserCredential userCredential = await _auth.signInAnonymously();
      return userCredential.user;
    } catch (e) {
      print('Error signing in with Spotify: $e');
      return null;
    }
  }

  Future<User?> signInWithApple() async {
    try {
      // Implement Apple Music authentication logic here
      // Example: use a package like sign_in_with_apple
      UserCredential userCredential = await _auth.signInAnonymously();
      return userCredential.user;
    } catch (e) {
      print('Error signing in with Apple: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
