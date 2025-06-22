import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_webhook_request.dart';
import 'package:github/model/orgs/update_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/orgs/update_webhook_request.dart';
import 'package:github/model/orgs/update_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
@immutable
class Orgs&#x2F;updateWebhookRequest {
    Orgs&#x2F;updateWebhookRequest(
        {  this.config, this.events = const [], this.active = true, this.name,
         }
    );

    factory Orgs&#x2F;updateWebhookRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;updateWebhookRequest(
            config: Orgs/updateWebhookRequestConfig.maybeFromJson(json['config'] as Map<String, dynamic>?) ,
            events: (json['events'] as List?)?.cast<String>() ,
            active: (json['active'] as bool?) ,
            name: json['name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updateWebhookRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updateWebhookRequest.fromJson(json);
    }

    final  Orgs/updateWebhookRequestConfig? config;
    final  List<String>? events;
    final  bool? active;
    final  String? name;


    Map<String, dynamic> toJson() {
        return {
            'config': config?.toJson(),
            'events': events,
            'active': active,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          config,
          events,
          active,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;updateWebhookRequest
            && config == other.config
            && listsEqual(events, other.events)
            && active == other.active
            && name == other.name
        ;
    }
}
