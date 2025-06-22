import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
@immutable
class Diff-entry {
    Diff-entry(
        { required this.sha,required this.filename,required this.status,required this.additions,required this.deletions,required this.changes,required this.blob_url,required this.raw_url,required this.contents_url, this.patch, this.previous_filename,
         }
    );

    factory Diff-entry.fromJson(Map<String, dynamic>
        json) {
        return Diff-entry(
            sha: json['sha'] as String ,
            filename: json['filename'] as String ,
            status: Diff-entryStatus.fromJson(json['status'] as String) ,
            additions: (json['additions'] as int).toInt() ,
            deletions: (json['deletions'] as int).toInt() ,
            changes: (json['changes'] as int).toInt() ,
            blob_url: json['blob_url'] as String ,
            raw_url: json['raw_url'] as String ,
            contents_url: json['contents_url'] as String ,
            patch: json['patch'] as String? ,
            previous_filename: json['previous_filename'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Diff-entry? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Diff-entry.fromJson(json);
    }

    final String  sha;
    final String  filename;
    final Diff-entryStatus  status;
    final int  additions;
    final int  deletions;
    final int  changes;
    final String  blob_url;
    final String  raw_url;
    final String  contents_url;
    final  String? patch;
    final  String? previous_filename;


    Map<String, dynamic> toJson() {
        return {
            'sha': sha,
            'filename': filename,
            'status': status.toJson(),
            'additions': additions,
            'deletions': deletions,
            'changes': changes,
            'blob_url': blob_url,
            'raw_url': raw_url,
            'contents_url': contents_url,
            'patch': patch,
            'previous_filename': previous_filename,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          sha,
          filename,
          status,
          additions,
          deletions,
          changes,
          blob_url,
          raw_url,
          contents_url,
          patch,
          previous_filename,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Diff-entry
            && sha == other.sha
            && filename == other.filename
            && status == other.status
            && additions == other.additions
            && deletions == other.deletions
            && changes == other.changes
            && blob_url == other.blob_url
            && raw_url == other.raw_url
            && contents_url == other.contents_url
            && patch == other.patch
            && previous_filename == other.previous_filename
        ;
    }
}
