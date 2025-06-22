import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page-build-status.dart';
import 'package:github/model/page-build-status.dart';
@immutable
class Page-build-status {
    Page-build-status(
        { required this.url,required this.status,
         }
    );

    factory Page-build-status.fromJson(Map<String, dynamic>
        json) {
        return Page-build-status(
            url: json['url'] as String ,
            status: json['status'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Page-build-status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Page-build-status.fromJson(json);
    }

    final String  url;
    final String  status;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'status': status,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          status,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Page-build-status
            && url == other.url
            && status == other.status
        ;
    }
}
