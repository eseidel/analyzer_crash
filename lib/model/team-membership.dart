import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
import 'package:github/model/team-membership.dart';
import 'package:github/model/team-membership_role.dart';
import 'package:github/model/team-membership_state.dart';
@immutable
class Team-membership {
    Team-membership(
        { required this.url, this.role = Team-membershipRole.member,required this.state,
         }
    );

    factory Team-membership.fromJson(Map<String, dynamic>
        json) {
        return Team-membership(
            url: json['url'] as String ,
            role: Team-membershipRole.fromJson(json['role'] as String) ,
            state: Team-membershipState.fromJson(json['state'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-membership? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-membership.fromJson(json);
    }

    final String  url;
    final Team-membershipRole  role;
    final Team-membershipState  state;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'role': role.toJson(),
            'state': state.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          role,
          state,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-membership
            && url == other.url
            && role == other.role
            && state == other.state
        ;
    }
}
