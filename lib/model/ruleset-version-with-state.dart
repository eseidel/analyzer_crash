import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/ruleset-version-with-state.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/ruleset-version-with-state.dart';
import 'package:github/model/ruleset-version_actor.dart';
@immutable
class Ruleset-version-with-state {
    Ruleset-version-with-state(
        {  this.version_id, this.actor, this.updated_at, this.state,
         }
    );

    factory Ruleset-version-with-state.fromJson(Map<String, dynamic>
        json) {
        return Ruleset-version-with-state(
            version_id: (json['version_id'] as int?).toInt() ,
            actor: Ruleset-versionActor.maybeFromJson(json['actor'] as Map<String, dynamic>?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            state: json['state'],
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Ruleset-version-with-state? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Ruleset-version-with-state.fromJson(json);
    }

    final  int? version_id;
    final  Ruleset-versionActor? actor;
    final  DateTime? updated_at;
    final  dynamic? state;


    Map<String, dynamic> toJson() {
        return {
            'version_id': version_id,
            'actor': actor?.toJson(),
            'updated_at': updated_at?.toIso8601String(),
            'state': state,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          version_id,
          actor,
          updated_at,
          state,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Ruleset-version-with-state
            && version_id == other.version_id
            && actor == other.actor
            && updated_at == other.updated_at
            && identical(state, other.state)
        ;
    }
}
