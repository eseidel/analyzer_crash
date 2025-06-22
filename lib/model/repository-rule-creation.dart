import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-creation.dart';
import 'package:github/model/repository-rule-creation_type.dart';
import 'package:github/model/repository-rule-creation.dart';
import 'package:github/model/repository-rule-creation_type.dart';
@immutable
class Repository-rule-creation {
    Repository-rule-creation(
        { required this.type,
         }
    );

    factory Repository-rule-creation.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-creation(
            type: Repository-rule-creationType.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-creation? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-creation.fromJson(json);
    }

    final Repository-rule-creationType  type;


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
        return other is Repository-rule-creation
            && type == other.type
        ;
    }
}
