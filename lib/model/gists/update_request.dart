import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gists/update_request.dart';
import 'package:github/model/gists/update_request.dart';
@immutable
class Gists&#x2F;updateRequest {
    Gists&#x2F;updateRequest(
        {  this.description, this.files,
         }
    );

    factory Gists&#x2F;updateRequest.fromJson(Map<String, dynamic>
        json) {
        return Gists&#x2F;updateRequest(
            description: json['description'] as String? ,
            files: json['files'].map((key, value) => MapEntry(key, Gists/updateRequestFiles.fromJson(value as Map<String, dynamic>) )).toMap(),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gists&#x2F;updateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gists&#x2F;updateRequest.fromJson(json);
    }

    final  String? description;
    final  Map<String, Gists/updateRequestFiles>? files;


    Map<String, dynamic> toJson() {
        return {
            'description': description,
            'files': files.map((key, value) => MapEntry(key, value.toJson())).toMap(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          description,
          files,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gists&#x2F;updateRequest
            && description == other.description
            && mapsEqual(files, other.files)
        ;
    }
}
