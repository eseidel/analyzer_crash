import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gists/create_request.dart';
import 'package:github/model/gists/create_request_public.dart';
import 'package:github/model/gists/create_request_public.dart';
import 'package:github/model/gists/create_request.dart';
import 'package:github/model/gists/create_request_public.dart';
import 'package:github/model/gists/create_request_public.dart';
@immutable
class Gists&#x2F;createRequest {
    Gists&#x2F;createRequest(
        {  this.description,required this.files, this.public,
         }
    );

    factory Gists&#x2F;createRequest.fromJson(Map<String, dynamic>
        json) {
        return Gists&#x2F;createRequest(
            description: json['description'] as String? ,
            files: json['files'].map((key, value) => MapEntry(key, Gists/createRequestFiles.fromJson(value as Map<String, dynamic>) )).toMap(),
            public: Gists/createRequestPublic.maybeFromJson(json['public'] as dynamic),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gists&#x2F;createRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gists&#x2F;createRequest.fromJson(json);
    }

    final  String? description;
    final Map<String, Gists/createRequestFiles>  files;
    final  Gists/createRequestPublic? public;


    Map<String, dynamic> toJson() {
        return {
            'description': description,
            'files': files.map((key, value) => MapEntry(key, value.toJson())).toMap(),
            'public': public?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          description,
          files,
          public,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gists&#x2F;createRequest
            && description == other.description
            && mapsEqual(files, other.files)
            && public == other.public
        ;
    }
}
