import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
import 'package:github/model/repository-advisory-credit_state.dart';
enum Repository-advisory-creditState {
    accepted._('accepted'),
    declined._('declined'),
    pending._('pending'),
    ;

    const Repository-advisory-creditState._(this.value);

    factory Repository-advisory-creditState.fromJson(String json) {
        return Repository-advisory-creditState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisory-creditState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-creditState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-creditState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
