import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-update-response.dart';
import 'package:github/model/code-scanning-default-setup-update-response.dart';
@immutable
class Code-scanning-default-setup-update-response {
    Code-scanning-default-setup-update-response(
        {  this.run_id, this.run_url,
         }
    );

    factory Code-scanning-default-setup-update-response.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-default-setup-update-response(
            run_id: (json['run_id'] as int?).toInt() ,
            run_url: json['run_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-update-response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-update-response.fromJson(json);
    }

    final  int? run_id;
    final  String? run_url;


    Map<String, dynamic> toJson() {
        return {
            'run_id': run_id,
            'run_url': run_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          run_id,
          run_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-default-setup-update-response
            && run_id == other.run_id
            && run_url == other.run_url
        ;
    }
}
