import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/social-account.dart';
import 'package:github/model/social-account.dart';
@immutable
class Social-account {
    Social-account(
        { required this.provider,required this.url,
         }
    );

    factory Social-account.fromJson(Map<String, dynamic>
        json) {
        return Social-account(
            provider: json['provider'] as String ,
            url: json['url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Social-account? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Social-account.fromJson(json);
    }

    final String  provider;
    final String  url;


    Map<String, dynamic> toJson() {
        return {
            'provider': provider,
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          provider,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Social-account
            && provider == other.provider
            && url == other.url
        ;
    }
}
