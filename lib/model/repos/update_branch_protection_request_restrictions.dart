import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_branch_protection_request_restrictions.dart';
import 'package:github/model/repos/update_branch_protection_request_restrictions.dart';
@immutable
class Repos&#x2F;updateBranchProtectionRequestRestrictions {
    Repos&#x2F;updateBranchProtectionRequestRestrictions(
        {  this.users = const [], this.teams = const [], this.apps = const [],
         }
    );

    factory Repos&#x2F;updateBranchProtectionRequestRestrictions.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateBranchProtectionRequestRestrictions(
            users: (json['users'] as List).cast<String>() ,
            teams: (json['teams'] as List).cast<String>() ,
            apps: (json['apps'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateBranchProtectionRequestRestrictions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateBranchProtectionRequestRestrictions.fromJson(json);
    }

    final List<String>  users;
    final List<String>  teams;
    final  List<String>? apps;


    Map<String, dynamic> toJson() {
        return {
            'users': users,
            'teams': teams,
            'apps': apps,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          users,
          teams,
          apps,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateBranchProtectionRequestRestrictions
            && listsEqual(users, other.users)
            && listsEqual(teams, other.teams)
            && listsEqual(apps, other.apps)
        ;
    }
}
