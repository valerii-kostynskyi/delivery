import 'package:delivery/data/models/task_model/task_model.dart';

class TrackWraper {
  final int trackNumber;
  final TaskModel task;

  TrackWraper({required this.trackNumber, required this.task});

  Map<String, dynamic> toJson() {
    return {
      'trackNumber': trackNumber,
      'task': task.toJson(),
    };
  }

  factory TrackWraper.fromJson(Map<String, dynamic> json) {
    return TrackWraper(
      trackNumber: json['trackNumber'] as int,
      task: TaskModel.fromJson(json['task'] as Map<String, dynamic>),
    );
  }
}
