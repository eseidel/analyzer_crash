import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-with-repository_state.dart';
import 'package:github/model/dependabot-alert-with-repository_state.dart';
enum Dependabot-alert-with-repositoryState {
    autoDismissed._('auto_dismissed'),
    dismissed._('dismissed'),
    fixed._('fixed'),
    open._('open'),
    ;

    const Dependabot-alert-with-repositoryState._(this.value);

    factory Dependabot-alert-with-repositoryState.fromJson(String json) {
        return Dependabot-alert-with-repositoryState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-with-repositoryState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-with-repositoryState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-with-repositoryState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
