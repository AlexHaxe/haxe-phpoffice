package php.phpoffice.phpword.style;

/**
 * Font style
 */
@:native("PhpOffice\\PhpWord\\Style\\Font")
extern class Font extends AbstractStyle {
	/**
	 * Create new font style
	 *
	 * @param string $type Type of font
	 * @param array|string|\PhpOffice\PhpWord\Style\AbstractStyle $paragraph Paragraph styles definition
	 */
	public function new(type:String = "text", paragraph:Any = null);

	/**
	 * Get style values
	 *
	 * @return array
	 * @since 0.12.0
	 */
	public function getStyleValues():NativeArray;

	/**
	 * Get style type
	 *
	 * @return string
	 */
	public function getStyleType():String;

	/**
	 * Get font name
	 *
	 * @return string
	 */
	public function getName():String;

	/**
	 * Set font name
	 *
	 * @param string $value
	 * @return self
	 */
	public function setName(value:Null<String> = null):Font;

	/**
	 * Get Font Content Type
	 *
	 * @return string
	 */
	public function getHint():String;

	/**
	 * Set Font Content Type
	 *
	 * @param string $value
	 * @return self
	 */
	public function setHint(value:Null<String> = null):Font;

	/**
	 * Get font size
	 *
	 * @return int|float
	 */
	public function getSize():EitherType<Int, Float>;

	/**
	 * Set font size
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setSize(value:Null<EitherType<Int, Float>> = null):Font;

	/**
	 * Get font color
	 *
	 * @return string
	 */
	public function getColor():String;

	/**
	 * Set font color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setColor(value:Null<String> = null):Font;

	/**
	 * Get bold
	 *
	 * @return bool
	 */
	public function isBold():Bool;

	/**
	 * Set bold
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setBold(value:Bool = true):Font;

	/**
	 * Get italic
	 *
	 * @return bool
	 */
	public function isItalic():Bool;

	/**
	 * Set italic
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setItalic(value:Bool = true):Font;

	/**
	 * Get underline
	 *
	 * @return string
	 */
	public function getUnderline():Underline;

	/**
	 * Set underline
	 *
	 * @param string $value
	 * @return self
	 */
	public function setUnderline(value:Underline = None):Font;

	/**
	 * Get superscript
	 *
	 * @return bool
	 */
	public function isSuperScript():Bool;

	/**
	 * Set superscript
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setSuperScript(value:Bool = true):Font;

	/**
	 * Get subscript
	 *
	 * @return bool
	 */
	public function isSubScript():Bool;

	/**
	 * Set subscript
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setSubScript(value:Bool = true):Font;

	/**
	 * Get strikethrough
	 *
	 * @return bool
	 */
	public function isStrikethrough():Bool;

	/**
	 * Set strikethrough
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setStrikethrough(value:Bool = true):Font;

	/**
	 * Get double strikethrough
	 *
	 * @return bool
	 */
	public function isDoubleStrikethrough():Bool;

	/**
	 * Set double strikethrough
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setDoubleStrikethrough(value:Bool = true):Font;

	/**
	 * Get small caps
	 *
	 * @return bool
	 */
	public function isSmallCaps():Bool;

	/**
	 * Set small caps
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setSmallCaps(value:Bool = true):Font;

	/**
	 * Get all caps
	 *
	 * @return bool
	 */
	public function isAllCaps():Bool;

	/**
	 * Set all caps
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setAllCaps(value:Bool = true):Font;

	/**
	 * Get foreground/highlight color
	 *
	 * @return string
	 */
	public function getFgColor():ForegroundColor;

	/**
	 * Set foreground/highlight color
	 *
	 * @param string $value
	 * @return self
	 */
	public function setFgColor(value:Null<ForegroundColor> = null):Font;

	/**
	 * Get background
	 *
	 * @return string
	 */
	public function getBgColor():String;

	/**
	 * Set background
	 *
	 * @param string $value
	 * @return \PhpOffice\PhpWord\Style\Table
	 */
	public function setBgColor(value:Null<String> = null):Any;

	/**
	 * Get scale
	 *
	 * @return int
	 */
	public function getScale():Int;

	/**
	 * Set scale
	 *
	 * @param int $value
	 * @return self
	 */
	public function setScale(value:Null<Int> = null):Font;

	/**
	 * Get font spacing
	 *
	 * @return int|float
	 */
	public function getSpacing():EitherType<Int, Float>;

	/**
	 * Set font spacing
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setSpacing(value:Null<EitherType<Int, Float>> = null):Font;

	/**
	 * Get font kerning
	 *
	 * @return int|float
	 */
	public function getKerning():EitherType<Int, Float>;

	/**
	 * Set font kerning
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setKerning(value:Null<EitherType<Int, Float>> = null):Font;

	/**
	 * Get noProof (disables autocorrect)
	 *
	 * @return bool
	 */
	public function isNoProof():Bool;

	/**
	 * Set noProof (disables autocorrect)
	 *
	 * @param bool $value
	 * @return $this
	 */
	public function setNoProof(value:Bool = false):Font;

	/**
	 * Get line height
	 *
	 * @return int|float
	 */
	public function getLineHeight():EitherType<Int, Float>;

	/**
	 * Set lineheight
	 *
	 * @param int|float|string $value
	 * @return self
	 */
	public function setLineHeight(value:Any):Font;

	/**
	 * Get paragraph style
	 *
	 * @return \PhpOffice\PhpWord\Style\Paragraph
	 */
	public function getParagraph():Paragraph;

	/**
	 * Set Paragraph
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setParagraph(value:Any = null):Font;

	/**
	 * Get rtl
	 *
	 * @return bool
	 */
	public function isRTL():Bool;

	/**
	 * Set rtl
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setRTL(value:Bool = true):Font;

	/**
	 * Get shading
	 *
	 * @return \PhpOffice\PhpWord\Style\Shading
	 */
	public function getShading():Any;

	/**
	 * Set shading
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setShading(value:Any = null):Font;

	/**
	 * Get language
	 *
	 * @return \PhpOffice\PhpWord\Style\Language
	 */
	public function getLang():Any;

	/**
	 * Set language
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setLang(value:Any = null):Font;

	/**
	 * Get hidden text
	 *
	 * @return bool
	 */
	public function isHidden():Bool;

	/**
	 * Set hidden text
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setHidden(value:Bool = true):Font;

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
	public function setPosition(value:Null<Int> = null):Font;
}

/**
 * Underline types
 *
 * @const string
 */
@:enum abstract Underline(String) from String to String {
	var None = "none";
	var Dash = "dash";
	var DashHeavy = "dashHeavy";
	var DashLong = "dashLong";
	var DashLongHeavy = "dashLongHeavy";
	var Double = "dbl";
	var DotDash = "dotDash";
	var DotDashHeavy = "dotDashHeavy";
	var DotDotDash = "dotDotDash";
	var DotDotDashHeavy = "dotDotDashHeavy";
	var Dotted = "dotted";
	var DottedHeavy = "dottedHeavy";
	var Heavy = "heavy";
	var Single = "single";
	var Wavy = "wavy";
	var WavyDouble = "wavyDbl";
	var WavyHeavy = "wavyHeavy";
	var Words = "words";
}

/**
 * Foreground colors
 *
 * @const string
 */
@:enum abstract ForegroundColor(String) from String to String {
	var Yellow = "yellow";
	var LigthGreen = "green";
	var Cyan = "cyan";
	var Magenty = "magenta";
	var Blue = "blue";
	var Red = "red";
	var DarkBlue = "darkBlue";
	var DarkCyan = "darkCyan";
	var DarkGreen = "darkGreen";
	var DarkMagenta = "darkMagenta";
	var DarkRed = "darkRed";
	var DarkYellow = "darkYellow";
	var DarkGray = "darkGray";
	var LigthGrey = "lightGray";
	var Black = "black";
}
