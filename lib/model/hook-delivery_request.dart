import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hook-delivery_request.dart';
import 'package:github/model/hook-delivery_request.dart';
@immutable
class Hook-deliveryRequest {
    Hook-deliveryRequest(
        { required this.headers,required this.payload,
         }
    );

    factory Hook-deliveryRequest.fromJson(Map<String, dynamic>
        json) {
        return Hook-deliveryRequest(
            headers: json['headers'].map((key, value) => MapEntry(key, value)).toMap(),
            payload: json['payload'].map((key, value) => MapEntry(key, value)).toMap(),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Hook-deliveryRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Hook-deliveryRequest.fromJson(json);
    }

    final Map<String, dynamic>  headers;
    final Map<String, dynamic>  payload;


    Map<String, dynamic> toJson() {
        return {
            'headers': headers.map((key, value) => MapEntry(key, value)).toMap(),
            'payload': payload.map((key, value) => MapEntry(key, value)).toMap(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          headers,
          payload,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Hook-deliveryRequest
            && mapsEqual(headers, other.headers)
            && mapsEqual(payload, other.payload)
        ;
    }
}
