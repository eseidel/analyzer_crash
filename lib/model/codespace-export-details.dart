import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-export-details.dart';
import 'package:github/model/codespace-export-details.dart';
@immutable
class Codespace-export-details {
    Codespace-export-details(
        {  this.state, this.completed_at, this.branch, this.sha, this.id, this.export_url, this.html_url,
         }
    );

    factory Codespace-export-details.fromJson(Map<String, dynamic>
        json) {
        return Codespace-export-details(
            state: json['state'] as String? ,
            completed_at: maybeParseDateTime(json['completed_at'] as String?) ,
            branch: json['branch'] as String? ,
            sha: json['sha'] as String? ,
            id: json['id'] as String? ,
            export_url: json['export_url'] as String? ,
            html_url: json['html_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-export-details? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespace-export-details.fromJson(json);
    }

    final  String? state;
    final  DateTime? completed_at;
    final  String? branch;
    final  String? sha;
    final  String? id;
    final  String? export_url;
    final  String? html_url;


    Map<String, dynamic> toJson() {
        return {
            'state': state,
            'completed_at': completed_at?.toIso8601String(),
            'branch': branch,
            'sha': sha,
            'id': id,
            'export_url': export_url,
            'html_url': html_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          completed_at,
          branch,
          sha,
          id,
          export_url,
          html_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespace-export-details
            && state == other.state
            && completed_at == other.completed_at
            && branch == other.branch
            && sha == other.sha
            && id == other.id
            && export_url == other.export_url
            && html_url == other.html_url
        ;
    }
}
