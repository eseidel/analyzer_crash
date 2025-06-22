import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request_default_level.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request.dart';
import 'package:github/model/dependabot/set_repository_access_default_level_request_default_level.dart';
@immutable
class Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest {
    Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest(
        { required this.default_level,
         }
    );

    factory Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest.fromJson(Map<String, dynamic>
        json) {
        return Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest(
            default_level: Dependabot/setRepositoryAccessDefaultLevelRequestDefaultLevel.fromJson(json['default_level'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest.fromJson(json);
    }

    final Dependabot/setRepositoryAccessDefaultLevelRequestDefaultLevel  default_level;


    Map<String, dynamic> toJson() {
        return {
            'default_level': default_level.toJson(),
        };
    }

    @override
    int get hashCode =>
          default_level.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot&#x2F;setRepositoryAccessDefaultLevelRequest
            && default_level == other.default_level
        ;
    }
}
