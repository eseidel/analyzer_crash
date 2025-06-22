import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/checks/create_request.dart';
import 'package:github/model/checks/create_request_status.dart';
import 'package:github/model/checks/create_request.dart';
import 'package:github/model/checks/create_request_status.dart';
@immutable
class Checks&#x2F;createRequest {
    Checks&#x2F;createRequest(
        {  this.status,
        required this.entries, }
    );

    factory Checks&#x2F;createRequest.fromJson(Map<String, dynamic>
        json) {
        return Checks&#x2F;createRequest(
            status: Checks/createRequestStatus.maybeFromJson(json['status'] as String?) ,
            entries: json.map((key, value) => MapEntry(key, value)),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Checks&#x2F;createRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Checks&#x2F;createRequest.fromJson(json);
    }

    final  Checks/createRequestStatus? status;

    final Map<String, dynamic> entries;

    dynamic? operator [](String key) => entries[key];

    Map<String, dynamic> toJson() {
        return {
            'status': status?.toJson(),
            ...entries.map((key, value) => MapEntry(key, value)),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          status,
          entries,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Checks&#x2F;createRequest
            && status == other.status
            && mapsEqual(entries, other.entries)
        ;
    }
}
