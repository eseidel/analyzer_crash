import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-workflow-access-to-repository.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
import 'package:github/model/actions-workflow-access-to-repository.dart';
import 'package:github/model/actions-workflow-access-to-repository_access_level.dart';
@immutable
class Actions-workflow-access-to-repository {
    Actions-workflow-access-to-repository(
        { required this.access_level,
         }
    );

    factory Actions-workflow-access-to-repository.fromJson(Map<String, dynamic>
        json) {
        return Actions-workflow-access-to-repository(
            access_level: Actions-workflow-access-to-repositoryAccessLevel.fromJson(json['access_level'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-workflow-access-to-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-workflow-access-to-repository.fromJson(json);
    }

    final Actions-workflow-access-to-repositoryAccessLevel  access_level;


    Map<String, dynamic> toJson() {
        return {
            'access_level': access_level.toJson(),
        };
    }

    @override
    int get hashCode =>
          access_level.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-workflow-access-to-repository
            && access_level == other.access_level
        ;
    }
}
