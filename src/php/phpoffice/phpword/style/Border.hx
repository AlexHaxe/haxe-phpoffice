package php.phpoffice.phpword.style;

/**
 * Border style
 */
@:native("PhpOffice\\PhpWord\\Style\\Border")
extern class Border extends AbstractStyle {
	/**
	 * Get border size
	 *
	 * @return int[]
	 */
	public function getBorderSize():NativeArray;

	/**
	 * Set border size
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setBorderSize(value:Null<EitherType<Int, Float>> = null):Border;

	/**
	 * Get border color
	 *
	 * @return string[]
	 */
	public function getBorderColor():NativeArray;

	/**
	 * Set border color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderColor(value:Null<String> = null):Border;

	/**
	 * Get border style
	 *
	 * @return string[]
	 */
	public function getBorderStyle():NativeArray;

	/**
	 * Set border style
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderStyle(value:Null<String> = null):Border;

	/**
	 * Get border top size
	 *
	 * @return int|float
	 */
	public function getBorderTopSize():EitherType<Int, Float>;

	/**
	 * Set border top size
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setBorderTopSize(value:Null<EitherType<Int, Float>> = null):Border;

	/**
	 * Get border top color
	 *
	 * @return string
	 */
	public function getBorderTopColor():String;

	/**
	 * Set border top color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderTopColor(value:Null<String> = null):Border;

	/**
	 * Get border top style
	 *
	 * @return string
	 */
	public function getBorderTopStyle():String;

	/**
	 * Set border top Style
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderTopStyle(value:Null<String> = null):Border;

	/**
	 * Get border left size
	 *
	 * @return int|float
	 */
	public function getBorderLeftSize():EitherType<Int, Float>;

	/**
	 * Set border left size
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setBorderLeftSize(value:Null<EitherType<Int, Float>> = null):Border;

	/**
	 * Get border left color
	 *
	 * @return string
	 */
	public function getBorderLeftColor():String;

	/**
	 * Set border left color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderLeftColor(value:Null<String> = null):Border;

	/**
	 * Get border left style
	 *
	 * @return string
	 */
	public function getBorderLeftStyle():String;

	/**
	 * Set border left style
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderLeftStyle(value:Null<String> = null):Border;

	/**
	 * Get border right size
	 *
	 * @return int|float
	 */
	public function getBorderRightSize():EitherType<Int, Float>;

	/**
	 * Set border right size
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setBorderRightSize(value:Null<EitherType<Int, Float>> = null):Border;

	/**
	 * Get border right color
	 *
	 * @return string
	 */
	public function getBorderRightColor():String;

	/**
	 * Set border right color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderRightColor(value:Null<String> = null):Border;

	/**
	 * Get border right style
	 *
	 * @return string
	 */
	public function getBorderRightStyle():String;

	/**
	 * Set border right style
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderRightStyle(value:Null<String> = null):Border;

	/**
	 * Get border bottom size
	 *
	 * @return int|float
	 */
	public function getBorderBottomSize():EitherType<Int, Float>;

	/**
	 * Set border bottom size
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setBorderBottomSize(value:Null<EitherType<Int, Float>> = null):Border;

	/**
	 * Get border bottom color
	 *
	 * @return string
	 */
	public function getBorderBottomColor():String;

	/**
	 * Set border bottom color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderBottomColor(value:Null<String> = null):Border;

	/**
	 * Get border bottom style
	 *
	 * @return string
	 */
	public function getBorderBottomStyle():String;

	/**
	 * Set border bottom style
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderBottomStyle(value:Null<String> = null):Border;

	/**
	 * Check if any of the border is not null
	 *
	 * @return bool
	 */
	public function hasBorder():Bool;
}
