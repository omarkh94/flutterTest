// class User {
//   final String email;
//   final String password;
//   final String fullName;
//   final String birthDate;
//   final String phoneNumber;

//   User({
//     required this.email,
//     required this.password,
//     required this.fullName,
//     required this.birthDate,
//     required this.phoneNumber,
//   });
// }

// class UserService {
//   static final List<User> _users = [
//     User(
//       email: "omarIbrahim@efe.jo",
//       password: "pass1234!",
//       fullName: "Omar Ibrahim",
//       birthDate: "1990-01-01",
//       phoneNumber: "0791234567",
//     ),
//     // Add more test users if needed
//   ];

//   static User? _currentUser;

//   static bool login(String email, String password) {
//     final user = _users.firstWhere(
//       (u) => u.email == email && u.password == password,
//       orElse: () => null as User,
//     );
//     if (user != null) {
//       _currentUser = user;
//       return true;
//     }
//     return false;
//   }

//   static bool signup({
//     required String email,
//     required String password,
//     required String fullName,
//     required String birthDate,
//     required String phoneNumber,
//   }) {
//     final exists = _users.any((u) => u.email == email);
//     if (exists) return false;
//     _users.add(
//       User(
//         email: email,
//         password: password,
//         fullName: fullName,
//         birthDate: birthDate,
//         phoneNumber: phoneNumber,
//       ),
//     );
//     return true;
//   }

//   static void logout() {
//     _currentUser = null;
//   }

//   static User? getCurrentUser() => _currentUser;

//   static bool isLoggedIn() => _currentUser != null;
// }
