import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search/users200_response.dart';
import 'package:github/model/user-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/search/users200_response.dart';
import 'package:github/model/user-search-result-item.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Search&#x2F;users200Response {
    Search&#x2F;users200Response(
        { required this.total_count,required this.incomplete_results, this.items = const [],
         }
    );

    factory Search&#x2F;users200Response.fromJson(Map<String, dynamic>
        json) {
        return Search&#x2F;users200Response(
            total_count: (json['total_count'] as int).toInt() ,
            incomplete_results: (json['incomplete_results'] as bool) ,
            items: (json['items'] as List).map<User-search-result-item>((e) => User-search-result-item.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search&#x2F;users200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Search&#x2F;users200Response.fromJson(json);
    }

    final int  total_count;
    final bool  incomplete_results;
    final List<User-search-result-item>  items;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'incomplete_results': incomplete_results,
            'items': items.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          incomplete_results,
          items,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Search&#x2F;users200Response
            && total_count == other.total_count
            && incomplete_results == other.incomplete_results
            && listsEqual(items, other.items)
        ;
    }
}
