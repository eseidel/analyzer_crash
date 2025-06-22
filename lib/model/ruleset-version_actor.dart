import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/ruleset-version_actor.dart';
import 'package:github/model/ruleset-version_actor.dart';
@immutable
class Ruleset-versionActor {
    Ruleset-versionActor(
        {  this.id, this.type,
         }
    );

    factory Ruleset-versionActor.fromJson(Map<String, dynamic>
        json) {
        return Ruleset-versionActor(
            id: (json['id'] as int?).toInt() ,
            type: json['type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Ruleset-versionActor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Ruleset-versionActor.fromJson(json);
    }

    final  int? id;
    final  String? type;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'type': type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Ruleset-versionActor
            && id == other.id
            && type == other.type
        ;
    }
}
