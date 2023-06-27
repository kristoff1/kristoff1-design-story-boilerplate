library design;

//Images
export 'src/atoms/images/base_images.dart';
export 'src/atoms/images/image_types.dart';
export 'src/atoms/images/dominant_image.dart';
export 'src/atoms/images/hero_image_captioned.dart';

//Widgets
export 'src/components/multi_widgets/bi_widgets.dart';

//Numbers
export 'src/atoms/numbers/circle_number_widget.dart';
export 'src/atoms/numbers/square_number_widget.dart';

//Ratings
export 'src/atoms/ratings/single_icon_rating.dart';
export 'src/atoms/ratings/double_icon_rating.dart';
export 'src/atoms/ratings/non_limited_rating.dart';
export 'src/atoms/ratings/svg_single_icon_rating.dart';
export 'src/atoms/ratings/svg_double_icon_rating.dart';
export 'src/atoms/ratings/svg_non_limited_rating.dart';

//Texts Widgets
export 'src/components/text_widgets/titled_texts.dart';
export 'src/components/text_widgets/numbered_text.dart';
export 'src/components/text_widgets/numbered_and_titled_text.dart';
export 'src/components/text_widgets/side_numbered_titled_text.dart';

//Texted Images
export 'src/components/texted_images/left_image_right_text.dart';
export 'src/components/texted_images/right_image_left_text.dart';
export 'src/components/texted_images/bottom_caption_image.dart';
export 'src/components/multi_images/bi_images.dart';
export 'src/components/multi_images/tri_images_right_to_left.dart';
export 'src/components/multi_images/tri_images_left_to_right.dart';
export 'src/components/multi_images/tri_images_top_to_bottom.dart';
export 'src/components/multi_images/tri_images_bottom_to_top.dart';
export 'src/components/multi_images/quad_images.dart';
export 'src/components/multi_images/star_images.dart';

//Widget And Images
export 'src/components/paired_images/left_image_right_widget.dart';
export 'src/components/paired_images/right_image_left_widget.dart';


/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
