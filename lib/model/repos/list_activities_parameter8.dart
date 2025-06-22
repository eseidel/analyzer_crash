import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_activities_parameter8.dart';
import 'package:github/model/repos/list_activities_parameter8.dart';
enum Repos&#x2F;listActivitiesParameter8 {
    day._('day'),
    week._('week'),
    month._('month'),
    quarter._('quarter'),
    year._('year'),
    ;

    const Repos&#x2F;listActivitiesParameter8._(this.value);

    factory Repos&#x2F;listActivitiesParameter8.fromJson(String json) {
        return Repos&#x2F;listActivitiesParameter8.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;listActivitiesParameter8 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listActivitiesParameter8? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listActivitiesParameter8.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
