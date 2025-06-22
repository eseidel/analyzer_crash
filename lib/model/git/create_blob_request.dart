import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/git/create_blob_request.dart';
import 'package:github/model/git/create_blob_request.dart';
@immutable
class Git&#x2F;createBlobRequest {
    Git&#x2F;createBlobRequest(
        { required this.content, this.encoding = utf-8,
         }
    );

    factory Git&#x2F;createBlobRequest.fromJson(Map<String, dynamic>
        json) {
        return Git&#x2F;createBlobRequest(
            content: json['content'] as String ,
            encoding: json['encoding'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Git&#x2F;createBlobRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Git&#x2F;createBlobRequest.fromJson(json);
    }

    final String  content;
    final  String? encoding;


    Map<String, dynamic> toJson() {
        return {
            'content': content,
            'encoding': encoding,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          content,
          encoding,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Git&#x2F;createBlobRequest
            && content == other.content
            && encoding == other.encoding
        ;
    }
}
