import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hook-delivery.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_response.dart';
import 'package:github/model/hook-delivery.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_response.dart';
@immutable
class Hook-delivery {
    Hook-delivery(
        { required this.id,required this.guid,required this.delivered_at,required this.redelivery,required this.duration,required this.status,required this.status_code,required this.event,required this.action,required this.installation_id,required this.repository_id, this.throttled_at, this.url,required this.request,required this.response,
         }
    );

    factory Hook-delivery.fromJson(Map<String, dynamic>
        json) {
        return Hook-delivery(
            id: (json['id'] as int).toInt() ,
            guid: json['guid'] as String ,
            delivered_at: DateTime.parse(json['delivered_at'] as String),
            redelivery: (json['redelivery'] as bool) ,
            duration: (json['duration'] as num).toDouble() ,
            status: json['status'] as String ,
            status_code: (json['status_code'] as int).toInt() ,
            event: json['event'] as String ,
            action: json['action'] as String ,
            installation_id: (json['installation_id'] as int).toInt() ,
            repository_id: (json['repository_id'] as int).toInt() ,
            throttled_at: maybeParseDateTime(json['throttled_at'] as String?) ,
            url: json['url'] as String? ,
            request: Hook-deliveryRequest.fromJson(json['request'] as Map<String, dynamic>) ,
            response: Hook-deliveryResponse.fromJson(json['response'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Hook-delivery? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Hook-delivery.fromJson(json);
    }

    final int  id;
    final String  guid;
    final DateTime  delivered_at;
    final bool  redelivery;
    final double  duration;
    final String  status;
    final int  status_code;
    final String  event;
    final String  action;
    final int  installation_id;
    final int  repository_id;
    final  DateTime? throttled_at;
    final  String? url;
    final Hook-deliveryRequest  request;
    final Hook-deliveryResponse  response;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'guid': guid,
            'delivered_at': delivered_at.toIso8601String(),
            'redelivery': redelivery,
            'duration': duration,
            'status': status,
            'status_code': status_code,
            'event': event,
            'action': action,
            'installation_id': installation_id,
            'repository_id': repository_id,
            'throttled_at': throttled_at?.toIso8601String(),
            'url': url,
            'request': request.toJson(),
            'response': response.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          guid,
          delivered_at,
          redelivery,
          duration,
          status,
          status_code,
          event,
          action,
          installation_id,
          repository_id,
          throttled_at,
          url,
          request,
          response,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Hook-delivery
            && id == other.id
            && guid == other.guid
            && delivered_at == other.delivered_at
            && redelivery == other.redelivery
            && duration == other.duration
            && status == other.status
            && status_code == other.status_code
            && event == other.event
            && action == other.action
            && installation_id == other.installation_id
            && repository_id == other.repository_id
            && throttled_at == other.throttled_at
            && url == other.url
            && request == other.request
            && response == other.response
        ;
    }
}
