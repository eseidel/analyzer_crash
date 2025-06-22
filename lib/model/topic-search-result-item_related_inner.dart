import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/topic-search-result-item_related_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_related_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
@immutable
class Topic-search-result-itemRelatedInner {
    Topic-search-result-itemRelatedInner(
        {  this.topic_relation,
         }
    );

    factory Topic-search-result-itemRelatedInner.fromJson(Map<String, dynamic>
        json) {
        return Topic-search-result-itemRelatedInner(
            topic_relation: Topic-search-result-itemRelatedInnerTopicRelation.maybeFromJson(json['topic_relation'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Topic-search-result-itemRelatedInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Topic-search-result-itemRelatedInner.fromJson(json);
    }

    final  Topic-search-result-itemRelatedInnerTopicRelation? topic_relation;


    Map<String, dynamic> toJson() {
        return {
            'topic_relation': topic_relation?.toJson(),
        };
    }

    @override
    int get hashCode =>
          topic_relation.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Topic-search-result-itemRelatedInner
            && topic_relation == other.topic_relation
        ;
    }
}
