import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/content-symlink.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_links.dart';
import 'package:github/model/content-symlink.dart';
import 'package:github/model/content-symlink_type.dart';
import 'package:github/model/content-symlink_links.dart';
@immutable
class Content-symlink {
    Content-symlink(
        { required this.type,required this.target,required this.size,required this.name,required this.path,required this.sha,required this.url,required this.git_url,required this.html_url,required this.download_url,required this._links,
         }
    );

    factory Content-symlink.fromJson(Map<String, dynamic>
        json) {
        return Content-symlink(
            type: Content-symlinkType.fromJson(json['type'] as String) ,
            target: json['target'] as String ,
            size: (json['size'] as int).toInt() ,
            name: json['name'] as String ,
            path: json['path'] as String ,
            sha: json['sha'] as String ,
            url: json['url'] as String ,
            git_url: json['git_url'] as String ,
            html_url: json['html_url'] as String ,
            download_url: json['download_url'] as String ,
            _links: Content-symlinkLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Content-symlink? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Content-symlink.fromJson(json);
    }

    final Content-symlinkType  type;
    final String  target;
    final int  size;
    final String  name;
    final String  path;
    final String  sha;
    final String  url;
    final String  git_url;
    final String  html_url;
    final String  download_url;
    final Content-symlinkLinks  _links;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'target': target,
            'size': size,
            'name': name,
            'path': path,
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
          target,
          size,
          name,
          path,
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
        return other is Content-symlink
            && type == other.type
            && target == other.target
            && size == other.size
            && name == other.name
            && path == other.path
            && sha == other.sha
            && url == other.url
            && git_url == other.git_url
            && html_url == other.html_url
            && download_url == other.download_url
            && _links == other._links
        ;
    }
}
