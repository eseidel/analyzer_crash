import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_required_signatures.dart';
import 'package:github/model/protected-branch_required_signatures.dart';
@immutable
class Protected-branchRequiredSignatures {
    Protected-branchRequiredSignatures(
        { required this.url,required this.enabled,
         }
    );

    factory Protected-branchRequiredSignatures.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchRequiredSignatures(
            url: json['url'] as String ,
            enabled: (json['enabled'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchRequiredSignatures? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchRequiredSignatures.fromJson(json);
    }

    final String  url;
    final bool  enabled;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'enabled': enabled,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          enabled,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branchRequiredSignatures
            && url == other.url
            && enabled == other.enabled
        ;
    }
}
