import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
import 'package:github/model/dependabot-alert-security-advisory_references_inner.dart';
@immutable
class Dependabot-alert-security-advisoryReferencesInner {
    Dependabot-alert-security-advisoryReferencesInner(
        { required this.url,
         }
    );

    factory Dependabot-alert-security-advisoryReferencesInner.fromJson(Map<String, dynamic>
        json) {
        return Dependabot-alert-security-advisoryReferencesInner(
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisoryReferencesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisoryReferencesInner.fromJson(json);
    }

    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
        };
    }

    @override
    int get hashCode =>
          url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot-alert-security-advisoryReferencesInner
            && url == other.url
        ;
    }
}
