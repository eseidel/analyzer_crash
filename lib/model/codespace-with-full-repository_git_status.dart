import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-with-full-repository_git_status.dart';
import 'package:github/model/codespace-with-full-repository_git_status.dart';
@immutable
class Codespace-with-full-repositoryGitStatus {
    Codespace-with-full-repositoryGitStatus(
        {  this.ahead, this.behind, this.has_unpushed_changes, this.has_uncommitted_changes, this.ref,
         }
    );

    factory Codespace-with-full-repositoryGitStatus.fromJson(Map<String, dynamic>
        json) {
        return Codespace-with-full-repositoryGitStatus(
            ahead: (json['ahead'] as int?).toInt() ,
            behind: (json['behind'] as int?).toInt() ,
            has_unpushed_changes: (json['has_unpushed_changes'] as bool?) ,
            has_uncommitted_changes: (json['has_uncommitted_changes'] as bool?) ,
            ref: json['ref'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-with-full-repositoryGitStatus? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespace-with-full-repositoryGitStatus.fromJson(json);
    }

    final  int? ahead;
    final  int? behind;
    final  bool? has_unpushed_changes;
    final  bool? has_uncommitted_changes;
    final  String? ref;


    Map<String, dynamic> toJson() {
        return {
            'ahead': ahead,
            'behind': behind,
            'has_unpushed_changes': has_unpushed_changes,
            'has_uncommitted_changes': has_uncommitted_changes,
            'ref': ref,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          ahead,
          behind,
          has_unpushed_changes,
          has_uncommitted_changes,
          ref,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespace-with-full-repositoryGitStatus
            && ahead == other.ahead
            && behind == other.behind
            && has_unpushed_changes == other.has_unpushed_changes
            && has_uncommitted_changes == other.has_uncommitted_changes
            && ref == other.ref
        ;
    }
}
