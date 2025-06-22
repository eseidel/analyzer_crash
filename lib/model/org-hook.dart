import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
import 'package:github/model/org-hook.dart';
import 'package:github/model/org-hook_config.dart';
@immutable
class Org-hook {
    Org-hook(
        { required this.id,required this.url,required this.ping_url, this.deliveries_url,required this.name, this.events = const [],required this.active,required this.config,required this.updated_at,required this.created_at,required this.type,
         }
    );

    factory Org-hook.fromJson(Map<String, dynamic>
        json) {
        return Org-hook(
            id: (json['id'] as int).toInt() ,
            url: json['url'] as String ,
            ping_url: json['ping_url'] as String ,
            deliveries_url: json['deliveries_url'] as String? ,
            name: json['name'] as String ,
            events: (json['events'] as List).cast<String>() ,
            active: (json['active'] as bool) ,
            config: Org-hookConfig.fromJson(json['config'] as Map<String, dynamic>) ,
            updated_at: DateTime.parse(json['updated_at'] as String),
            created_at: DateTime.parse(json['created_at'] as String),
            type: json['type'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Org-hook? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Org-hook.fromJson(json);
    }

    final int  id;
    final String  url;
    final String  ping_url;
    final  String? deliveries_url;
    final String  name;
    final List<String>  events;
    final bool  active;
    final Org-hookConfig  config;
    final DateTime  updated_at;
    final DateTime  created_at;
    final String  type;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'url': url,
            'ping_url': ping_url,
            'deliveries_url': deliveries_url,
            'name': name,
            'events': events,
            'active': active,
            'config': config.toJson(),
            'updated_at': updated_at.toIso8601String(),
            'created_at': created_at.toIso8601String(),
            'type': type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          url,
          ping_url,
          deliveries_url,
          name,
          events,
          active,
          config,
          updated_at,
          created_at,
          type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Org-hook
            && id == other.id
            && url == other.url
            && ping_url == other.ping_url
            && deliveries_url == other.deliveries_url
            && name == other.name
            && listsEqual(events, other.events)
            && active == other.active
            && config == other.config
            && updated_at == other.updated_at
            && created_at == other.created_at
            && type == other.type
        ;
    }
}
