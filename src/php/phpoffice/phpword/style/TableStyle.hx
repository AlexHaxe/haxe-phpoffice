package php.phpoffice.phpword.style;

import php.phpoffice.phpword.style.Frame.HPosType;
import php.phpoffice.phpword.style.Frame.HPosRelType;
import php.phpoffice.phpword.style.Frame.VPosType;
import php.phpoffice.phpword.style.Frame.VPosRelType;
import php.phpoffice.phpword.style.Frame.WrapType;

@:native("PhpOffice\\PhpWord\\Style\\Table")
extern class TableStyle extends Border {
	/**
	 * Create new table style
	 *
	 * @param mixed $tableStyle
	 * @param mixed $firstRowStyle
	 */
	public function new(tableStyle:Any = null, firstRowStyle:Any = null);

	/**
	 * @param float|int $cellSpacing
	 */
	public function setCellSpacing(cellSpacing:Null<EitherType<Int, Float>> = null):Void;

	/**
	 * @return float|int
	 */
	public function getCellSpacing():EitherType<Int, Float>;

	/**
	 * Set first row
	 *
	 * @return \PhpOffice\PhpWord\Style\Table
	 */
	public function getFirstRow():TableStyle;

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
	 * @return self
	 */
	public function setBgColor(value:String = null):TableStyle;

	/**
	 * Get border size inside horizontal
	 *
	 * @return int
	 */
	public function getBorderInsideHSize():Int;

	/**
	 * Get border color inside horizontal
	 *
	 * @return string
	 */
	public function getBorderInsideHColor():String;

	/**
	 * Set border color inside horizontal
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderInsideHColor(value:String = null):TableStyle;

	/**
	 * Get border size inside vertical
	 *
	 * @return int
	 */
	public function getBorderInsideVSize():Int;

	/**
	 * Set border size inside vertical
	 *
	 * @param int $value
	 * @return self
	 */
	public function setBorderInsideVSize(value:Int = null):TableStyle;

	/**
	 * Get border color inside vertical
	 *
	 * @return string
	 */
	public function getBorderInsideVColor():String;

	/**
	 * Set border color inside vertical
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBorderInsideVColor(value:String = null):TableStyle;

	/**
	 * Get cell margin top
	 *
	 * @return int
	 */
	public function getCellMarginTop():Int;

	/**
	 * Set cell margin top
	 *
	 * @param int $value
	 * @return self
	 */
	public function setCellMarginTop(value:Int = null):TableStyle;

	/**
	 * Get cell margin left
	 *
	 * @return int
	 */
	public function getCellMarginLeft():Int;

	/**
	 * Set cell margin left
	 *
	 * @param int $value
	 * @return self
	 */
	public function setCellMarginLeft(value:Int = null):TableStyle;

	/**
	 * Get cell margin right
	 *
	 * @return int
	 */
	public function getCellMarginRight():Int;

	/**
	 * Set cell margin right
	 *
	 * @param int $value
	 * @return self
	 */
	public function setCellMarginRight(value:Int = null):TableStyle;

	/**
	 * Get cell margin bottom
	 *
	 * @return int
	 */
	public function getCellMarginBottom():Int;

	/**
	 * Set cell margin bottom
	 *
	 * @param int $value
	 * @return self
	 */
	public function setCellMarginBottom(value:Int = null):TableStyle;

	/**
	 * Get cell margin
	 *
	 * @return int[]
	 */
	public function getCellMargin():NativeArray;

	/**
	 * Set TLRB cell margin
	 *
	 * @param int $value Margin in twips
	 * @return self
	 */
	public function setCellMargin(value:Int = null):TableStyle;

	/**
	 * Check if any of the margin is not null
	 *
	 * @return bool
	 */
	public function hasMargin():Bool;

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
	public function setShading(value:Any = null):TableStyle;

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
	public function setAlignment(value:String):TableStyle;

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
	public function setAlign(value:String = null):TableStyle;

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
	public function setWidth(value:Null<EitherType<Int, Float>> = null):TableStyle;

	/**
	 * Get width unit
	 *
	 * @return string
	 */
	public function getUnit():String;

	/**
	 * Set width unit
	 *
	 * @param string $value
	 * @return self
	 */
	public function setUnit(value:String = null):TableStyle;

	/**
	 * Get layout
	 *
	 * @return string
	 */
	public function getLayout():String;

	/**
	 * Set layout
	 *
	 * @param string $value
	 * @return self
	 */
	public function setLayout(value:String = null):TableStyle;

	/**
	 * Get position
	 *
	 * @return \PhpOffice\PhpWord\Style\TablePosition
	 */
	public function getPosition():Any;

	/**
	 * Set position
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setPosition(value:Any = null):TableStyle;

	/**
	 * @return TblWidthComplexType
	 */
	public function getIndent():Any;

	/**
	 * @param TblWidthComplexType $indent
	 * @return self
	 * @see http://www.datypic.com/sc/ooxml/e-w_tblInd-1.html
	 */
	public function setIndent(indent:Any):TableStyle;

	/**
	 * Get the columnWidths
	 *
	 * @return null|int[]
	 */
	public function getColumnWidths():NativeArray;

	/**
	 * The column widths
	 *
	 * @param int[] $value
	 */
	public function setColumnWidths(value:NativeArray = null):Void;

	/**
	 * Get bidiVisual
	 *
	 * @return bool
	 */
	public function isBidiVisual():Bool;

	/**
	 * Set bidiVisual
	 *
	 * @param bool $bidi
	 *            Set to true to visually present table as Right to Left
	 * @return self
	 */
	public function setBidiVisual(bidi:Bool):TableStyle;
}
