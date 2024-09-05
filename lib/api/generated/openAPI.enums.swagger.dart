import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum CreateChatRequestServiceKind {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('INSECT_CONTROL')
  insectControl('INSECT_CONTROL');

  final String? value;

  const CreateChatRequestServiceKind(this.value);
}

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
