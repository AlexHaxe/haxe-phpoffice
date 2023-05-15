package php.phpoffice.phpspreadsheet.style;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Style\\Style")
extern class NumberFormat {
	/**
	 * Create a new NumberFormat.
	 *
	 * @param bool $isSupervisor Flag indicating if this is a supervisor or not
	 *                                    Leave this value at default unless you understand exactly what
	 *                                        its ramifications are
	 * @param bool $isConditional Flag indicating if this is a conditional style or not
	 *                                    Leave this value at default unless you understand exactly what
	 *                                        its ramifications are
	 */
	public function new(isSupervisor:Bool = false, isConditional:Bool = false);

	/**
	 * Get the shared style component for the currently active cell in currently active sheet.
	 * Only used for style supervisor.
	 *
	 * @return NumberFormat
	 */
	public function getSharedComponent():NumberFormat;

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
	 * $spreadsheet->getActiveSheet()->getStyle("B2")->getNumberFormat()->applyFromArray(
	 *     [
	 *         "formatCode" => NumberFormat::FORMAT_CURRENCY_EUR_SIMPLE
	 *     ]
	 * );
	 * </code >
	 *
	 *  @param array $pStyles Array containing style information
	 *
	 * @throws PhpSpreadsheetException
	 *
	 *  @return NumberFormat
	 */
	public function applyFromArray(pStyles:NativeArray):NumberFormat;

	/**
	 * Get Format Code.
	 *
	 * @return string
	 */
	public function getFormatCode():NumberFormatType;

	/**
	 * Set Format Code.
	 *
	 * @param string $pValue see self::FORMAT_*
	 *
	 * @return NumberFormat
	 */
	public function setFormatCode(pValue:NumberFormatType):NumberFormat;

	/**
	 * Get Built-In Format Code.
	 *
	 * @return int
	 */
	public function getBuiltInFormatCode():Int;

	/**
	 * Set Built-In Format Code.
	 *
	 * @param int $pValue
	 *
	 * @return NumberFormat
	 */
	public function setBuiltInFormatCode(pValu:Int):NumberFormat;

	/**
	 * Get built-in format code.
	 *
	 * @param int $pIndex
	 *
	 * @return string
	 */
	public static function builtInFormatCode(pIndex:String):String;

	/**
	 * Get built-in format code index.
	 *
	 * @param string $formatCode
	 *
	 * @return bool|int
	 */
	public static function builtInFormatCodeIndex(formatCode:String):EitherType<Bool, Int>;

	/**
	 * Get hash code.
	 *
	 * @return string Hash code
	 */
	public function getHashCode():String;

	/**
	 * Convert a value in a pre-defined format to a PHP string.
	 *
	 * @param mixed $value Value to format
	 * @param string $format Format code, see = self::FORMAT_*
	 * @param array $callBack Callback function for additional formatting of string
	 *
	 * @return string Formatted string
	 */
	public static function toFormattedString(value:Any, format:String, callBack:Any = null):String;
}

// Pre-defined formats
enum abstract NumberFormatType(String) from String to String {
	var General = "General";
	var Text = "@";
	var Number = "0";
	var Number00 = "0.00";
	var NumberCommaSeparated1 = "#,##0.00";
	var NumberCommaSeparated2 = "#,##0.00_-";
	var Percentage = "0%";
	var Percentage00 = "0.00%";
	var Date_YYYYMMDD2 = "yyyy-mm-dd";
	var Date_YYYYMMDD = "yy-mm-dd";
	var Date_DDMMYYYY = "dd/mm/yy";
	var Date_DMYSLASH = "d/m/yy";
	var Date_DMYMINUS = "d-m-yy";
	var Date_DMMINUS = "d-m";
	var Date_MYMINUS = "m-yy";
	var Date_XLSX14 = "mm-dd-yy";
	var Date_XLSX15 = "d-mmm-yy";
	var Date_XLSX16 = "d-mmm";
	var Date_XLSX17 = "mmm-yy";
	var Date_XLSX22 = "m/d/yy h:mm";
	var Date_DATETIME = "d/m/yy h:mm";
	var Date_TIME1 = "h:mm AM/PM";
	var Date_TIME2 = "h:mm:ss AM/PM";
	var Date_TIME3 = "h:mm";
	var Date_TIME4 = "h:mm:ss";
	var Date_TIME5 = "mm:ss";
	var Date_TIME6 = "h:mm:ss";
	var Date_TIME7 = "i:s.S";
	var Date_TIME8 = "h:mm:ss;@";
	var Date_YYYYMMDDSLASH = "yy/mm/dd;@";
	var Currency_USD_SIMPLE = '"$"#,##0.00_-';
	var Currency_USD = "$#,##0_-";
	var Currency_EUR_SIMPLE = '#,##0.00_-"€"';
	var Currency_EUR = '#,##0_-"€"';
}
