import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
import 'package:github/model/repository-ruleset-bypass-actor.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_bypass_mode.dart';
@immutable
class Repository-ruleset-bypass-actor {
    Repository-ruleset-bypass-actor(
        {  this.actor_id,required this.actor_type, this.bypass_mode = Repository-ruleset-bypass-actorBypassMode.always,
         }
    );

    factory Repository-ruleset-bypass-actor.fromJson(Map<String, dynamic>
        json) {
        return Repository-ruleset-bypass-actor(
            actor_id: (json['actor_id'] as int?).toInt() ,
            actor_type: Repository-ruleset-bypass-actorActorType.fromJson(json['actor_type'] as String) ,
            bypass_mode: Repository-ruleset-bypass-actorBypassMode.maybeFromJson(json['bypass_mode'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-bypass-actor? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-bypass-actor.fromJson(json);
    }

    final  int? actor_id;
    final Repository-ruleset-bypass-actorActorType  actor_type;
    final  Repository-ruleset-bypass-actorBypassMode? bypass_mode;


    Map<String, dynamic> toJson() {
        return {
            'actor_id': actor_id,
            'actor_type': actor_type.toJson(),
            'bypass_mode': bypass_mode?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          actor_id,
          actor_type,
          bypass_mode,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-ruleset-bypass-actor
            && actor_id == other.actor_id
            && actor_type == other.actor_type
            && bypass_mode == other.bypass_mode
        ;
    }
}
