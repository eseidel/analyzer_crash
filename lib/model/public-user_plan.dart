import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/public-user_plan.dart';
import 'package:github/model/public-user_plan.dart';
@immutable
class Public-userPlan {
    Public-userPlan(
        { required this.collaborators,required this.name,required this.space,required this.private_repos,
         }
    );

    factory Public-userPlan.fromJson(Map<String, dynamic>
        json) {
        return Public-userPlan(
            collaborators: (json['collaborators'] as int).toInt() ,
            name: json['name'] as String ,
            space: (json['space'] as int).toInt() ,
            private_repos: (json['private_repos'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Public-userPlan? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Public-userPlan.fromJson(json);
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
        return other is Public-userPlan
            && collaborators == other.collaborators
            && name == other.name
            && space == other.space
            && private_repos == other.private_repos
        ;
    }
}
