import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-comparison.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit-comparison_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit-comparison.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/commit-comparison_status.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
@immutable
class Commit-comparison {
    Commit-comparison(
        { required this.url,required this.html_url,required this.permalink_url,required this.diff_url,required this.patch_url,required this.base_commit,required this.merge_base_commit,required this.status,required this.ahead_by,required this.behind_by,required this.total_commits, this.commits = const [], this.files = const [],
         }
    );

    factory Commit-comparison.fromJson(Map<String, dynamic>
        json) {
        return Commit-comparison(
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            permalink_url: json['permalink_url'] as String ,
            diff_url: json['diff_url'] as String ,
            patch_url: json['patch_url'] as String ,
            base_commit: Commit.fromJson(json['base_commit'] as Map<String, dynamic>) ,
            merge_base_commit: Commit.fromJson(json['merge_base_commit'] as Map<String, dynamic>) ,
            status: Commit-comparisonStatus.fromJson(json['status'] as String) ,
            ahead_by: (json['ahead_by'] as int).toInt() ,
            behind_by: (json['behind_by'] as int).toInt() ,
            total_commits: (json['total_commits'] as int).toInt() ,
            commits: (json['commits'] as List).map<Commit>((e) => Commit.fromJson(e as Map<String, dynamic>) ).toList() ,
            files: (json['files'] as List?)?.map<Diff-entry>((e) => Diff-entry.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-comparison? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-comparison.fromJson(json);
    }

    final String  url;
    final String  html_url;
    final String  permalink_url;
    final String  diff_url;
    final String  patch_url;
    final Commit  base_commit;
    final Commit  merge_base_commit;
    final Commit-comparisonStatus  status;
    final int  ahead_by;
    final int  behind_by;
    final int  total_commits;
    final List<Commit>  commits;
    final  List<Diff-entry>? files;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'html_url': html_url,
            'permalink_url': permalink_url,
            'diff_url': diff_url,
            'patch_url': patch_url,
            'base_commit': base_commit.toJson(),
            'merge_base_commit': merge_base_commit.toJson(),
            'status': status.toJson(),
            'ahead_by': ahead_by,
            'behind_by': behind_by,
            'total_commits': total_commits,
            'commits': commits.map((e) => e.toJson()).toList(),
            'files': files?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          html_url,
          permalink_url,
          diff_url,
          patch_url,
          base_commit,
          merge_base_commit,
          status,
          ahead_by,
          behind_by,
          total_commits,
          commits,
          files,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit-comparison
            && url == other.url
            && html_url == other.html_url
            && permalink_url == other.permalink_url
            && diff_url == other.diff_url
            && patch_url == other.patch_url
            && base_commit == other.base_commit
            && merge_base_commit == other.merge_base_commit
            && status == other.status
            && ahead_by == other.ahead_by
            && behind_by == other.behind_by
            && total_commits == other.total_commits
            && listsEqual(commits, other.commits)
            && listsEqual(files, other.files)
        ;
    }
}
