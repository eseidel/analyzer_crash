import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
@immutable
class Branch-protectionRequiredSignatures {
    Branch-protectionRequiredSignatures(
        { required this.url,required this.enabled,
         }
    );

    factory Branch-protectionRequiredSignatures.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionRequiredSignatures(
            url: json['url'] as String ,
            enabled: (json['enabled'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionRequiredSignatures? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionRequiredSignatures.fromJson(json);
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
        return other is Branch-protectionRequiredSignatures
            && url == other.url
            && enabled == other.enabled
        ;
    }
}
