import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/org-membership.dart';
import 'package:github/model/org-membership_state.dart';
import 'package:github/model/org-membership_role.dart';
import 'package:github/model/organization-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/org-membership_permissions.dart';
@immutable
class Org-membership {
    Org-membership(
        { required this.url,required this.state,required this.role,required this.organization_url,required this.organization,required this.user, this.permissions,
         }
    );

    factory Org-membership.fromJson(Map<String, dynamic>
        json) {
        return Org-membership(
            url: json['url'] as String ,
            state: Org-membershipState.fromJson(json['state'] as String) ,
            role: Org-membershipRole.fromJson(json['role'] as String) ,
            organization_url: json['organization_url'] as String ,
            organization: Organization-simple.fromJson(json['organization'] as Map<String, dynamic>) ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            permissions: Org-membershipPermissions.maybeFromJson(json['permissions'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-membership? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-membership.fromJson(json);
    }

    final String  url;
    final Org-membershipState  state;
    final Org-membershipRole  role;
    final String  organization_url;
    final Organization-simple  organization;
    final Nullable-simple-user  user;
    final  Org-membershipPermissions? permissions;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'state': state.toJson(),
            'role': role.toJson(),
            'organization_url': organization_url,
            'organization': organization.toJson(),
            'user': user.toJson(),
            'permissions': permissions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          state,
          role,
          organization_url,
          organization,
          user,
          permissions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-membership
            && url == other.url
            && state == other.state
            && role == other.role
            && organization_url == other.organization_url
            && organization == other.organization
            && user == other.user
            && permissions == other.permissions
        ;
    }
}
