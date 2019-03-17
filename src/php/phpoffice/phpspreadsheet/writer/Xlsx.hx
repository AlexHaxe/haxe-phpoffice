package php.phpoffice.phpspreadsheet.writer;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Writer\\Xlsx")
extern class Xlsx {
	public function new(parent:Spreadsheet);
	public function save(fileName:String):Void;
}
