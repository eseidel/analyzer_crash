import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/set_labels_request_labels_inner.dart';
import 'package:github/model/issues/set_labels_request_labels_inner.dart';
@immutable
class Issues&#x2F;setLabelsRequestLabelsInner {
    Issues&#x2F;setLabelsRequestLabelsInner(
        { required this.name,
         }
    );

    factory Issues&#x2F;setLabelsRequestLabelsInner.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;setLabelsRequestLabelsInner(
            name: json['name'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;setLabelsRequestLabelsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;setLabelsRequestLabelsInner.fromJson(json);
    }

    final String  name;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
        };
    }

    @override
    int get hashCode =>
          name.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;setLabelsRequestLabelsInner
            && name == other.name
        ;
    }
}
