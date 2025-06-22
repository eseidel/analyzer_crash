import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Search-result-text-matchesInner {
    Search-result-text-matchesInner(
        {  this.object_url, this.object_type, this.property, this.fragment, this.matches = const [],
         }
    );

    factory Search-result-text-matchesInner.fromJson(Map<String, dynamic>
        json) {
        return Search-result-text-matchesInner(
            object_url: json['object_url'] as String? ,
            object_type: json['object_type'] as String? ,
            property: json['property'] as String? ,
            fragment: json['fragment'] as String? ,
            matches: (json['matches'] as List?)?.map<Search-result-text-matchesInnerMatchesInner>((e) => Search-result-text-matchesInnerMatchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search-result-text-matchesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Search-result-text-matchesInner.fromJson(json);
    }

    final  String? object_url;
    final  String? object_type;
    final  String? property;
    final  String? fragment;
    final  List<Search-result-text-matchesInnerMatchesInner>? matches;


    Map<String, dynamic> toJson() {
        return {
            'object_url': object_url,
            'object_type': object_type,
            'property': property,
            'fragment': fragment,
            'matches': matches?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          object_url,
          object_type,
          property,
          fragment,
          matches,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Search-result-text-matchesInner
            && object_url == other.object_url
            && object_type == other.object_type
            && property == other.property
            && fragment == other.fragment
            && listsEqual(matches, other.matches)
        ;
    }
}
