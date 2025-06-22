import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/org-hook_config.dart';
@immutable
class Org-hookConfig {
    Org-hookConfig(
        {  this.url, this.insecure_ssl, this.content_type, this.secret,
         }
    );

    factory Org-hookConfig.fromJson(Map<String, dynamic>
        json) {
        return Org-hookConfig(
            url: json['url'] as String? ,
            insecure_ssl: json['insecure_ssl'] as String? ,
            content_type: json['content_type'] as String? ,
            secret: json['secret'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-hookConfig? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-hookConfig.fromJson(json);
    }

    final  String? url;
    final  String? insecure_ssl;
    final  String? content_type;
    final  String? secret;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'insecure_ssl': insecure_ssl,
            'content_type': content_type,
            'secret': secret,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          insecure_ssl,
          content_type,
          secret,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-hookConfig
            && url == other.url
            && insecure_ssl == other.insecure_ssl
            && content_type == other.content_type
            && secret == other.secret
        ;
    }
}
