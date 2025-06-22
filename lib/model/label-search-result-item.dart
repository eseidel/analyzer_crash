import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/label-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/label-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Label-search-result-item {
    Label-search-result-item(
        { required this.id,required this.node_id,required this.url,required this.name,required this.color,required this.default,required this.description,required this.score, this.text_matches = const [],
         }
    );

    factory Label-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return Label-search-result-item(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            name: json['name'] as String ,
            color: json['color'] as String ,
            default: (json['default'] as bool) ,
            description: json['description'] as String ,
            score: (json['score'] as num).toDouble() ,
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Label-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Label-search-result-item.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final String  name;
    final String  color;
    final bool  default;
    final String  description;
    final double  score;
    final  List<Search-result-text-matchesInner>? text_matches;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'name': name,
            'color': color,
            'default': default,
            'description': description,
            'score': score,
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          name,
          color,
          default,
          description,
          score,
          text_matches,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Label-search-result-item
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && name == other.name
            && color == other.color
            && default == other.default
            && description == other.description
            && score == other.score
            && listsEqual(text_matches, other.text_matches)
        ;
    }
}
