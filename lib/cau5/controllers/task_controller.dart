import '../models/task_model.dart';
import '../services/task_service.dart';

class TaskController {
  final TaskService _taskService = TaskService();

  Future<List<TaskModel>> loadTasks() async {
    return await _taskService.fetchTasks();
  }

  Future<void> removeTask(int id) async {
    return await _taskService.deleteTask(id);
  }
}
