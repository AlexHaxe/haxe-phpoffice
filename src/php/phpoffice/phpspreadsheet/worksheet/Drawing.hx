package php.phpoffice.phpspreadsheet.worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\Drawing")
extern class Drawing extends BaseDrawing {
	/**
	 * Create a new Drawing.
	 */
	public function new();

	/**
	 * Get Filename.
	 *
	 * @return string
	 */
	public function getFilename():String;

	/**
	 * Get indexed filename (using image index).
	 *
	 * @return string
	 */
	public function getIndexedFilename():String;

	/**
	 * Get Extension.
	 *
	 * @return string
	 */
	public function getExtension():String;

	/**
	 * Get Path.
	 *
	 * @return string
	 */
	public function getPath():String;

	/**
	 * Set Path.
	 *
	 * @param string $pValue File path
	 * @param bool $pVerifyFile Verify file
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return Drawing
	 */
	public function setPath(value:String, verifyFile:Bool = true):Drawing;
}
