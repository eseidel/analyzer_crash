import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_protected_domain_state.dart';

enum PageProtectedDomainState {
  pending._('pending'),
  verified._('verified'),
  unverified._('unverified');

  const PageProtectedDomainState._(this.value);

  factory PageProtectedDomainState.fromJson(String json) {
    return PageProtectedDomainState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PageProtectedDomainState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PageProtectedDomainState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PageProtectedDomainState.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
