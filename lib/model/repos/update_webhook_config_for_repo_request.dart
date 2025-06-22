import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_webhook_config_for_repo_request.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/repos/update_webhook_config_for_repo_request.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
@immutable
class Repos&#x2F;updateWebhookConfigForRepoRequest {
    Repos&#x2F;updateWebhookConfigForRepoRequest(
        {  this.url, this.content_type, this.secret, this.insecure_ssl,
         }
    );

    factory Repos&#x2F;updateWebhookConfigForRepoRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateWebhookConfigForRepoRequest(
            url: Webhook-config-url((json['url'] as String?) ),
            content_type: Webhook-config-content-type((json['content_type'] as String?) ),
            secret: Webhook-config-secret((json['secret'] as String?) ),
            insecure_ssl: Webhook-config-insecure-ssl.maybeFromJson(json['insecure_ssl'] as dynamic),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateWebhookConfigForRepoRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateWebhookConfigForRepoRequest.fromJson(json);
    }

    final  Webhook-config-url? url;
    final  Webhook-config-content-type? content_type;
    final  Webhook-config-secret? secret;
    final  Webhook-config-insecure-ssl? insecure_ssl;


    Map<String, dynamic> toJson() {
        return {
            'url': url?.toJson(),
            'content_type': content_type?.toJson(),
            'secret': secret?.toJson(),
            'insecure_ssl': insecure_ssl?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          content_type,
          secret,
          insecure_ssl,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateWebhookConfigForRepoRequest
            && url == other.url
            && content_type == other.content_type
            && secret == other.secret
            && insecure_ssl == other.insecure_ssl
        ;
    }
}
