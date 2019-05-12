package php.phpoffice.phpspreadsheet.writer;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Writer\\Xls")
extern class Xls extends BaseWriter implements IWriter {
	/**
	 * Create a new Xls Writer.
	 *
	 * @param Spreadsheet $spreadsheet PhpSpreadsheet object
	 */
	public function new(parent:Spreadsheet);

	/**
	 * Save Spreadsheet to file.
	 *
	 * @param string $pFilename
	 *
	 * @throws \PhpOffice\PhpSpreadsheet\Writer\Exception
	 */
	public function save(fileName:String):Void;
}
