package php.phpoffice.phpspreadsheet.writer;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Writer\\Xlsx")
extern class Xlsx extends BaseWriter implements IWriter {
	/**
	 * Create a new Xlsx Writer.
	 *
	 * @param Spreadsheet $spreadsheet
	 */
	public function new(parent:Spreadsheet);

	/**
	 * Save PhpSpreadsheet to file.
	 *
	 * @param string $pFilename
	 *
	 * @throws WriterException
	 */
	public function save(fileName:String):Void;

	/**
	 * Get Office2003 compatibility.
	 *
	 * @return bool
	 */
	public function getOffice2003Compatibility():Bool;

	/**
	 * Set Office2003 compatibility.
	 *
	 * @param bool $pValue Office2003 compatibility?
	 *
	 * @return Xlsx
	 */
	public function setOffice2003Compatibility(value:Bool):Xlsx;
}
