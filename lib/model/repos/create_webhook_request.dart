import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_webhook_request.dart';
import 'package:github/model/repos/create_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/repos/create_webhook_request.dart';
import 'package:github/model/repos/create_webhook_request_config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
@immutable
class Repos&#x2F;createWebhookRequest {
    Repos&#x2F;createWebhookRequest(
        {  this.name, this.config, this.events = const [], this.active = true,
         }
    );

    factory Repos&#x2F;createWebhookRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createWebhookRequest(
            name: json['name'] as String? ,
            config: Repos/createWebhookRequestConfig.maybeFromJson(json['config'] as Map<String, dynamic>?) ,
            events: (json['events'] as List?)?.cast<String>() ,
            active: (json['active'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createWebhookRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createWebhookRequest.fromJson(json);
    }

    final  String? name;
    final  Repos/createWebhookRequestConfig? config;
    final  List<String>? events;
    final  bool? active;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'config': config?.toJson(),
            'events': events,
            'active': active,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          config,
          events,
          active,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createWebhookRequest
            && name == other.name
            && config == other.config
            && listsEqual(events, other.events)
            && active == other.active
        ;
    }
}
