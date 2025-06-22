import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/topic-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_aliases_inner.dart';
import 'package:github/model/topic-search-result-item_aliases_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner.dart';
import 'package:github/model/topic-search-result-item_related_inner_topic_relation.dart';
import 'package:github/model/topic-search-result-item_aliases_inner.dart';
import 'package:github/model/topic-search-result-item_aliases_inner_topic_relation.dart';
@immutable
class Topic-search-result-item {
    Topic-search-result-item(
        { required this.name,required this.display_name,required this.short_description,required this.description,required this.created_by,required this.released,required this.created_at,required this.updated_at,required this.featured,required this.curated,required this.score, this.repository_count, this.logo_url, this.text_matches = const [], this.related = const [], this.aliases = const [],
         }
    );

    factory Topic-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return Topic-search-result-item(
            name: json['name'] as String ,
            display_name: json['display_name'] as String ,
            short_description: json['short_description'] as String ,
            description: json['description'] as String ,
            created_by: json['created_by'] as String ,
            released: json['released'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            featured: (json['featured'] as bool) ,
            curated: (json['curated'] as bool) ,
            score: (json['score'] as num).toDouble() ,
            repository_count: (json['repository_count'] as int?).toInt() ,
            logo_url: json['logo_url'] as String? ,
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            related: (json['related'] as List?)?.map<Topic-search-result-itemRelatedInner>((e) => Topic-search-result-itemRelatedInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            aliases: (json['aliases'] as List?)?.map<Topic-search-result-itemAliasesInner>((e) => Topic-search-result-itemAliasesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Topic-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Topic-search-result-item.fromJson(json);
    }

    final String  name;
    final String  display_name;
    final String  short_description;
    final String  description;
    final String  created_by;
    final String  released;
    final DateTime  created_at;
    final DateTime  updated_at;
    final bool  featured;
    final bool  curated;
    final double  score;
    final  int? repository_count;
    final  String? logo_url;
    final  List<Search-result-text-matchesInner>? text_matches;
    final  List<Topic-search-result-itemRelatedInner>? related;
    final  List<Topic-search-result-itemAliasesInner>? aliases;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'display_name': display_name,
            'short_description': short_description,
            'description': description,
            'created_by': created_by,
            'released': released,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'featured': featured,
            'curated': curated,
            'score': score,
            'repository_count': repository_count,
            'logo_url': logo_url,
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
            'related': related?.map((e) => e.toJson()).toList(),
            'aliases': aliases?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          display_name,
          short_description,
          description,
          created_by,
          released,
          created_at,
          updated_at,
          featured,
          curated,
          score,
          repository_count,
          logo_url,
          text_matches,
          related,
          aliases,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Topic-search-result-item
            && name == other.name
            && display_name == other.display_name
            && short_description == other.short_description
            && description == other.description
            && created_by == other.created_by
            && released == other.released
            && created_at == other.created_at
            && updated_at == other.updated_at
            && featured == other.featured
            && curated == other.curated
            && score == other.score
            && repository_count == other.repository_count
            && logo_url == other.logo_url
            && listsEqual(text_matches, other.text_matches)
            && listsEqual(related, other.related)
            && listsEqual(aliases, other.aliases)
        ;
    }
}
