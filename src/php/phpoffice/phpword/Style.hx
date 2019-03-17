package php.phpoffice.phpword;

/**
 * Style collection
 */
@:native("PhpOffice\\PhpWord\\Style")
extern class Style {
	/**
	 * Add paragraph style
	 *
	 * @param string $styleName
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $styles
	 * @return \PhpOffice\PhpWord\Style\Paragraph
	 */
	public static function addParagraphStyle(styleName:String, styles:Any):Any;

	/**
	 * Add font style
	 *
	 * @param string $styleName
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $fontStyle
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $paragraphStyle
	 * @return \PhpOffice\PhpWord\Style\Font
	 */
	public static function addFontStyle(styleName:String, fontStyle:Any, paragraphStyle:Any = null):Any;

	/**
	 * Add link style
	 *
	 * @param string $styleName
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $styles
	 * @return \PhpOffice\PhpWord\Style\Font
	 */
	public static function addLinkStyle(styleName:String, styles:Any):Any;

	/**
	 * Add numbering style
	 *
	 * @param string $styleName
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $styleValues
	 * @return \PhpOffice\PhpWord\Style\Numbering
	 * @since 0.10.0
	 */
	public static function addNumberingStyle(styleName:String, styleValues:Any):Any;

	/**
	 * Add title style
	 *
	 * @param int|null $depth Provide null to set title font
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $fontStyle
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $paragraphStyle
	 * @return \PhpOffice\PhpWord\Style\Font
	 */
	public static function addTitleStyle(depth:Null<Int>, fontStyle:Any, paragraphStyle:Any = null):Any;

	/**
	 * Add table style
	 *
	 * @param string $styleName
	 * @param array $styleTable
	 * @param array|null $styleFirstRow
	 * @return \PhpOffice\PhpWord\Style\Table
	 */
	public static function addTableStyle(styleName:String, styleTable:NativeArray, styleFirstRow:Null<NativeArray> = null):Any;

	/**
	 * Count styles
	 *
	 * @return int
	 * @since 0.10.0
	 */
	public static function countStyles():Int;

	/**
	 * Reset styles.
	 *
	 * @since 0.10.0
	 */
	public static function resetStyles():Void;

	/**
	 * Set default paragraph style
	 *
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $styles Paragraph style definition
	 * @return \PhpOffice\PhpWord\Style\Paragraph
	 */
	public static function setDefaultParagraphStyle(styles:Any):Any;

	/**
	 * Get all styles
	 *
	 * @return \PhpOffice\PhpWord\Style\AbstractStyle[]
	 */
	public static function getStyles():Any;

	/**
	 * Get style by name
	 *
	 * @param string $styleName
	 * @return \PhpOffice\PhpWord\Style\AbstractStyle Paragraph|Font|Table|Numbering
	 */
	public static function getStyle(styleName:String):Any;

	/**
	 * Set style values and put it to static style collection
	 *
	 * The $styleValues could be an array or object
	 *
	 * @param string $name
	 * @param \PhpOffice\PhpWord\Style\AbstractStyle $style
	 * @param array|\PhpOffice\PhpWord\Style\AbstractStyle $value
	 * @return \PhpOffice\PhpWord\Style\AbstractStyle
	 */
	private static function setStyleValues(name:String, style:Any, value:Any = null):Any;
}
