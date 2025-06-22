import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response_page_info.dart';
import 'package:github/model/orgs/list_attestations_bulk200_response_page_info.dart';
@immutable
class Orgs&#x2F;listAttestationsBulk200ResponsePageInfo {
    Orgs&#x2F;listAttestationsBulk200ResponsePageInfo(
        {  this.has_next, this.has_previous, this.next, this.previous,
         }
    );

    factory Orgs&#x2F;listAttestationsBulk200ResponsePageInfo.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;listAttestationsBulk200ResponsePageInfo(
            has_next: (json['has_next'] as bool?) ,
            has_previous: (json['has_previous'] as bool?) ,
            next: json['next'] as String? ,
            previous: json['previous'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;listAttestationsBulk200ResponsePageInfo? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;listAttestationsBulk200ResponsePageInfo.fromJson(json);
    }

    final  bool? has_next;
    final  bool? has_previous;
    final  String? next;
    final  String? previous;


    Map<String, dynamic> toJson() {
        return {
            'has_next': has_next,
            'has_previous': has_previous,
            'next': next,
            'previous': previous,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          has_next,
          has_previous,
          next,
          previous,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;listAttestationsBulk200ResponsePageInfo
            && has_next == other.has_next
            && has_previous == other.has_previous
            && next == other.next
            && previous == other.previous
        ;
    }
}
