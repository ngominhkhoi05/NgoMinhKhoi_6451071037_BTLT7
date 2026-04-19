import '../../cau1/models/user.dart';
import '../services/user_update_service.dart';

class UserUpdateController {
  final UserUpdateService _userUpdateService = UserUpdateService();

  Future<User> loadUser(int id) async {
    return await _userUpdateService.fetchUser(id);
  }

  Future<User> saveUser({
    required int id,
    required String name,
    required String email,
    required String phone,
  }) async {
    return await _userUpdateService.updateUser(
      id: id,
      name: name,
      email: email,
      phone: phone,
    );
  }
}
