import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_org_roles200_response.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/orgs/list_org_roles200_response.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Orgs&#x2F;listOrgRoles200Response {
    Orgs&#x2F;listOrgRoles200Response(
        {  this.total_count, this.roles = const [],
         }
    );

    factory Orgs&#x2F;listOrgRoles200Response.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;listOrgRoles200Response(
            total_count: (json['total_count'] as int?).toInt() ,
            roles: (json['roles'] as List?)?.map<Organization-role>((e) => Organization-role.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listOrgRoles200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listOrgRoles200Response.fromJson(json);
    }

    final  int? total_count;
    final  List<Organization-role>? roles;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'roles': roles?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          roles,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;listOrgRoles200Response
            && total_count == other.total_count
            && listsEqual(roles, other.roles)
        ;
    }
}
