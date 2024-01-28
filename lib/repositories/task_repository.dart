import 'package:task_manager/data_sources/task_data_provider.dart';
import 'package:task_manager/models/task.dart';

class TaskRepository {
  final TaskDataProvider taskDataProvider;

  TaskRepository({required this.taskDataProvider});

  Future<List<TaskModel>> getTasks() async {
    return await taskDataProvider.getTasks();
  }

  Future<void> createNewTask(TaskModel taskModel) async {
    return await taskDataProvider.createTask(taskModel);
  }

  Future<List<TaskModel>> updateTask(TaskModel taskModel) async {
    return await taskDataProvider.updateTask(taskModel);
  }

  Future<List<TaskModel>> deleteTask(TaskModel taskModel) async {
    return await taskDataProvider.deleteTask(taskModel);
  }

  Future<List<TaskModel>> sortTasks(int sortOption) async {
    return await taskDataProvider.sortTasks(sortOption);
  }

  Future<List<TaskModel>> searchTasks(String search) async {
    return await taskDataProvider.searchTasks(search);
  }
}
