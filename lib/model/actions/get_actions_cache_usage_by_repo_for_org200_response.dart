import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/get_actions_cache_usage_by_repo_for_org200_response.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
import 'package:github/model/actions/get_actions_cache_usage_by_repo_for_org200_response.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
@immutable
class Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response {
    Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response(
        { required this.total_count, this.repository_cache_usages = const [],
         }
    );

    factory Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response(
            total_count: (json['total_count'] as int).toInt() ,
            repository_cache_usages: (json['repository_cache_usages'] as List).map<Actions-cache-usage-by-repository>((e) => Actions-cache-usage-by-repository.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response.fromJson(json);
    }

    final int  total_count;
    final List<Actions-cache-usage-by-repository>  repository_cache_usages;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'repository_cache_usages': repository_cache_usages.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          repository_cache_usages,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;getActionsCacheUsageByRepoForOrg200Response
            && total_count == other.total_count
            && listsEqual(repository_cache_usages, other.repository_cache_usages)
        ;
    }
}
