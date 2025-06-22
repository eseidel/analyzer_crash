import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
import 'package:github/model/hook.dart';
import 'package:github/model/webhook-config.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/hook-response.dart';
@immutable
class Hook {
    Hook(
        { required this.type,required this.id,required this.name,required this.active, this.events = const [],required this.config,required this.updated_at,required this.created_at,required this.url,required this.test_url,required this.ping_url, this.deliveries_url,required this.last_response,
         }
    );

    factory Hook.fromJson(Map<String, dynamic>
        json) {
        return Hook(
            type: json['type'] as String ,
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            active: (json['active'] as bool) ,
            events: (json['events'] as List).cast<String>() ,
            config: Webhook-config.fromJson(json['config'] as Map<String, dynamic>) ,
            updated_at: DateTime.parse(json['updated_at'] as String),
            created_at: DateTime.parse(json['created_at'] as String),
            url: json['url'] as String ,
            test_url: json['test_url'] as String ,
            ping_url: json['ping_url'] as String ,
            deliveries_url: json['deliveries_url'] as String? ,
            last_response: Hook-response.fromJson(json['last_response'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Hook? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Hook.fromJson(json);
    }

    final String  type;
    final int  id;
    final String  name;
    final bool  active;
    final List<String>  events;
    final Webhook-config  config;
    final DateTime  updated_at;
    final DateTime  created_at;
    final String  url;
    final String  test_url;
    final String  ping_url;
    final  String? deliveries_url;
    final Hook-response  last_response;


    Map<String, dynamic> toJson() {
        return {
            'type': type,
            'id': id,
            'name': name,
            'active': active,
            'events': events,
            'config': config.toJson(),
            'updated_at': updated_at.toIso8601String(),
            'created_at': created_at.toIso8601String(),
            'url': url,
            'test_url': test_url,
            'ping_url': ping_url,
            'deliveries_url': deliveries_url,
            'last_response': last_response.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          id,
          name,
          active,
          events,
          config,
          updated_at,
          created_at,
          url,
          test_url,
          ping_url,
          deliveries_url,
          last_response,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Hook
            && type == other.type
            && id == other.id
            && name == other.name
            && active == other.active
            && listsEqual(events, other.events)
            && config == other.config
            && updated_at == other.updated_at
            && created_at == other.created_at
            && url == other.url
            && test_url == other.test_url
            && ping_url == other.ping_url
            && deliveries_url == other.deliveries_url
            && last_response == other.last_response
        ;
    }
}
