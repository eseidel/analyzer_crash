import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:github/api_client.dart';
import 'package:github/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/pulls/list_parameter2.dart';
import 'package:github/model/pulls/list_parameter5.dart';
import 'package:github/model/pulls/list_parameter6.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/pulls/create_request.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pulls/list_review_comments_for_repo_parameter2.dart';
import 'package:github/model/pulls/list_review_comments_for_repo_parameter3.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pulls/update_review_comment_request.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pulls/update_request.dart';
import 'package:github/model/pulls/update_request_state.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/sort.dart';
import 'package:github/model/pulls/list_review_comments_parameter4.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pulls/create_review_comment_request.dart';
import 'package:github/model/pulls/create_review_comment_request_side.dart';
import 'package:github/model/pulls/create_review_comment_request_start_side.dart';
import 'package:github/model/pulls/create_review_comment_request_subject_type.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pulls/create_reply_for_review_comment_request.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
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
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/service_unavailable_response.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/pulls/merge_request.dart';
import 'package:github/model/pulls/merge_request_merge_method.dart';
import 'package:github/model/pull-request-merge-result.dart';
import 'package:github/model/pulls/merge405_response.dart';
import 'package:github/model/pulls/merge409_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-merge-result.dart';
import 'package:github/model/pull-request-review-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-review-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pulls/request_reviewers_request.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/pulls/remove_requested_reviewers_request.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pulls/create_review_request.dart';
import 'package:github/model/pulls/create_review_request_event.dart';
import 'package:github/model/pulls/create_review_request_comments_inner.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pulls/update_review_request.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/review-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/review-comment_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/review-comment_side.dart';
import 'package:github/model/review-comment_start_side.dart';
import 'package:github/model/review-comment_subject_type.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/review-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/review-comment_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/review-comment_side.dart';
import 'package:github/model/review-comment_start_side.dart';
import 'package:github/model/review-comment_subject_type.dart';
import 'package:github/model/pulls/dismiss_review_request.dart';
import 'package:github/model/pulls/dismiss_review_request_event.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pulls/submit_review_request.dart';
import 'package:github/model/pulls/submit_review_request_event.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pulls/update_branch_request.dart';
import 'package:github/model/pulls/update_branch202_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/basic-error.dart';
import 'package:github/model/pulls/update_branch202_response.dart';
class PullsApi {
    PullsApi(ApiClient? client) : client = client ?? ApiClient();

    final ApiClient client;

    Future<List<Pull-request-simple>> pulls/list(
        String owner,
        String repo,
        { Pulls/listParameter2? state = Pulls/listParameter2.open,String? head,String? base,Pulls/listParameter5? sort = Pulls/listParameter5.created,Pulls/listParameter6? direction,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'state': ?state?.toJson().toString(),
                'head': ?head.toString(),
                'base': ?base.toString(),
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Pull-request-simple>((e) => Pull-request-simple.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/list');
    }
    Future<Pull-request> pulls/create(
        String owner,
        String repo,
        Pulls/createRequest pulls/createRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            body: pulls/createRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/create');
    }
    Future<List<Pull-request-review-comment>> pulls/listReviewCommentsForRepo(
        String owner,
        String repo,
        { Pulls/listReviewCommentsForRepoParameter2? sort,Pulls/listReviewCommentsForRepoParameter3? direction,DateTime? since,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
            ,
            queryParameters: {
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'since': ?since?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Pull-request-review-comment>((e) => Pull-request-review-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listReviewCommentsForRepo');
    }
    Future<Pull-request-review-comment> pulls/getReviewComment(
        String owner,
        String repo,
        int commentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/getReviewComment');
    }
    Future<void> pulls/deleteReviewComment(
        String owner,
        String repo,
        int commentId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/deleteReviewComment');
    }
    Future<Pull-request-review-comment> pulls/updateReviewComment(
        String owner,
        String repo,
        int commentId,
        Pulls/updateReviewCommentRequest pulls/updateReviewCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/pulls/comments/{comment_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: pulls/updateReviewCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/updateReviewComment');
    }
    Future<Pull-request> pulls/get(
        String owner,
        String repo,
        int pullNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/get');
    }
    Future<Pull-request> pulls/update(
        String owner,
        String repo,
        int pullNumber,
        { Pulls/updateRequest? pulls/updateRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.patch,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/updateRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/update');
    }
    Future<List<Pull-request-review-comment>> pulls/listReviewComments(
        String owner,
        String repo,
        int pullNumber,
        { Sort? sort = Sort.created,Pulls/listReviewCommentsParameter4? direction,DateTime? since,int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            queryParameters: {
                'sort': ?sort?.toJson().toString(),
                'direction': ?direction?.toJson().toString(),
                'since': ?since?.toIso8601String().toString(),
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Pull-request-review-comment>((e) => Pull-request-review-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listReviewComments');
    }
    Future<Pull-request-review-comment> pulls/createReviewComment(
        String owner,
        String repo,
        int pullNumber,
        Pulls/createReviewCommentRequest pulls/createReviewCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/createReviewCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/createReviewComment');
    }
    Future<Pull-request-review-comment> pulls/createReplyForReviewComment(
        String owner,
        String repo,
        int pullNumber,
        int commentId,
        Pulls/createReplyForReviewCommentRequest pulls/createReplyForReviewCommentRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}/replies'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{comment_id}', "${ commentId }")
            ,
            body: pulls/createReplyForReviewCommentRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review-comment.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/createReplyForReviewComment');
    }
    Future<List<Commit>> pulls/listCommits(
        String owner,
        String repo,
        int pullNumber,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/commits'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Commit>((e) => Commit.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listCommits');
    }
    Future<List<Diff-entry>> pulls/listFiles(
        String owner,
        String repo,
        int pullNumber,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/files'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Diff-entry>((e) => Diff-entry.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listFiles');
    }
    Future<void> pulls/checkIfMerged(
        String owner,
        String repo,
        int pullNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/merge'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/checkIfMerged');
    }
    Future<Pull-request-merge-result> pulls/merge(
        String owner,
        String repo,
        int pullNumber,
        { Pulls/mergeRequest? pulls/mergeRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/merge'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/mergeRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-merge-result.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/merge');
    }
    Future<Pull-request-review-request> pulls/listRequestedReviewers(
        String owner,
        String repo,
        int pullNumber,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review-request.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listRequestedReviewers');
    }
    Future<Pull-request-simple> pulls/requestReviewers(
        String owner,
        String repo,
        int pullNumber,
        { Pulls/requestReviewersRequest? pulls/requestReviewersRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/requestReviewersRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-simple.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/requestReviewers');
    }
    Future<Pull-request-simple> pulls/removeRequestedReviewers(
        String owner,
        String repo,
        int pullNumber,
        Pulls/removeRequestedReviewersRequest pulls/removeRequestedReviewersRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/removeRequestedReviewersRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-simple.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/removeRequestedReviewers');
    }
    Future<List<Pull-request-review>> pulls/listReviews(
        String owner,
        String repo,
        int pullNumber,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Pull-request-review>((e) => Pull-request-review.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listReviews');
    }
    Future<Pull-request-review> pulls/createReview(
        String owner,
        String repo,
        int pullNumber,
        { Pulls/createReviewRequest? pulls/createReviewRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/createReviewRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/createReview');
    }
    Future<Pull-request-review> pulls/getReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId,
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{review_id}', "${ reviewId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/getReview');
    }
    Future<Pull-request-review> pulls/updateReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId,
        Pulls/updateReviewRequest pulls/updateReviewRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{review_id}', "${ reviewId }")
            ,
            body: pulls/updateReviewRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/updateReview');
    }
    Future<Pull-request-review> pulls/deletePendingReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId,
    ) async {
        final response = await client.invokeApi(
            method: Method.delete,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{review_id}', "${ reviewId }")
            ,
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/deletePendingReview');
    }
    Future<List<Review-comment>> pulls/listCommentsForReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId,
        { int? perPage = 30,int? page = 1, }
    ) async {
        final response = await client.invokeApi(
            method: Method.get,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/comments'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{review_id}', "${ reviewId }")
            ,
            queryParameters: {
                'per_page': ?perPage.toString(),
                'page': ?page.toString(),
            },
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return (jsonDecode(response.body) as List).map<Review-comment>((e) => Review-comment.fromJson(e as Map<String, dynamic>) ).toList() ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/listCommentsForReview');
    }
    Future<Pull-request-review> pulls/dismissReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId,
        Pulls/dismissReviewRequest pulls/dismissReviewRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{review_id}', "${ reviewId }")
            ,
            body: pulls/dismissReviewRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/dismissReview');
    }
    Future<Pull-request-review> pulls/submitReview(
        String owner,
        String repo,
        int pullNumber,
        int reviewId,
        Pulls/submitReviewRequest pulls/submitReviewRequest,
    ) async {
        final response = await client.invokeApi(
            method: Method.post,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
                        .replaceAll('{review_id}', "${ reviewId }")
            ,
            body: pulls/submitReviewRequest.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pull-request-review.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/submitReview');
    }
    Future<Pulls/updateBranch202Response> pulls/updateBranch(
        String owner,
        String repo,
        int pullNumber,
        { Pulls/updateBranchRequest? pulls/updateBranchRequest, }
    ) async {
        final response = await client.invokeApi(
            method: Method.put,
            path: '/repos/{owner}/{repo}/pulls/{pull_number}/update-branch'
            .replaceAll('{owner}', "${ owner }")
                        .replaceAll('{repo}', "${ repo }")
                        .replaceAll('{pull_number}', "${ pullNumber }")
            ,
            body: pulls/updateBranchRequest?.toJson(),
        );

        if (response.statusCode >= HttpStatus.badRequest) {
            throw ApiException(response.statusCode, response.body.toString());
        }

        if (response.body.isNotEmpty) {
            return Pulls/updateBranch202Response.fromJson(jsonDecode(response.body) as Map<String, dynamic>) ;
        }

        throw ApiException(response.statusCode, 'Unhandled response from $pulls/updateBranch');
    }
}
