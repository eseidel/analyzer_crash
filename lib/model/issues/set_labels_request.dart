import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/set_labels_request.dart';
import 'package:github/model/issues/set_labels_request_labels_inner.dart';
import 'package:github/model/issues/set_labels_request.dart';
import 'package:github/model/issues/set_labels_request_labels_inner.dart';
@immutable
class Issues&#x2F;setLabelsRequest {
    Issues&#x2F;setLabelsRequest(
        {  this.labels = const [],
         }
    );

    factory Issues&#x2F;setLabelsRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;setLabelsRequest(
            labels: (json['labels'] as List?)?.map<Issues/setLabelsRequestLabelsInner>((e) => Issues/setLabelsRequestLabelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;setLabelsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;setLabelsRequest.fromJson(json);
    }

    final  List<Issues/setLabelsRequestLabelsInner>? labels;


    Map<String, dynamic> toJson() {
        return {
            'labels': labels?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
          labels.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issues&#x2F;setLabelsRequest
            && listsEqual(labels, other.labels)
        ;
    }
}
