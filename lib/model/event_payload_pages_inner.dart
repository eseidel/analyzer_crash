import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/event_payload_pages_inner.dart';
import 'package:github/model/event_payload_pages_inner.dart';

@immutable
class EventPayloadPagesInner {
  EventPayloadPagesInner({
    this.page_name,
    this.title,
    this.summary,
    this.action,
    this.sha,
    this.html_url,
  });

  factory EventPayloadPagesInner.fromJson(Map<String, dynamic> json) {
    return EventPayloadPagesInner(
      page_name: json['page_name'] as String?,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      action: json['action'] as String?,
      sha: json['sha'] as String?,
      html_url: json['html_url'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EventPayloadPagesInner? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return EventPayloadPagesInner.fromJson(json);
  }

  final String? page_name;
  final String? title;
  final String? summary;
  final String? action;
  final String? sha;
  final String? html_url;

  Map<String, dynamic> toJson() {
    return {
      'page_name': page_name,
      'title': title,
      'summary': summary,
      'action': action,
      'sha': sha,
      'html_url': html_url,
    };
  }

  @override
  int get hashCode =>
      Object.hash(page_name, title, summary, action, sha, html_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EventPayloadPagesInner &&
        page_name == other.page_name &&
        title == other.title &&
        summary == other.summary &&
        action == other.action &&
        sha == other.sha &&
        html_url == other.html_url;
  }
}
