import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/import_project_choices_inner.dart';
import 'package:github/model/import_project_choices_inner.dart';

@immutable
class ImportProjectChoicesInner {
  ImportProjectChoicesInner({this.vcs, this.tfvc_project, this.human_name});

  factory ImportProjectChoicesInner.fromJson(Map<String, dynamic> json) {
    return ImportProjectChoicesInner(
      vcs: json['vcs'] as String?,
      tfvc_project: json['tfvc_project'] as String?,
      human_name: json['human_name'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ImportProjectChoicesInner? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ImportProjectChoicesInner.fromJson(json);
  }

  final String? vcs;
  final String? tfvc_project;
  final String? human_name;

  Map<String, dynamic> toJson() {
    return {'vcs': vcs, 'tfvc_project': tfvc_project, 'human_name': human_name};
  }

  @override
  int get hashCode => Object.hash(vcs, tfvc_project, human_name);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ImportProjectChoicesInner &&
        vcs == other.vcs &&
        tfvc_project == other.tfvc_project &&
        human_name == other.human_name;
  }
}
