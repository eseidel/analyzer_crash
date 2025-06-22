import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/event_repo.dart';
import 'package:github/model/event_repo.dart';

@immutable
class EventRepo {
  EventRepo({required this.id, required this.name, required this.url});

  factory EventRepo.fromJson(Map<String, dynamic> json) {
    return EventRepo(
      id: (json['id'] as int).toInt(),
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EventRepo? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return EventRepo.fromJson(json);
  }

  final int id;
  final String name;
  final String url;

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'url': url};
  }

  @override
  int get hashCode => Object.hash(id, name, url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EventRepo &&
        id == other.id &&
        name == other.name &&
        url == other.url;
  }
}
