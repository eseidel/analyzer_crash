import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';

@immutable
class Link {
  Link({required this.href});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(href: json['href'] as String);
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Link? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Link.fromJson(json);
  }

  final String href;

  Map<String, dynamic> toJson() {
    return {'href': href};
  }

  @override
  int get hashCode => href.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Link && href == other.href;
  }
}
