import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
import 'package:github/model/repository-ruleset-bypass-actor_actor_type.dart';
enum Repository-ruleset-bypass-actorActorType {
    integration._('Integration'),
    organizationadmin._('OrganizationAdmin'),
    repositoryrole._('RepositoryRole'),
    team._('Team'),
    deploykey._('DeployKey'),
    ;

    const Repository-ruleset-bypass-actorActorType._(this.value);

    factory Repository-ruleset-bypass-actorActorType.fromJson(String json) {
        return Repository-ruleset-bypass-actorActorType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-ruleset-bypass-actorActorType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-ruleset-bypass-actorActorType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-ruleset-bypass-actorActorType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
