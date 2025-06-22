import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/set_lfs_preference_request_use_lfs.dart';
import 'package:github/model/migrations/set_lfs_preference_request_use_lfs.dart';
enum Migrations&#x2F;setLfsPreferenceRequestUseLfs {
    optIn._('opt_in'),
    optOut._('opt_out'),
    ;

    const Migrations&#x2F;setLfsPreferenceRequestUseLfs._(this.value);

    factory Migrations&#x2F;setLfsPreferenceRequestUseLfs.fromJson(String json) {
        return Migrations&#x2F;setLfsPreferenceRequestUseLfs.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Migrations&#x2F;setLfsPreferenceRequestUseLfs value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;setLfsPreferenceRequestUseLfs? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;setLfsPreferenceRequestUseLfs.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
