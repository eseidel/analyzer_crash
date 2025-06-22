import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-directory_inner.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_links.dart';
import 'package:github/model/content-directory_inner.dart';
import 'package:github/model/content-directory_inner_type.dart';
import 'package:github/model/content-directory_inner_links.dart';
@immutable
class Content-directoryInner {
    Content-directoryInner(
        { required this.type,required this.size,required this.name,required this.path, this.content,required this.sha,required this.url,required this.git_url,required this.html_url,required this.download_url,required this._links,
         }
    );

    factory Content-directoryInner.fromJson(Map<String, dynamic>
        json) {
        return Content-directoryInner(
            type: Content-directoryInnerType.fromJson(json['type'] as String) ,
            size: (json['size'] as int).toInt() ,
            name: json['name'] as String ,
            path: json['path'] as String ,
            content: json['content'] as String? ,
            sha: json['sha'] as String ,
            url: json['url'] as String ,
            git_url: json['git_url'] as String ,
            html_url: json['html_url'] as String ,
            download_url: json['download_url'] as String ,
            _links: Content-directoryInnerLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-directoryInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Content-directoryInner.fromJson(json);
    }

    final Content-directoryInnerType  type;
    final int  size;
    final String  name;
    final String  path;
    final  String? content;
    final String  sha;
    final String  url;
    final String  git_url;
    final String  html_url;
    final String  download_url;
    final Content-directoryInnerLinks  _links;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
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
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
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
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Content-directoryInner
            && type == other.type
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
        ;
    }
}
