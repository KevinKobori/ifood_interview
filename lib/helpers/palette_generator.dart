import 'package:palette_generator/palette_generator.dart';

PaletteGenerator paletteGenerator =
  await PaletteGenerator.fromImageProvider(
NetworkImage(imageUrl),

filters: [],
// Images are square
size: Size(300, 300),

// I want the dominant color of the top left section of the image
region: Offset.zero & Size(40, 40),
); 