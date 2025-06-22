import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hovercard.dart';
import 'package:github/model/hovercard_contexts_inner.dart';
import 'package:github/model/hovercard.dart';
import 'package:github/model/hovercard_contexts_inner.dart';

@immutable
class Hovercard {
  Hovercard({this.contexts = const []});

  factory Hovercard.fromJson(Map<String, dynamic> json) {
    return Hovercard(
      contexts: (json['contexts'] as List)
          .map<HovercardContextsInner>(
            (e) => HovercardContextsInner.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Hovercard? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Hovercard.fromJson(json);
  }

  final List<HovercardContextsInner> contexts;

  Map<String, dynamic> toJson() {
    return {'contexts': contexts.map((e) => e.toJson()).toList()};
  }

  @override
  int get hashCode => contexts.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Hovercard && listsEqual(contexts, other.contexts);
  }
}
