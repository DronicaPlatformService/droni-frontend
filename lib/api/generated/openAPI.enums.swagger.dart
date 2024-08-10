import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum ArticleHowToUseSummaryGetArticleTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ALL')
  all('ALL'),
  @JsonValue('USER')
  user('USER'),
  @JsonValue('EXPERT')
  expert('EXPERT');

  final String? value;

  const ArticleHowToUseSummaryGetArticleTarget(this.value);
}

enum ArticleHowToUseListGetArticleTarget {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ALL')
  all('ALL'),
  @JsonValue('USER')
  user('USER'),
  @JsonValue('EXPERT')
  expert('EXPERT');

  final String? value;

  const ArticleHowToUseListGetArticleTarget(this.value);
}
