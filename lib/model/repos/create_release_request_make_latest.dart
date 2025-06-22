import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_release_request_make_latest.dart';
import 'package:github/model/repos/create_release_request_make_latest.dart';
enum Repos&#x2F;createReleaseRequestMakeLatest {
    true._('true'),
    false._('false'),
    legacy._('legacy'),
    ;

    const Repos&#x2F;createReleaseRequestMakeLatest._(this.value);

    factory Repos&#x2F;createReleaseRequestMakeLatest.fromJson(String json) {
        return Repos&#x2F;createReleaseRequestMakeLatest.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;createReleaseRequestMakeLatest value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createReleaseRequestMakeLatest? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createReleaseRequestMakeLatest.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
