import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_dispatch_event_request.dart';
import 'package:github/model/repos/create_dispatch_event_request.dart';
@immutable
class Repos&#x2F;createDispatchEventRequest {
    Repos&#x2F;createDispatchEventRequest(
        { required this.event_type, this.client_payload,
         }
    );

    factory Repos&#x2F;createDispatchEventRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createDispatchEventRequest(
            event_type: json['event_type'] as String ,
            client_payload: json['client_payload'].map((key, value) => MapEntry(key, value)).toMap(),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDispatchEventRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDispatchEventRequest.fromJson(json);
    }

    final String  event_type;
    final  Map<String, dynamic>? client_payload;


    Map<String, dynamic> toJson() {
        return {
            'event_type': event_type,
            'client_payload': client_payload.map((key, value) => MapEntry(key, value)).toMap(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          event_type,
          client_payload,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createDispatchEventRequest
            && event_type == other.event_type
            && mapsEqual(client_payload, other.client_payload)
        ;
    }
}
