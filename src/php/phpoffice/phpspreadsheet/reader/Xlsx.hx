package php.phpoffice.phpspreadsheet.reader;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Reader\\Xlsx")
extern class Xlsx extends BaseReader implements IReader {
	/**
	 * Create a new Xls Reader instance.
	 */
	public function new();

	/**
	 * Can the current IReader read the file?
	 *
	 * @param string $pFilename
	 *
	 * @return bool
	 */
	public function canRead(filename:String):Bool;

	/**
	 * Reads names of the worksheets from a file, without parsing the whole file to a PhpSpreadsheet object.
	 *
	 * @param string $pFilename
	 *
	 * @throws Exception
	 *
	 * @return array
	 */
	public function listWorksheetNames(filename:String):NativeArray;

	/**
	 * Return worksheet info (Name, Last Column Letter, Last Column Index, Total Rows, Total Columns).
	 *
	 * @param string $pFilename
	 *
	 * @throws Exception
	 *
	 * @return array
	 */
	public function listWorksheetInfo(filename:String):NativeArray;

	/**
	 * Loads PhpSpreadsheet from file.
	 *
	 * @param string $pFilename
	 *
	 * @throws Exception
	 *
	 * @return Spreadsheet
	 */
	public function load(filename:String):Spreadsheet;
}
