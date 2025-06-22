import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-committed-event.dart';
import 'package:github/model/timeline-committed-event_author.dart';
import 'package:github/model/timeline-committed-event_committer.dart';
import 'package:github/model/timeline-committed-event_tree.dart';
import 'package:github/model/timeline-committed-event_parents_inner.dart';
import 'package:github/model/timeline-committed-event_verification.dart';
import 'package:github/model/timeline-committed-event.dart';
import 'package:github/model/timeline-committed-event_author.dart';
import 'package:github/model/timeline-committed-event_committer.dart';
import 'package:github/model/timeline-committed-event_tree.dart';
import 'package:github/model/timeline-committed-event_parents_inner.dart';
import 'package:github/model/timeline-committed-event_verification.dart';
@immutable
class Timeline-committed-event {
    Timeline-committed-event(
        {  this.event,required this.sha,required this.node_id,required this.url,required this.author,required this.committer,required this.message,required this.tree, this.parents = const [],required this.verification,required this.html_url,
         }
    );

    factory Timeline-committed-event.fromJson(Map<String, dynamic>
        json) {
        return Timeline-committed-event(
            event: json['event'] as String? ,
            sha: json['sha'] as String ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            author: Timeline-committed-eventAuthor.fromJson(json['author'] as Map<String, dynamic>) ,
            committer: Timeline-committed-eventCommitter.fromJson(json['committer'] as Map<String, dynamic>) ,
            message: json['message'] as String ,
            tree: Timeline-committed-eventTree.fromJson(json['tree'] as Map<String, dynamic>) ,
            parents: (json['parents'] as List).map<Timeline-committed-eventParentsInner>((e) => Timeline-committed-eventParentsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            verification: Timeline-committed-eventVerification.fromJson(json['verification'] as Map<String, dynamic>) ,
            html_url: json['html_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-committed-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-committed-event.fromJson(json);
    }

    final  String? event;
    final String  sha;
    final String  node_id;
    final String  url;
    final Timeline-committed-eventAuthor  author;
    final Timeline-committed-eventCommitter  committer;
    final String  message;
    final Timeline-committed-eventTree  tree;
    final List<Timeline-committed-eventParentsInner>  parents;
    final Timeline-committed-eventVerification  verification;
    final String  html_url;


    Map<String, dynamic> toJson() {
        return {
            'event': event,
            'sha': sha,
            'node_id': node_id,
            'url': url,
            'author': author.toJson(),
            'committer': committer.toJson(),
            'message': message,
            'tree': tree.toJson(),
            'parents': parents.map((e) => e.toJson()).toList(),
            'verification': verification.toJson(),
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          event,
          sha,
          node_id,
          url,
          author,
          committer,
          message,
          tree,
          parents,
          verification,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-committed-event
            && event == other.event
            && sha == other.sha
            && node_id == other.node_id
            && url == other.url
            && author == other.author
            && committer == other.committer
            && message == other.message
            && tree == other.tree
            && listsEqual(parents, other.parents)
            && verification == other.verification
            && html_url == other.html_url
        ;
    }
}
