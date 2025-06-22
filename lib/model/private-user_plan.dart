import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private-user_plan.dart';
import 'package:github/model/private-user_plan.dart';
@immutable
class Private-userPlan {
    Private-userPlan(
        { required this.collaborators,required this.name,required this.space,required this.private_repos,
         }
    );

    factory Private-userPlan.fromJson(Map<String, dynamic>
        json) {
        return Private-userPlan(
            collaborators: (json['collaborators'] as int).toInt() ,
            name: json['name'] as String ,
            space: (json['space'] as int).toInt() ,
            private_repos: (json['private_repos'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Private-userPlan? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Private-userPlan.fromJson(json);
    }

    final int  collaborators;
    final String  name;
    final int  space;
    final int  private_repos;


    Map<String, dynamic> toJson() {
        return {
            'collaborators': collaborators,
            'name': name,
            'space': space,
            'private_repos': private_repos,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          collaborators,
          name,
          space,
          private_repos,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Private-userPlan
            && collaborators == other.collaborators
            && name == other.name
            && space == other.space
            && private_repos == other.private_repos
        ;
    }
}
