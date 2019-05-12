package php.phpoffice.phpspreadsheet.writer;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Writer\\IWriter")
extern interface IWriter {
	/**
	 * Save PhpSpreadsheet to file.
	 *
	 * @param string $pFilename Name of the file to save
	 *
	 * @throws \PhpOffice\PhpSpreadsheet\Writer\Exception
	 */
	public function save(filename:String):Void;
}
