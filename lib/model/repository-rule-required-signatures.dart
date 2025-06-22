import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-required-signatures.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
import 'package:github/model/repository-rule-required-signatures.dart';
import 'package:github/model/repository-rule-required-signatures_type.dart';
@immutable
class Repository-rule-required-signatures {
    Repository-rule-required-signatures(
        { required this.type,
         }
    );

    factory Repository-rule-required-signatures.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-required-signatures(
            type: Repository-rule-required-signaturesType.fromJson(json['type'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-required-signatures? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-required-signatures.fromJson(json);
    }

    final Repository-rule-required-signaturesType  type;


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
        return other is Repository-rule-required-signatures
            && type == other.type
        ;
    }
}
