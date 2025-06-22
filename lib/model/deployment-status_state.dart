import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment-status_state.dart';
import 'package:github/model/deployment-status_state.dart';
enum Deployment-statusState {
    error._('error'),
    failure._('failure'),
    inactive._('inactive'),
    pending._('pending'),
    success._('success'),
    queued._('queued'),
    inProgress._('in_progress'),
    ;

    const Deployment-statusState._(this.value);

    factory Deployment-statusState.fromJson(String json) {
        return Deployment-statusState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Deployment-statusState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Deployment-statusState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Deployment-statusState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
