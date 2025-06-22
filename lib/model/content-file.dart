import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
import 'package:github/model/content-file.dart';
import 'package:github/model/content-file_type.dart';
import 'package:github/model/content-file_links.dart';
@immutable
class Content-file {
    Content-file(
        { required this.type,required this.encoding,required this.size,required this.name,required this.path,required this.content,required this.sha,required this.url,required this.git_url,required this.html_url,required this.download_url,required this._links, this.target, this.submodule_git_url,
         }
    );

    factory Content-file.fromJson(Map<String, dynamic>
        json) {
        return Content-file(
            type: Content-fileType.fromJson(json['type'] as String) ,
            encoding: json['encoding'] as String ,
            size: (json['size'] as int).toInt() ,
            name: json['name'] as String ,
            path: json['path'] as String ,
            content: json['content'] as String ,
            sha: json['sha'] as String ,
            url: json['url'] as String ,
            git_url: json['git_url'] as String ,
            html_url: json['html_url'] as String ,
            download_url: json['download_url'] as String ,
            _links: Content-fileLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            target: json['target'] as String? ,
            submodule_git_url: json['submodule_git_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-file? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Content-file.fromJson(json);
    }

    final Content-fileType  type;
    final String  encoding;
    final int  size;
    final String  name;
    final String  path;
    final String  content;
    final String  sha;
    final String  url;
    final String  git_url;
    final String  html_url;
    final String  download_url;
    final Content-fileLinks  _links;
    final  String? target;
    final  String? submodule_git_url;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'encoding': encoding,
            'size': size,
            'name': name,
            'path': path,
            'content': content,
            'sha': sha,
            'url': url,
            'git_url': git_url,
            'html_url': html_url,
            'download_url': download_url,
            '_links': _links.toJson(),
            'target': target,
            'submodule_git_url': submodule_git_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          encoding,
          size,
          name,
          path,
          content,
          sha,
          url,
          git_url,
          html_url,
          download_url,
          _links,
          target,
          submodule_git_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Content-file
            && type == other.type
            && encoding == other.encoding
            && size == other.size
            && name == other.name
            && path == other.path
            && content == other.content
            && sha == other.sha
            && url == other.url
            && git_url == other.git_url
            && html_url == other.html_url
            && download_url == other.download_url
            && _links == other._links
            && target == other.target
            && submodule_git_url == other.submodule_git_url
        ;
    }
}
