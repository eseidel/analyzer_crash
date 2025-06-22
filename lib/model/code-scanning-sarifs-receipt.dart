import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-sarifs-receipt.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-sarifs-receipt.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
@immutable
class Code-scanning-sarifs-receipt {
    Code-scanning-sarifs-receipt(
        {  this.id, this.url,
         }
    );

    factory Code-scanning-sarifs-receipt.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-sarifs-receipt(
            id: Code-scanning-analysis-sarif-id((json['id'] as String?) ),
            url: json['url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-sarifs-receipt? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-sarifs-receipt.fromJson(json);
    }

    final  Code-scanning-analysis-sarif-id? id;
    final  String? url;


    Map<String, dynamic> toJson() {
        return {
            'id': id?.toJson(),
            'url': url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-sarifs-receipt
            && id == other.id
            && url == other.url
        ;
    }
}
