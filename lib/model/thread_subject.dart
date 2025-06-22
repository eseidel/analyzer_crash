import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/thread_subject.dart';
import 'package:github/model/thread_subject.dart';

@immutable
class ThreadSubject {
  ThreadSubject({
    required this.title,
    required this.url,
    required this.latest_comment_url,
    required this.type,
  });

  factory ThreadSubject.fromJson(Map<String, dynamic> json) {
    return ThreadSubject(
      title: json['title'] as String,
      url: json['url'] as String,
      latest_comment_url: json['latest_comment_url'] as String,
      type: json['type'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ThreadSubject? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ThreadSubject.fromJson(json);
  }

  final String title;
  final String url;
  final String latest_comment_url;
  final String type;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': url,
      'latest_comment_url': latest_comment_url,
      'type': type,
    };
  }

  @override
  int get hashCode => Object.hash(title, url, latest_comment_url, type);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThreadSubject &&
        title == other.title &&
        url == other.url &&
        latest_comment_url == other.latest_comment_url &&
        type == other.type;
  }
}
