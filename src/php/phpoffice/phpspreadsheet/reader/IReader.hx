package php.phpoffice.phpspreadsheet.reader;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Reader\\IReader")
extern interface IReader {
	/**
	 * Can the current IReader read the file?
	 *
	 * @param string $pFilename
	 *
	 * @return bool
	 */
	public function canRead(filename:String):Bool;

	/**
	 * Loads PhpSpreadsheet from file.
	 *
	 * @param string $pFilename
	 *
	 * @throws Exception
	 *
	 * @return \PhpOffice\PhpSpreadsheet\Spreadsheet
	 */
	public function load(filename:String):Spreadsheet;
}
