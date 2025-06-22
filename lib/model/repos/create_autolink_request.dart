import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_autolink_request.dart';
import 'package:github/model/repos/create_autolink_request.dart';
@immutable
class Repos&#x2F;createAutolinkRequest {
    Repos&#x2F;createAutolinkRequest(
        { required this.key_prefix,required this.url_template, this.is_alphanumeric = true,
         }
    );

    factory Repos&#x2F;createAutolinkRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createAutolinkRequest(
            key_prefix: json['key_prefix'] as String ,
            url_template: json['url_template'] as String ,
            is_alphanumeric: (json['is_alphanumeric'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createAutolinkRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createAutolinkRequest.fromJson(json);
    }

    final String  key_prefix;
    final String  url_template;
    final  bool? is_alphanumeric;


    Map<String, dynamic> toJson() {
        return {
            'key_prefix': key_prefix,
            'url_template': url_template,
            'is_alphanumeric': is_alphanumeric,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key_prefix,
          url_template,
          is_alphanumeric,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createAutolinkRequest
            && key_prefix == other.key_prefix
            && url_template == other.url_template
            && is_alphanumeric == other.is_alphanumeric
        ;
    }
}
