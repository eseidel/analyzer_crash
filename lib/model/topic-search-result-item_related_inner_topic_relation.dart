import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
@immutable
class Topic-search-result-itemRelatedInnerTopicRelation {
    Topic-search-result-itemRelatedInnerTopicRelation(
        {  this.id, this.name, this.topic_id, this.relation_type,
         }
    );

    factory Topic-search-result-itemRelatedInnerTopicRelation.fromJson(Map<String, dynamic>
        json) {
        return Topic-search-result-itemRelatedInnerTopicRelation(
            id: (json['id'] as int?).toInt() ,
            name: json['name'] as String? ,
            topic_id: (json['topic_id'] as int?).toInt() ,
            relation_type: json['relation_type'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Topic-search-result-itemRelatedInnerTopicRelation? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Topic-search-result-itemRelatedInnerTopicRelation.fromJson(json);
    }

    final  int? id;
    final  String? name;
    final  int? topic_id;
    final  String? relation_type;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'topic_id': topic_id,
            'relation_type': relation_type,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          topic_id,
          relation_type,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Topic-search-result-itemRelatedInnerTopicRelation
            && id == other.id
            && name == other.name
            && topic_id == other.topic_id
            && relation_type == other.relation_type
        ;
    }
}
