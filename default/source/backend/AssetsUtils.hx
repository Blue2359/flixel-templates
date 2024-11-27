package backend;

/**
 * Provides utility methods for converting relative asset paths.
 */
@:publicFields class AssetsUtils
{
    /**
      * Converts a given path to an image path form.
      * @param source Source path to concatenate image path.
      * @return Converted image path form.
     */
    static function IMAGE(source:String):String
        return images + source + '.png';

	/**
      * Converts a given path to an audio path form.
      * @param source Source path to concatenate audio path.
      * @param type The audio file extension type.
      * @return Converted audio path form.
     */
	static function AUDIO(source:String, type:String = "wav"):String
        return audio + source + '.$type';

	 /**
      * Converts a given path to a font path form.
      * @param source Source path to concatenate font path.
      * @param type The font file extension type.
      * @return Converted font path form.
     */
	static function FONT(source:String, type:String = "ttf"):String
        return fonts + source + '.$type';
 
    /**
       * Converts a given path to a data path form with the data file extension.
       * @param source Source path to concatenate data path.
       * @param type The data file extension type.
       * @return Converted data path form.
     */
    static function DATA(source:String, type:String):String
        return assets + source + '.$type';

    /**
      * Converts a given path to a 3D model path form.
      * @param source Source path to concatenate 3D model path.
      * @param type The 3D model file extension type.
      * @return Converted 3D model path form.
     */
	static function MODEL(source:String, type:String = "dae"):String
        return models + source + '.$type';
   
    /**
       * Replaces parts in the given path where the `%here` regex is placed.
       * @param source The source path string to be replaced.
       * @param replace The replacement string for the `%here` regex.
       * @return Replaced `%here` regex in the replaced string.
     */
    static function replaceByRegex(source:String, replace:String):String
        return source.replace("%here", replace);
}

/**
 * Represents the class types for the local asset
 * directory points.
 * 
 * *(Values are constant..!)*
 */
enum abstract AssetClassType(String) {
    /**
     * Represents the starting point
     * path for the local assets
     * directory.
     */
    final assets = "assets/";
    
    /**
     * Represents the data directory
     * found inside the local assets
     * directory.
     */
    final data = assets + "data/";
    
    /**
     * Represents the images directory
     * found inside the local assets
     * directory.
     */
	final fonts = assets + "fonts/";

	/**
     * Represents the images directory
     * found inside the local assets
     * directory.
     */
	final images = assets + "images/";
	 
	/**
     * Represents the images directory
     * found inside the local assets
     * directory.
     */
    final audio = assets + "audio/";

    /**
     * Represents the models directory
     * found inside the local assets
     * directory.
     */
    final models = assets + "models/";
}