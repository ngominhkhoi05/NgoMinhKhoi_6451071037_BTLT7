import '../models/user.dart';
import '../services/user_service.dart';

class UserController {
  final UserService _userService = UserService();

  Future<List<User>> loadUsers() async {
    return await _userService.fetchUsers();
  }
}
