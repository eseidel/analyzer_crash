import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_tag_protection_request.dart';
import 'package:github/model/repos/create_tag_protection_request.dart';
@immutable
class Repos&#x2F;createTagProtectionRequest {
    Repos&#x2F;createTagProtectionRequest(
        { required this.pattern,
         }
    );

    factory Repos&#x2F;createTagProtectionRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createTagProtectionRequest(
            pattern: json['pattern'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createTagProtectionRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createTagProtectionRequest.fromJson(json);
    }

    final String  pattern;


    Map<String, dynamic> toJson() {
        return {
            'pattern': pattern,
        };
    }

    @override
    int get hashCode =>
          pattern.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createTagProtectionRequest
            && pattern == other.pattern
        ;
    }
}
