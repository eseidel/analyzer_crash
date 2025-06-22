import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
import 'package:github/model/file-commit_content.dart';
import 'package:github/model/file-commit_content_links.dart';
@immutable
class File-commitContent {
    File-commitContent(
        {  this.name, this.path, this.sha, this.size, this.url, this.html_url, this.git_url, this.download_url, this.type, this._links,
         }
    );

    factory File-commitContent.fromJson(Map<String, dynamic>
        json) {
        return File-commitContent(
            name: json['name'] as String? ,
            path: json['path'] as String? ,
            sha: json['sha'] as String? ,
            size: (json['size'] as int?).toInt() ,
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            git_url: json['git_url'] as String? ,
            download_url: json['download_url'] as String? ,
            type: json['type'] as String? ,
            _links: File-commitContentLinks.maybeFromJson(json['_links'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static File-commitContent? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return File-commitContent.fromJson(json);
    }

    final  String? name;
    final  String? path;
    final  String? sha;
    final  int? size;
    final  String? url;
    final  String? html_url;
    final  String? git_url;
    final  String? download_url;
    final  String? type;
    final  File-commitContentLinks? _links;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'path': path,
            'sha': sha,
            'size': size,
            'url': url,
            'html_url': html_url,
            'git_url': git_url,
            'download_url': download_url,
            'type': type,
            '_links': _links?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          path,
          sha,
          size,
          url,
          html_url,
          git_url,
          download_url,
          type,
          _links,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is File-commitContent
            && name == other.name
            && path == other.path
            && sha == other.sha
            && size == other.size
            && url == other.url
            && html_url == other.html_url
            && git_url == other.git_url
            && download_url == other.download_url
            && type == other.type
            && _links == other._links
        ;
    }
}
