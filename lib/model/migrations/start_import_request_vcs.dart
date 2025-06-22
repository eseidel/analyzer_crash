import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/start_import_request_vcs.dart';
import 'package:github/model/migrations/start_import_request_vcs.dart';
enum Migrations&#x2F;startImportRequestVcs {
    subversion._('subversion'),
    git._('git'),
    mercurial._('mercurial'),
    tfvc._('tfvc'),
    ;

    const Migrations&#x2F;startImportRequestVcs._(this.value);

    factory Migrations&#x2F;startImportRequestVcs.fromJson(String json) {
        return Migrations&#x2F;startImportRequestVcs.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Migrations&#x2F;startImportRequestVcs value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;startImportRequestVcs? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;startImportRequestVcs.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
