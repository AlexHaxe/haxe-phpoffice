package php.phpoffice.phpword.style;

/**
 * Paragraph style
 *
 * OOXML:
 * - General: alignment, outline level
 * - Indentation: left, right, firstline, hanging
 * - Spacing: before, after, line spacing
 * - Pagination: widow control, keep next, keep line, page break before
 * - Formatting exception: suppress line numbers, don"t hyphenate
 * - Textbox options
 * - Tabs
 * - Shading
 * - Borders
 *
 * OpenOffice:
 * - Indents & spacing
 * - Alignment
 * - Text flow
 * - Outline & numbering
 * - Tabs
 * - Dropcaps
 * - Tabs
 * - Borders
 * - Background
 *
 * @see  http://www.schemacentral.com/sc/ooxml/t-w_CT_PPr.html
 */
@:native("PhpOffice\\PhpWord\\Style\\Paragraph")
extern class Paragraph extends Border {
	public function new();

	/**
	 * Get style values
	 *
	 * An experiment to retrieve all style values in one function. This will
	 * reduce function call and increase cohesion between functions. Should be
	 * implemented in all styles.
	 *
	 * @ignoreScrutinizerPatch
	 * @return array
	 */
	public function getStyleValues():NativeArray;

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
	public function setAlignment(value:String):Paragraph;

	/**
	 * Get parent style ID
	 *
	 * @return string
	 */
	public function getBasedOn():String;

	/**
	 * Set parent style ID
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBasedOn(value:String = "Normal"):Paragraph;

	/**
	 * Get style for next paragraph
	 *
	 * @return string
	 */
	public function getNext():String;

	/**
	 * Set style for next paragraph
	 *
	 * @param string $value
	 * @return self
	 */
	public function setNext(value:Null<String> = null):Paragraph;

	/**
	 * Get shading
	 *
	 * @return \PhpOffice\PhpWord\Style\Indentation
	 */
	public function getIndentation():Indentation;

	/**
	 * Set shading
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setIndentation(value:Indentation = null):Paragraph;

	/**
	 * Get indentation
	 *
	 * @return int
	 */
	public function getIndent():Int;

	/**
	 * Set indentation
	 *
	 * @param int $value
	 * @return self
	 */
	public function setIndent(value:Int = null):Paragraph;

	/**
	 * Get hanging
	 *
	 * @return int
	 */
	public function getHanging():Int;

	/**
	 * Set hanging
	 *
	 * @param int $value
	 * @return self
	 */
	public function setHanging(value:Int = null):Paragraph;

	/**
	 * Get spacing
	 *
	 * @return \PhpOffice\PhpWord\Style\Spacing
	 * @todo Rename to getSpacing in 1.0
	 */
	public function getSpace():Spacing;

	/**
	 * Set spacing
	 *
	 * @param mixed $value
	 * @return self
	 * @todo Rename to setSpacing in 1.0
	 */
	public function setSpace(value:Any = null):Paragraph;

	/**
	 * Get space before paragraph
	 *
	 * @return int
	 */
	public function getSpaceBefore():Int;

	/**
	 * Set space before paragraph
	 *
	 * @param int $value
	 * @return self
	 */
	public function setSpaceBefore(value:Int = null):Paragraph;

	/**
	 * Get space after paragraph
	 *
	 * @return int
	 */
	public function getSpaceAfter():Int;

	/**
	 * Set space after paragraph
	 *
	 * @param int $value
	 * @return self
	 */
	public function setSpaceAfter(value:Null<Int> = null):Paragraph;

	/**
	 * Get spacing between lines
	 *
	 * @return int|float
	 */
	public function getSpacing():EitherType<Int, Float>;

	/**
	 * Set spacing between lines
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setSpacing(value:Null<EitherType<Int, Float>> = null):Paragraph;

	/**
	 * Get spacing line rule
	 *
	 * @return string
	 */
	public function getSpacingLineRule():String;

	/**
	 * Set the spacing line rule
	 *
	 * @param string $value Possible values are defined in LineSpacingRule
	 * @return \PhpOffice\PhpWord\Style\Paragraph
	 */
	public function setSpacingLineRule(value:String):Paragraph;

	/**
	 * Get line height
	 *
	 * @return int|float
	 */
	public function getLineHeight():EitherType<Int, Float>;

	/**
	 * Set the line height
	 *
	 * @param int|float|string $lineHeight
	 *
	 * @throws \PhpOffice\PhpWord\Exception\InvalidStyleException
	 * @return self
	 */
	public function setLineHeight(lineHeight:Any):Paragraph;

	/**
	 * Get allow first/last line to display on a separate page setting
	 *
	 * @return bool
	 */
	public function hasWidowControl():Bool;

	/**
	 * Set keep paragraph with next paragraph setting
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setWidowControl(value:Bool = true):Paragraph;

	/**
	 * Get keep paragraph with next paragraph setting
	 *
	 * @return bool
	 */
	public function isKeepNext():Bool;

	/**
	 * Set keep paragraph with next paragraph setting
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setKeepNext(value:Bool = true):Paragraph;

	/**
	 * Get keep all lines on one page setting
	 *
	 * @return bool
	 */
	public function isKeepLines():Bool;

	/**
	 * Set keep all lines on one page setting
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setKeepLines(value:Bool = true):Paragraph;

	/**
	 * Get start paragraph on next page setting
	 *
	 * @return bool
	 */
	public function hasPageBreakBefore():Bool;

	/**
	 * Set start paragraph on next page setting
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setPageBreakBefore(value:Bool = true):Paragraph;

	/**
	 * Get numbering style name
	 *
	 * @return string
	 */
	public function getNumStyle():String;

	/**
	 * Set numbering style name
	 *
	 * @param string $value
	 * @return self
	 */
	public function setNumStyle(value:String):Paragraph;

	/**
	 * Get numbering level
	 *
	 * @return int
	 */
	public function getNumLevel():Int;

	/**
	 * Set numbering level
	 *
	 * @param int $value
	 * @return self
	 */
	public function setNumLevel(value:Int = 0):Paragraph;

	/**
	 * Get tabs
	 *
	 * @return \PhpOffice\PhpWord\Style\Tab[]
	 */
	public function getTabs():NativeArray;

	/**
	 * Set tabs
	 *
	 * @param array $value
	 * @return self
	 */
	public function setTabs(value:Null<NativeArray> = null):Paragraph;

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
	public function setShading(value:Any = null):Paragraph;

	/**
	 * Get contextualSpacing
	 *
	 * @return bool
	 */
	public function hasContextualSpacing():Bool;

	/**
	 * Set contextualSpacing
	 *
	 * @param bool $contextualSpacing
	 * @return self
	 */
	public function setContextualSpacing(contextualSpacing:Bool):Paragraph;

	/**
	 * Get bidirectional
	 *
	 * @return bool
	 */
	public function isBidi():Bool;

	/**
	 * Set bidi
	 *
	 * @param bool $bidi
	 *            Set to true to write from right to left
	 * @return self
	 */
	public function setBidi(bidi:Bool):Paragraph;

	/**
	 * Get textAlignment
	 *
	 * @return string
	 */
	public function getTextAlignment():TextAlignment;

	/**
	 * Set textAlignment
	 *
	 * @param string $textAlignment
	 * @return self
	 */
	public function setTextAlignment(textAlignment:TextAlignment):Paragraph;

	/**
	 * @return bool
	 */
	public function hasSuppressAutoHyphens():Bool;

	/**
	 * @param bool $suppressAutoHyphens
	 */
	public function setSuppressAutoHyphens(suppressAutoHyphens:Bool):Void;
}

@:enum abstract TextAlignment(String) from String to String {
	// Align Text at Top
	var Top = "top";
	// Align Text at Center
	var Center = "center";
	// Align Text at Baseline
	var Baseline = "baseline";
	// Align Text at Bottom
	var Bottom = "bottom";
	// Automatically Determine Alignment
	var Auto = "auto";
}
