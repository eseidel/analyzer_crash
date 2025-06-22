import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-search-result-item.dart';
import 'package:github/model/commit-search-result-item_commit.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_parents_inner.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/commit-search-result-item.dart';
import 'package:github/model/commit-search-result-item_commit.dart';
import 'package:github/model/commit-search-result-item_commit_author.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit-search-result-item_parents_inner.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
@immutable
class Commit-search-result-item {
    Commit-search-result-item(
        { required this.url,required this.sha,required this.html_url,required this.comments_url,required this.commit,required this.author,required this.committer, this.parents = const [],required this.repository,required this.score,required this.node_id, this.text_matches = const [],
         }
    );

    factory Commit-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return Commit-search-result-item(
            url: json['url'] as String ,
            sha: json['sha'] as String ,
            html_url: json['html_url'] as String ,
            comments_url: json['comments_url'] as String ,
            commit: Commit-search-result-itemCommit.fromJson(json['commit'] as Map<String, dynamic>) ,
            author: Nullable-simple-user.fromJson(json['author'] as Map<String, dynamic>) ,
            committer: Nullable-git-user.fromJson(json['committer'] as Map<String, dynamic>) ,
            parents: (json['parents'] as List).map<Commit-search-result-itemParentsInner>((e) => Commit-search-result-itemParentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            score: (json['score'] as num).toDouble() ,
            node_id: json['node_id'] as String ,
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-search-result-item.fromJson(json);
    }

    final String  url;
    final String  sha;
    final String  html_url;
    final String  comments_url;
    final Commit-search-result-itemCommit  commit;
    final Nullable-simple-user  author;
    final Nullable-git-user  committer;
    final List<Commit-search-result-itemParentsInner>  parents;
    final Minimal-repository  repository;
    final double  score;
    final String  node_id;
    final  List<Search-result-text-matchesInner>? text_matches;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'sha': sha,
            'html_url': html_url,
            'comments_url': comments_url,
            'commit': commit.toJson(),
            'author': author.toJson(),
            'committer': committer.toJson(),
            'parents': parents.map((e) => e.toJson()).toList(),
            'repository': repository.toJson(),
            'score': score,
            'node_id': node_id,
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          sha,
          html_url,
          comments_url,
          commit,
          author,
          committer,
          parents,
          repository,
          score,
          node_id,
          text_matches,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit-search-result-item
            && url == other.url
            && sha == other.sha
            && html_url == other.html_url
            && comments_url == other.comments_url
            && commit == other.commit
            && author == other.author
            && committer == other.committer
            && listsEqual(parents, other.parents)
            && repository == other.repository
            && score == other.score
            && node_id == other.node_id
            && listsEqual(text_matches, other.text_matches)
        ;
    }
}
