import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Commit {
    Commit(
        { required this.url,required this.sha,required this.node_id,required this.html_url,required this.comments_url,required this.commit,required this.author,required this.committer, this.parents = const [], this.stats, this.files = const [],
         }
    );

    factory Commit.fromJson(Map<String, dynamic>
        json) {
        return Commit(
            url: json['url'] as String ,
            sha: json['sha'] as String ,
            node_id: json['node_id'] as String ,
            html_url: json['html_url'] as String ,
            comments_url: json['comments_url'] as String ,
            commit: CommitCommit.fromJson(json['commit'] as Map<String, dynamic>) ,
            author: CommitAuthor.fromJson(json['author'] as dynamic),
            committer: CommitCommitter.fromJson(json['committer'] as dynamic),
            parents: (json['parents'] as List).map<CommitParentsInner>((e) => CommitParentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            stats: CommitStats.maybeFromJson(json['stats'] as Map<String, dynamic>?) ,
            files: (json['files'] as List?)?.map<Diff-entry>((e) => Diff-entry.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit.fromJson(json);
    }

    final String  url;
    final String  sha;
    final String  node_id;
    final String  html_url;
    final String  comments_url;
    final CommitCommit  commit;
    final CommitAuthor  author;
    final CommitCommitter  committer;
    final List<CommitParentsInner>  parents;
    final  CommitStats? stats;
    final  List<Diff-entry>? files;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'sha': sha,
            'node_id': node_id,
            'html_url': html_url,
            'comments_url': comments_url,
            'commit': commit.toJson(),
            'author': author.toJson(),
            'committer': committer.toJson(),
            'parents': parents.map((e) => e.toJson()).toList(),
            'stats': stats?.toJson(),
            'files': files?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          sha,
          node_id,
          html_url,
          comments_url,
          commit,
          author,
          committer,
          parents,
          stats,
          files,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit
            && url == other.url
            && sha == other.sha
            && node_id == other.node_id
            && html_url == other.html_url
            && comments_url == other.comments_url
            && commit == other.commit
            && author == other.author
            && committer == other.committer
            && listsEqual(parents, other.parents)
            && stats == other.stats
            && listsEqual(files, other.files)
        ;
    }
}
