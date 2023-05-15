package php.phpoffice.phpword.style;

/**
 * Frame defines the size and position of an object
 *
 * Width, height, left/hpos, top/vpos, hrel, vrel, wrap, zindex
 *
 * @since 0.12.0
 * @todo Make existing style (image, textbox, etc) use this style
 */
@:native("PhpOffice\\PhpWord\\Style\\Frame")
extern class Frame extends AbstractStyle {
	/**
	 * Create a new instance
	 *
	 * @param array $style
	 */
	public function new(style:NativeArray = null);

	/**
	 * @since 0.13.0
	 *
	 * @return string
	 */
	public function getAlignment():String;

	/**
	 * @since 0.13.0
	 *
	 * @param string $value
	 *
	 * @return self
	 */
	public function setAlignment(value:String):Frame;

	/**
	 * @deprecated 0.13.0 Use the `getAlignment` method instead.
	 *
	 * @return string
	 *
	 * @codeCoverageIgnore
	 */
	public function getAlign():String;

	/**
	 * @deprecated 0.13.0 Use the `setAlignment` method instead.
	 *
	 * @param string $value
	 *
	 * @return self
	 *
	 * @codeCoverageIgnore
	 */
	public function setAlign(value:String = null):Frame;

	/**
	 * Get unit
	 *
	 * @return string
	 */
	public function getUnit():String;

	/**
	 * Set unit
	 *
	 * @param string $value
	 * @return self
	 */
	public function setUnit(value:String):Frame;

	/**
	 * Get width
	 *
	 * @return int|float
	 */
	public function getWidth():EitherType<Int, Float>;

	/**
	 * Set width
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setWidth(value:Null<EitherType<Int, Float>> = null):Frame;

	/**
	 * Get height
	 *
	 * @return int|float
	 */
	public function getHeight():EitherType<Int, Float>;

	/**
	 * Set height
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setHeight(value:Null<EitherType<Int, Float>> = null):Frame;

	/**
	 * Get left
	 *
	 * @return int|float
	 */
	public function getLeft():EitherType<Int, Float>;

	/**
	 * Set left
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setLeft(value:EitherType<Int, Float> = 0):Frame;

	/**
	 * Get topmost position
	 *
	 * @return int|float
	 */
	public function getTop():EitherType<Int, Float>;

	/**
	 * Set topmost position
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setTop(value:EitherType<Int, Float> = 0):Frame;

	/**
	 * Get position type
	 *
	 * @return string
	 */
	public function getPos():PosType;

	/**
	 * Set position type
	 *
	 * @param string $value
	 * @return self
	 */
	public function setPos(value:PosType):Frame;

	/**
	 * Get horizontal position
	 *
	 * @return string
	 */
	public function getHPos():HPosType;

	/**
	 * Set horizontal position
	 *
	 * @since 0.12.0 "absolute" option is available.
	 *
	 * @param string $value
	 * @return self
	 */
	public function setHPos(value:HPosType):Frame;

	/**
	 * Get vertical position
	 *
	 * @return string
	 */
	public function getVPos():VPosType;

	/**
	 * Set vertical position
	 *
	 * @since 0.12.0 "absolute" option is available.
	 *
	 * @param string $value
	 * @return self
	 */
	public function setVPos(value:VPosType):Frame;

	/**
	 * Get horizontal position relative to
	 *
	 * @return string
	 */
	public function getHPosRelTo():HPosRelType;

	/**
	 * Set horizontal position relative to
	 *
	 * @param string $value
	 * @return self
	 */
	public function setHPosRelTo(value:HPosRelType):Frame;

	/**
	 * Get vertical position relative to
	 *
	 * @return string
	 */
	public function getVPosRelTo():VPosRelType;

	/**
	 * Set vertical position relative to
	 *
	 * @param string $value
	 * @return self
	 */
	public function setVPosRelTo(value:VPosRelType):Frame;

	/**
	 * Get wrap type
	 *
	 * @return string
	 */
	public function getWrap():WrapType;

	/**
	 * Set wrap type
	 *
	 * @param string $value
	 * @return self
	 */
	public function setWrap(value:WrapType):Frame;

	/**
	 * Get top distance from text wrap
	 *
	 * @return float
	 */
	public function getWrapDistanceTop():Float;

	/**
	 * Set top distance from text wrap
	 *
	 * @param int $value
	 * @return self
	 */
	public function setWrapDistanceTop(value:Int = null):Frame;

	/**
	 * Get bottom distance from text wrap
	 *
	 * @return float
	 */
	public function getWrapDistanceBottom():Float;

	/**
	 * Set bottom distance from text wrap
	 *
	 * @param float $value
	 * @return self
	 */
	public function setWrapDistanceBottom(value:Float = null):Frame;

	/**
	 * Get left distance from text wrap
	 *
	 * @return float
	 */
	public function getWrapDistanceLeft():Float;

	/**
	 * Set left distance from text wrap
	 *
	 * @param float $value
	 * @return self
	 */
	public function setWrapDistanceLeft(value:Float = null):Frame;

	/**
	 * Get right distance from text wrap
	 *
	 * @return float
	 */
	public function getWrapDistanceRight():Float;

	/**
	 * Set right distance from text wrap
	 *
	 * @param float $value
	 * @return self
	 */
	public function setWrapDistanceRight(value:Float = null):Frame;

	/**
	 * Get position
	 *
	 * @return int
	 */
	public function getPosition():Int;

	/**
	 * Set position
	 *
	 * @param int $value
	 * @return self
	 */
	public function setPosition(value:Int = null):Frame;
}

/**
 * General positioning options.
 *
 * @const string
 */
enum abstract PosType(String) from String to String {
	var Absolute = "absolute";
	var Relative = "relative";
}

/**
 * Horizontal value
 *
 * @const string
 */
enum abstract HPosType(String) from String to String {
	var Absolute = "absolute";
	var Left = "left";
	var Center = "center";
	var Right = "right";
	var Inside = "inside";
	var Outside = "outside";
}

/**
 * Vertical value
 *
 * @const string
 */
enum abstract VPosType(String) from String to String {
	var Absolute = "absolute";
	var Top = "top";
	var Center = "center";
	var Bottom = "bottom";
	var Inside = "inside";
	var Outside = "outside";
}

/**
 * Position relative to
 *
 * @const string
 */
enum abstract HPosRelType(String) from String to String {
	var Margin = "margin";
	var Page = "page";
	var Column = "column";
	var Char = "char";
	var LeftMargin = "left-margin-area";
	var RightMargin = "right-margin-area";
	var InnerMargin = "inner-margin-area";
	var OuterMargin = "outer-margin-area";
}

/**
 * Position relative to
 *
 * @const string
 */
enum abstract VPosRelType(String) from String to String {
	var Margin = "margin";
	var Page = "page";
	var Text = "text";
	var Line = "line";
	var TopMargin = "top-margin-area";
	var BottomMargin = "bottom-margin-area";
	var InnerMargin = "inner-margin-area";
	var OuterMargin = "outer-margin-area";
}

/**
 * Wrap type
 *
 * @const string
 */
enum abstract WrapType(String) from String to String {
	var Inline = "inline";
	var Square = "square";
	var Tight = "tight";
	var Through = "through";
	var TopBottom = "topAndBottom";
	var Behind = "behind";
	var InFront = "infront";
}
