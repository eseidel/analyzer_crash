import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issues/add_labels_request.dart';
import 'package:github/model/issues/add_labels_request_labels_inner.dart';
import 'package:github/model/issues/add_labels_request.dart';
import 'package:github/model/issues/add_labels_request_labels_inner.dart';
@immutable
class Issues&#x2F;addLabelsRequest {
    Issues&#x2F;addLabelsRequest(
        {  this.labels = const [],
         }
    );

    factory Issues&#x2F;addLabelsRequest.fromJson(Map<String, dynamic>
        json) {
        return Issues&#x2F;addLabelsRequest(
            labels: (json['labels'] as List?)?.map<Issues/addLabelsRequestLabelsInner>((e) => Issues/addLabelsRequestLabelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issues&#x2F;addLabelsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issues&#x2F;addLabelsRequest.fromJson(json);
    }

    final  List<Issues/addLabelsRequestLabelsInner>? labels;


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
        return other is Issues&#x2F;addLabelsRequest
            && listsEqual(labels, other.labels)
        ;
    }
}
