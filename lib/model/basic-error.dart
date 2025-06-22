import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
@immutable
class Basic-error {
    Basic-error(
        {  this.message, this.documentation_url, this.url, this.status,
         }
    );

    factory Basic-error.fromJson(Map<String, dynamic>
        json) {
        return Basic-error(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
            url: json['url'] as String? ,
            status: json['status'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Basic-error? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Basic-error.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;
    final  String? url;
    final  String? status;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
            'url': url,
            'status': status,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          documentation_url,
          url,
          status,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Basic-error
            && message == other.message
            && documentation_url == other.documentation_url
            && url == other.url
            && status == other.status
        ;
    }
}
