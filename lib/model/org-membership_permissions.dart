import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-membership_permissions.dart';
import 'package:github/model/org-membership_permissions.dart';
@immutable
class Org-membershipPermissions {
    Org-membershipPermissions(
        { required this.can_create_repository,
         }
    );

    factory Org-membershipPermissions.fromJson(Map<String, dynamic>
        json) {
        return Org-membershipPermissions(
            can_create_repository: (json['can_create_repository'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-membershipPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-membershipPermissions.fromJson(json);
    }

    final bool  can_create_repository;


    Map<String, dynamic> toJson() {
        return {
            'can_create_repository': can_create_repository,
        };
    }

    @override
    int get hashCode =>
          can_create_repository.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-membershipPermissions
            && can_create_repository == other.can_create_repository
        ;
    }
}
