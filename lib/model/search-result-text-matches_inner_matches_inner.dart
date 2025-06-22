import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Search-result-text-matchesInnerMatchesInner {
    Search-result-text-matchesInnerMatchesInner(
        {  this.text, this.indices = const [],
         }
    );

    factory Search-result-text-matchesInnerMatchesInner.fromJson(Map<String, dynamic>
        json) {
        return Search-result-text-matchesInnerMatchesInner(
            text: json['text'] as String? ,
            indices: (json['indices'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search-result-text-matchesInnerMatchesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Search-result-text-matchesInnerMatchesInner.fromJson(json);
    }

    final  String? text;
    final  List<int>? indices;


    Map<String, dynamic> toJson() {
        return {
            'text': text,
            'indices': indices,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          text,
          indices,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Search-result-text-matchesInnerMatchesInner
            && text == other.text
            && listsEqual(indices, other.indices)
        ;
    }
}
