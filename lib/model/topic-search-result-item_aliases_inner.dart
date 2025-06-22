import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/topic-search-result-item_aliases_inner.dart';
import 'package:github/model/topic-search-result-item_aliases_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_aliases_inner.dart';
import 'package:github/model/topic-search-result-item_aliases_inner_topic_relation.dart';
@immutable
class Topic-search-result-itemAliasesInner {
    Topic-search-result-itemAliasesInner(
        {  this.topic_relation,
         }
    );

    factory Topic-search-result-itemAliasesInner.fromJson(Map<String, dynamic>
        json) {
        return Topic-search-result-itemAliasesInner(
            topic_relation: Topic-search-result-itemAliasesInnerTopicRelation.maybeFromJson(json['topic_relation'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Topic-search-result-itemAliasesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Topic-search-result-itemAliasesInner.fromJson(json);
    }

    final  Topic-search-result-itemAliasesInnerTopicRelation? topic_relation;


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
        return other is Topic-search-result-itemAliasesInner
            && topic_relation == other.topic_relation
        ;
    }
}
