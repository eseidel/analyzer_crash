import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_attestation201_response.dart';
import 'package:github/model/repos/create_attestation201_response.dart';
@immutable
class Repos&#x2F;createAttestation201Response {
    Repos&#x2F;createAttestation201Response(
        {  this.id,
         }
    );

    factory Repos&#x2F;createAttestation201Response.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createAttestation201Response(
            id: (json['id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createAttestation201Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createAttestation201Response.fromJson(json);
    }

    final  int? id;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
        };
    }

    @override
    int get hashCode =>
          id.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createAttestation201Response
            && id == other.id
        ;
    }
}
