import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/minimal-repository_permissions.dart';
@immutable
class Minimal-repositoryPermissions {
    Minimal-repositoryPermissions(
        {  this.admin, this.maintain, this.push, this.triage, this.pull,
         }
    );

    factory Minimal-repositoryPermissions.fromJson(Map<String, dynamic>
        json) {
        return Minimal-repositoryPermissions(
            admin: (json['admin'] as bool?) ,
            maintain: (json['maintain'] as bool?) ,
            push: (json['push'] as bool?) ,
            triage: (json['triage'] as bool?) ,
            pull: (json['pull'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Minimal-repositoryPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Minimal-repositoryPermissions.fromJson(json);
    }

    final  bool? admin;
    final  bool? maintain;
    final  bool? push;
    final  bool? triage;
    final  bool? pull;


    Map<String, dynamic> toJson() {
        return {
            'admin': admin,
            'maintain': maintain,
            'push': push,
            'triage': triage,
            'pull': pull,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          admin,
          maintain,
          push,
          triage,
          pull,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Minimal-repositoryPermissions
            && admin == other.admin
            && maintain == other.maintain
            && push == other.push
            && triage == other.triage
            && pull == other.pull
        ;
    }
}
