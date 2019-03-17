package php.phpoffice.phpword.style;

/**
 * Section settings
 */
@:native("PhpOffice\\PhpWord\\Style\\Section")
extern class Section extends Border {
	/**
	 * Create new instance
	 */
	public function new();

	/**
	 * Get paper size
	 *
	 * @return string
	 */
	public function getPaperSize():String;

	/**
	 * Set paper size
	 *
	 * @param string $value
	 * @return self
	 */
	public function setPaperSize(value:String = 'A4'):Section;

	/**
	 * Set Setting Value
	 *
	 * @param string $key
	 * @param string $value
	 * @return self
	 */
	public function setSettingValue(key:String, value:String):Section;

	/**
	 * Set orientation
	 *
	 * @param string $value
	 * @return self
	 */
	public function setOrientation(value:Orientation = null):Section;

	/**
	 * Get Page Orientation
	 *
	 * @return string
	 */
	public function getOrientation():Orientation;

	/**
	 * Set Portrait Orientation
	 *
	 * @return self
	 */
	public function setPortrait():Section;

	/**
	 * Set Landscape Orientation
	 *
	 * @return self
	 */
	public function setLandscape():Section;

	/**
	 * Get Page Size Width
	 *
	 * @return int|float|null
	 *
	 * @since 0.12.0
	 */
	public function getPageSizeW():Null<EitherType<Int, Float>>;

	/**
	 * @param int|float|null $value
	 *
	 * @return \PhpOffice\PhpWord\Style\Section
	 *
	 * @since 0.12.0
	 */
	public function setPageSizeW(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Page Size Height
	 *
	 * @return int|float|null
	 *
	 * @since 0.12.0
	 */
	public function getPageSizeH():Null<EitherType<Int, Float>>;

	/**
	 * @param int|float|null $value
	 *
	 * @return \PhpOffice\PhpWord\Style\Section
	 *
	 * @since 0.12.0
	 */
	public function setPageSizeH(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Margin Top
	 *
	 * @return int|float
	 */
	public function getMarginTop():EitherType<Int, Float>;

	/**
	 * Set Margin Top
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setMarginTop(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Margin Left
	 *
	 * @return int|float
	 */
	public function getMarginLeft():EitherType<Int, Float>;

	/**
	 * Set Margin Left
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setMarginLeft(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Margin Right
	 *
	 * @return int|float
	 */
	public function getMarginRight():EitherType<Int, Float>;

	/**
	 * Set Margin Right
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setMarginRight(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Margin Bottom
	 *
	 * @return int|float
	 */
	public function getMarginBottom():EitherType<Int, Float>;

	/**
	 * Set Margin Bottom
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setMarginBottom(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get gutter
	 *
	 * @return int|float
	 */
	public function getGutter():EitherType<Int, Float>;

	/**
	 * Set gutter
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setGutter(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Header Height
	 *
	 * @return int|float
	 */
	public function getHeaderHeight():EitherType<Int, Float>;

	/**
	 * Set Header Height
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setHeaderHeight(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Footer Height
	 *
	 * @return int|float
	 */
	public function getFooterHeight():EitherType<Int, Float>;

	/**
	 * Set Footer Height
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setFooterHeight(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get page numbering start
	 *
	 * @return null|int
	 */
	public function getPageNumberingStart():Null<Int>;

	/**
	 * Set page numbering start
	 *
	 * @param null|int $pageNumberingStart
	 * @return self
	 */
	public function setPageNumberingStart(pageNumberingStart:Null<Int> = null):Section;

	/**
	 * Get Section Columns Count
	 *
	 * @return int
	 */
	public function getColsNum():Int;

	/**
	 * Set Section Columns Count
	 *
	 * @param int $value
	 * @return self
	 */
	public function setColsNum(value:Null<Int> = null):Section;

	/**
	 * Get Section Space Between Columns
	 *
	 * @return int|float
	 */
	public function getColsSpace():EitherType<Int, Float>;

	/**
	 * Set Section Space Between Columns
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setColsSpace(value:Null<EitherType<Int, Float>> = null):Section;

	/**
	 * Get Break Type
	 *
	 * @return string
	 */
	public function getBreakType():String;

	/**
	 * Set Break Type
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBreakType(value:Null<String> = null):Section;

	/**
	 * Get line numbering
	 *
	 * @return \PhpOffice\PhpWord\Style\LineNumbering
	 */
	public function getLineNumbering():Any;

	/**
	 * Set line numbering
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setLineNumbering(value:Any = null):Section;

	/**
	 * Get vertical alignment
	 *
	 * @return string
	 */
	public function getVAlign():String;

	/**
	 * Set vertical alignment
	 *
	 * @param string $value
	 * @return self
	 */
	public function setVAlign(value:Null<String> = null):Section;
}

/**
 * Page orientation
 *
 * @const string
 */
@:enum abstract Orientation(String) from String to String {
	var Portrait = "portrait";
	var Landscape = "landscape";
}
