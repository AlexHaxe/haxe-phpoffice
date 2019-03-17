package php.phpoffice.phpspreadsheet.style;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Style\\Style")
extern class Style {
	/**
	 * Create a new Style.
	 *
	 * @param bool $isSupervisor Flag indicating if this is a supervisor or not
	 *         Leave this value at default unless you understand exactly what
	 *    its ramifications are
	 * @param bool $isConditional Flag indicating if this is a conditional style or not
	 *       Leave this value at default unless you understand exactly what
	 *    its ramifications are
	 */
	public function new(isSupervisor:Bool = false, isConditional:Bool = false);

	/**
	 * Get the shared style component for the currently active cell in currently active sheet.
	 * Only used for style supervisor.
	 *
	 * @return Style
	 */
	public function getSharedComponent():Style;

	/**
	 * Get parent. Only used for style supervisor.
	 *
	 * @return Spreadsheet
	 */
	public function getParent():Spreadsheet;

	/**
	 * Build style array from subcomponents.
	 *
	 * @param array $array
	 *
	 * @return array
	 */
	public function getStyleArray(array:NativeArray):NativeArray;

	/**
	 * Apply styles from array.
	 *
	 * <code>
	 * $spreadsheet->getActiveSheet()->getStyle('B2')->applyFromArray(
	 *     [
	 *         'font' => [
	 *             'name' => 'Arial',
	 *             'bold' => true,
	 *             'italic' => false,
	 *             'underline' => Font::UNDERLINE_DOUBLE,
	 *             'strikethrough' => false,
	 *             'color' => [
	 *                 'rgb' => '808080'
	 *             ]
	 *         ],
	 *         'borders' => [
	 *             'bottom' => [
	 *                 'borderStyle' => Border::BORDER_DASHDOT,
	 *                 'color' => [
	 *                     'rgb' => '808080'
	 *                 ]
	 *             ],
	 *             'top' => [
	 *                 'borderStyle' => Border::BORDER_DASHDOT,
	 *                 'color' => [
	 *                     'rgb' => '808080'
	 *                 ]
	 *             ]
	 *         ],
	 *         'alignment' => [
	 *             'horizontal' => Alignment::HORIZONTAL_CENTER,
	 *             'vertical' => Alignment::VERTICAL_CENTER,
	 *             'wrapText' => true,
	 *         ],
	 *         'quotePrefix'    => true
	 *     ]
	 * );
	 * </code>
	 *
	 * @param array $pStyles Array containing style information
	 * @param bool $pAdvanced advanced mode for setting borders
	 *
	 * @return Style
	 */
	public function applyFromArray(styles:NativeArray, advanced:Bool = true):Style;

	/**
	 * Get Fill.
	 *
	 * @return Fill
	 */
	public function getFill():Any;

	/**
	 * Get Font.
	 *
	 * @return Font
	 */
	public function getFont():Any;

	/**
	 * Set font.
	 *
	 * @param Font $font
	 *
	 * @return Style
	 */
	public function setFont(font:Any):Style;

	/**
	 * Get Borders.
	 *
	 * @return Borders
	 */
	public function getBorders():Any;

	/**
	 * Get Alignment.
	 *
	 * @return Alignment
	 */
	public function getAlignment():Any;

	/**
	 * Get Number Format.
	 *
	 * @return NumberFormat
	 */
	public function getNumberFormat():NumberFormat;

	/**
	 * Get Conditional Styles. Only used on supervisor.
	 *
	 * @return Conditional[]
	 */
	public function getConditionalStyles():NativeArray;

	/**
	 * Set Conditional Styles. Only used on supervisor.
	 *
	 * @param Conditional[] $pValue Array of conditional styles
	 *
	 * @return Style
	 */
	public function setConditionalStyles(value:NativeArray):Style;

	/**
	 * Get Protection.
	 *
	 * @return Protection
	 */
	public function getProtection():Any;

	/**
	 * Get quote prefix.
	 *
	 * @return bool
	 */
	public function getQuotePrefix():Bool;

	/**
	 * Set quote prefix.
	 *
	 * @param bool $pValue
	 *
	 * @return Style
	 */
	public function setQuotePrefix(value:Bool):Style;

	/**
	 * Get hash code.
	 *
	 * @return string Hash code
	 */
	public function getHashCode():String;

	/**
	 * Get own index in style collection.
	 *
	 * @return int
	 */
	public function getIndex():Int;

	/**
	 * Set own index in style collection.
	 *
	 * @param int $pValue
	 */
	public function setIndex(value:Int):Void;
}
