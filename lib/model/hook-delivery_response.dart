import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/hook-delivery_response.dart';
import 'package:github/model/hook-delivery_response.dart';
@immutable
class Hook-deliveryResponse {
    Hook-deliveryResponse(
        { required this.headers,required this.payload,
         }
    );

    factory Hook-deliveryResponse.fromJson(Map<String, dynamic>
        json) {
        return Hook-deliveryResponse(
            headers: json['headers'].map((key, value) => MapEntry(key, value)).toMap(),
            payload: json['payload'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Hook-deliveryResponse? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Hook-deliveryResponse.fromJson(json);
    }

    final Map<String, dynamic>  headers;
    final String  payload;


    Map<String, dynamic> toJson() {
        return {
            'headers': headers.map((key, value) => MapEntry(key, value)).toMap(),
            'payload': payload,
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
        return other is Hook-deliveryResponse
            && mapsEqual(headers, other.headers)
            && payload == other.payload
        ;
    }
}
