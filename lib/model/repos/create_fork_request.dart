import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_fork_request.dart';
import 'package:github/model/repos/create_fork_request.dart';
@immutable
class Repos&#x2F;createForkRequest {
    Repos&#x2F;createForkRequest(
        {  this.organization, this.name, this.default_branch_only,
         }
    );

    factory Repos&#x2F;createForkRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createForkRequest(
            organization: json['organization'] as String? ,
            name: json['name'] as String? ,
            default_branch_only: (json['default_branch_only'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createForkRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createForkRequest.fromJson(json);
    }

    final  String? organization;
    final  String? name;
    final  bool? default_branch_only;


    Map<String, dynamic> toJson() {
        return {
            'organization': organization,
            'name': name,
            'default_branch_only': default_branch_only,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          organization,
          name,
          default_branch_only,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createForkRequest
            && organization == other.organization
            && name == other.name
            && default_branch_only == other.default_branch_only
        ;
    }
}
