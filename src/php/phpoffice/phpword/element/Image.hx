package php.phpoffice.phpword.element;

import php.phpoffice.phpword.style.ImageStyle;

/**
 * Image element
 */
@:native("PhpOffice\\PhpWord\\Element\\Image")
extern class Image extends AbstractElement {
	// /**
	//  * Image source type constants
	//  */
	// const SOURCE_LOCAL = 'local'; // Local images
	// const SOURCE_GD = 'gd'; // Generated using GD
	// const SOURCE_ARCHIVE = 'archive'; // Image in archives zip://$archive#$image
	// const SOURCE_STRING = 'string'; // Image from string

	/**
	 * Create new image element
	 *
	 * @param string $source
	 * @param mixed $style
	 * @param bool $watermark
	 * @param string $name
	 *
	 * @throws \PhpOffice\PhpWord\Exception\InvalidImageException
	 * @throws \PhpOffice\PhpWord\Exception\UnsupportedImageTypeException
	 */
	public function new(source:String, style:Any = null, watermark:Bool = false, name:String = null);

	/**
	 * Get Image style
	 *
	 * @return ImageStyle
	 */
	public function getStyle():ImageStyle;

	/**
	 * Get image source
	 *
	 * @return string
	 */
	public function getSource():String;

	/**
	 * Get image source type
	 *
	 * @return string
	 */
	public function getSourceType():String;

	/**
	 * Sets the image name
	 *
	 * @param string $value
	 */
	public function setName(value:String):Void;

	/**
	 * Get image name
	 *
	 * @return null|string
	 */
	public function getName():Null<String>;

	/**
	 * Get image media ID
	 *
	 * @return string
	 */
	public function getMediaId():String;

	/**
	 * Get is watermark
	 *
	 * @return bool
	 */
	public function isWatermark():Bool;

	/**
	 * Set is watermark
	 *
	 * @param bool $value
	 */
	public function setIsWatermark(value:Bool):Void;

	/**
	 * Get image type
	 *
	 * @return string
	 */
	public function getImageType():String;

	/**
	 * Get image create function
	 *
	 * @return string
	 */
	public function getImageCreateFunction():String;

	/**
	 * Get image function
	 *
	 * @return string
	 */
	public function getImageFunction():String;

	/**
	 * Get image extension
	 *
	 * @return string
	 */
	public function getImageExtension():String;

	/**
	 * Get is memory image
	 *
	 * @return bool
	 */
	public function isMemImage():Bool;

	/**
	 * Get target file name
	 *
	 * @return string
	 */
	public function getTarget():String;

	/**
	 * Set target file name.
	 *
	 * @param string $value
	 */
	public function setTarget(value:String):Void;

	/**
	 * Get media index
	 *
	 * @return int
	 */
	public function getMediaIndex():Int;

	/**
	 * Set media index.
	 *
	 * @param int $value
	 */
	public function setMediaIndex(value:Int):Void;

	/**
	 * Get image string data
	 *
	 * @param bool $base64
	 * @return string|null
	 * @since 0.11.0
	 */
	public function getImageStringData(base64:Bool = false):Null<String>;
}
