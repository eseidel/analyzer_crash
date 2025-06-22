import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_webhook_request.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/repos/update_webhook_request.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
@immutable
class Repos&#x2F;updateWebhookRequest {
    Repos&#x2F;updateWebhookRequest(
        {  this.config, this.events = const [], this.add_events = const [], this.remove_events = const [], this.active = true,
         }
    );

    factory Repos&#x2F;updateWebhookRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateWebhookRequest(
            config: Webhook-config.maybeFromJson(json['config'] as Map<String, dynamic>?) ,
            events: (json['events'] as List?)?.cast<String>() ,
            add_events: (json['add_events'] as List?)?.cast<String>() ,
            remove_events: (json['remove_events'] as List?)?.cast<String>() ,
            active: (json['active'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateWebhookRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateWebhookRequest.fromJson(json);
    }

    final  Webhook-config? config;
    final  List<String>? events;
    final  List<String>? add_events;
    final  List<String>? remove_events;
    final  bool? active;


    Map<String, dynamic> toJson() {
        return {
            'config': config?.toJson(),
            'events': events,
            'add_events': add_events,
            'remove_events': remove_events,
            'active': active,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          config,
          events,
          add_events,
          remove_events,
          active,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateWebhookRequest
            && config == other.config
            && listsEqual(events, other.events)
            && listsEqual(add_events, other.add_events)
            && listsEqual(remove_events, other.remove_events)
            && active == other.active
        ;
    }
}
