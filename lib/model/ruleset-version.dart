import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/ruleset-version.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/ruleset-version.dart';
import 'package:github/model/ruleset-version_actor.dart';
@immutable
class Ruleset-version {
    Ruleset-version(
        { required this.version_id,required this.actor,required this.updated_at,
         }
    );

    factory Ruleset-version.fromJson(Map<String, dynamic>
        json) {
        return Ruleset-version(
            version_id: (json['version_id'] as int).toInt() ,
            actor: Ruleset-versionActor.fromJson(json['actor'] as Map<String, dynamic>) ,
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Ruleset-version? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Ruleset-version.fromJson(json);
    }

    final int  version_id;
    final Ruleset-versionActor  actor;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'version_id': version_id,
            'actor': actor.toJson(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          version_id,
          actor,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Ruleset-version
            && version_id == other.version_id
            && actor == other.actor
            && updated_at == other.updated_at
        ;
    }
}
