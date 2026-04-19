class TaskModel {
  final int id;
  final String title;
  final bool completed;

  TaskModel({
    required this.id,
    required this.title,
    required this.completed,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  TaskModel copyWith({int? id, String? title, bool? completed}) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}
