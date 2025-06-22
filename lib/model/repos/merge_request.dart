import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/merge_request.dart';
import 'package:github/model/repos/merge_request.dart';
@immutable
class Repos&#x2F;mergeRequest {
    Repos&#x2F;mergeRequest(
        { required this.base,required this.head, this.commit_message,
         }
    );

    factory Repos&#x2F;mergeRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;mergeRequest(
            base: json['base'] as String ,
            head: json['head'] as String ,
            commit_message: json['commit_message'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;mergeRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;mergeRequest.fromJson(json);
    }

    final String  base;
    final String  head;
    final  String? commit_message;


    Map<String, dynamic> toJson() {
        return {
            'base': base,
            'head': head,
            'commit_message': commit_message,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          base,
          head,
          commit_message,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;mergeRequest
            && base == other.base
            && head == other.head
            && commit_message == other.commit_message
        ;
    }
}
