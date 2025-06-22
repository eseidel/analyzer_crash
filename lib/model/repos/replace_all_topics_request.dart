import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/replace_all_topics_request.dart';
import 'package:github/model/repos/replace_all_topics_request.dart';
@immutable
class Repos&#x2F;replaceAllTopicsRequest {
    Repos&#x2F;replaceAllTopicsRequest(
        {  this.names = const [],
         }
    );

    factory Repos&#x2F;replaceAllTopicsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;replaceAllTopicsRequest(
            names: (json['names'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;replaceAllTopicsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;replaceAllTopicsRequest.fromJson(json);
    }

    final List<String>  names;


    Map<String, dynamic> toJson() {
        return {
            'names': names,
        };
    }

    @override
    int get hashCode =>
          names.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;replaceAllTopicsRequest
            && listsEqual(names, other.names)
        ;
    }
}
