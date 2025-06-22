import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-deletion.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
import 'package:github/model/repository-rule-deletion.dart';
import 'package:github/model/repository-rule-deletion_type.dart';
@immutable
class Repository-rule-deletion {
    Repository-rule-deletion(
        { required this.type,
         }
    );

    factory Repository-rule-deletion.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-deletion(
            type: Repository-rule-deletionType.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-deletion? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-deletion.fromJson(json);
    }

    final Repository-rule-deletionType  type;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
        };
    }

    @override
    int get hashCode =>
          type.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-deletion
            && type == other.type
        ;
    }
}
