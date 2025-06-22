import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-non-fast-forward.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
import 'package:github/model/repository-rule-non-fast-forward.dart';
import 'package:github/model/repository-rule-non-fast-forward_type.dart';
@immutable
class Repository-rule-non-fast-forward {
    Repository-rule-non-fast-forward(
        { required this.type,
         }
    );

    factory Repository-rule-non-fast-forward.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-non-fast-forward(
            type: Repository-rule-non-fast-forwardType.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-non-fast-forward? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-non-fast-forward.fromJson(json);
    }

    final Repository-rule-non-fast-forwardType  type;


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
        return other is Repository-rule-non-fast-forward
            && type == other.type
        ;
    }
}
