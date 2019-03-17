package php.phpoffice.phpword.style;

import php.phpoffice.phpword.style.Frame.HPosType;
import php.phpoffice.phpword.style.Frame.HPosRelType;
import php.phpoffice.phpword.style.Frame.VPosType;
import php.phpoffice.phpword.style.Frame.VPosRelType;
import php.phpoffice.phpword.style.Frame.WrapType;

/**
 * Image and memory image style
 */
@:native("PhpOffice\\PhpWord\\Style\\Image")
extern class ImageStyle extends Frame {
	/**
	 * Create new instance
	 */
	public function new();

	/**
	 * Get margin top
	 *
	 * @return int|float
	 */
	public function getMarginTop():EitherType<Int, Float>;

	/**
	 * Set margin top
	 *
	 * @ignoreScrutinizerPatch
	 * @param int|float $value
	 * @return self
	 */
	public function setMarginTop(value:EitherType<Int, Float> = 0):ImageStyle;

	/**
	 * Get margin left
	 *
	 * @return int|float
	 */
	public function getMarginLeft():EitherType<Int, Float>;

	/**
	 * Set margin left
	 *
	 * @ignoreScrutinizerPatch
	 * @param int|float $value
	 * @return self
	 */
	public function setMarginLeft(value:EitherType<Int, Float> = 0):ImageStyle;

	/**
	 * Get wrapping style
	 *
	 * @return string
	 */
	public function getWrappingStyle():WrapType;

	/**
	 * Set wrapping style
	 *
	 * @param string $wrappingStyle
	 *
	 * @throws \InvalidArgumentException
	 *
	 * @return self
	 */
	public function setWrappingStyle(wrappingStyle:WrapType):ImageStyle;

	/**
	 * Get positioning type
	 *
	 * @return string
	 */
	public function getPositioning():String;

	/**
	 * Set positioning type
	 *
	 * @param string $positioning
	 *
	 * @throws \InvalidArgumentException
	 *
	 * @return self
	 */
	public function setPositioning(positioning:String):ImageStyle;

	/**
	 * Get horizontal alignment
	 *
	 * @return string
	 */
	public function getPosHorizontal():HPosType;

	/**
	 * Set horizontal alignment
	 *
	 * @param string $alignment
	 *
	 * @throws \InvalidArgumentException
	 *
	 * @return self
	 */
	public function setPosHorizontal(alignment:HPosType):ImageStyle;

	/**
	 * Get vertical alignment
	 *
	 * @return string
	 */
	public function getPosVertical():VPosType;

	/**
	 * Set vertical alignment
	 *
	 * @param string $alignment
	 *
	 * @throws \InvalidArgumentException
	 *
	 * @return self
	 */
	public function setPosVertical(alignment:VPosType):ImageStyle;

	/**
	 * Get horizontal relation
	 *
	 * @return string
	 */
	public function getPosHorizontalRel():HPosRelType;

	/**
	 * Set horizontal relation
	 *
	 * @param string $relto
	 *
	 * @throws \InvalidArgumentException
	 *
	 * @return self
	 */
	public function setPosHorizontalRel(relto:HPosRelType):ImageStyle;

	/**
	 * Get vertical relation
	 *
	 * @return string
	 */
	public function getPosVerticalRel():VPosRelType;

	/**
	 * Set vertical relation
	 *
	 * @param string $relto
	 *
	 * @throws \InvalidArgumentException
	 *
	 * @return self
	 */
	public function setPosVerticalRel(relto:VPosRelType):ImageStyle;
}
