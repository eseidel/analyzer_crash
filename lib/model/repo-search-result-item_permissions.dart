import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repo-search-result-item_permissions.dart';
import 'package:github/model/repo-search-result-item_permissions.dart';
@immutable
class Repo-search-result-itemPermissions {
    Repo-search-result-itemPermissions(
        { required this.admin, this.maintain,required this.push, this.triage,required this.pull,
         }
    );

    factory Repo-search-result-itemPermissions.fromJson(Map<String, dynamic>
        json) {
        return Repo-search-result-itemPermissions(
            admin: (json['admin'] as bool) ,
            maintain: (json['maintain'] as bool?) ,
            push: (json['push'] as bool) ,
            triage: (json['triage'] as bool?) ,
            pull: (json['pull'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repo-search-result-itemPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repo-search-result-itemPermissions.fromJson(json);
    }

    final bool  admin;
    final  bool? maintain;
    final bool  push;
    final  bool? triage;
    final bool  pull;


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
        return other is Repo-search-result-itemPermissions
            && admin == other.admin
            && maintain == other.maintain
            && push == other.push
            && triage == other.triage
            && pull == other.pull
        ;
    }
}
