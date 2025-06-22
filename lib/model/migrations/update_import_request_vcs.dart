import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/update_import_request_vcs.dart';
import 'package:github/model/migrations/update_import_request_vcs.dart';
enum Migrations&#x2F;updateImportRequestVcs {
    subversion._('subversion'),
    tfvc._('tfvc'),
    git._('git'),
    mercurial._('mercurial'),
    ;

    const Migrations&#x2F;updateImportRequestVcs._(this.value);

    factory Migrations&#x2F;updateImportRequestVcs.fromJson(String json) {
        return Migrations&#x2F;updateImportRequestVcs.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Migrations&#x2F;updateImportRequestVcs value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;updateImportRequestVcs? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;updateImportRequestVcs.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
