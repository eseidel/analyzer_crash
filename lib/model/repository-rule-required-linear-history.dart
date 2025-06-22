import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-linear-history.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
import 'package:github/model/repository-rule-required-linear-history.dart';
import 'package:github/model/repository-rule-required-linear-history_type.dart';
@immutable
class Repository-rule-required-linear-history {
    Repository-rule-required-linear-history(
        { required this.type,
         }
    );

    factory Repository-rule-required-linear-history.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-required-linear-history(
            type: Repository-rule-required-linear-historyType.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-linear-history? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-linear-history.fromJson(json);
    }

    final Repository-rule-required-linear-historyType  type;


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
        return other is Repository-rule-required-linear-history
            && type == other.type
        ;
    }
}
