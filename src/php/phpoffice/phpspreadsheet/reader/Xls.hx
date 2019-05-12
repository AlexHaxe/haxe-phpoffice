package php.phpoffice.phpspreadsheet.reader;

import php.phpoffice.phpspreadsheet.Spreadsheet;

// Original file header of ParseXL (used as the base for this class):
// --------------------------------------------------------------------------------
// Adapted from Excel_Spreadsheet_Reader developed by users bizon153,
// trex005, and mmp11 (SourceForge.net)
// https://sourceforge.net/projects/phpexcelreader/
// Primary changes made by canyoncasa (dvc) for ParseXL 1.00 ...
//     Modelled moreso after Perl Excel Parse/Write modules
//     Added Parse_Excel_Spreadsheet object
//         Reads a whole worksheet or tab as row,column array or as
//         associated hash of indexed rows and named column fields
//     Added variables for worksheet (tab) indexes and names
//     Added an object call for loading individual woorksheets
//     Changed default indexing defaults to 0 based arrays
//     Fixed date/time and percent formats
//     Includes patches found at SourceForge...
//         unicode patch by nobody
//         unpack("d") machine depedency patch by matchy
//         boundsheet utf16 patch by bjaenichen
//     Renamed functions for shorter names
//     General code cleanup and rigor, including <80 column width
//     Included a testcase Excel file and PHP example calls
//     Code works for PHP 5.x
// Primary changes made by canyoncasa (dvc) for ParseXL 1.10 ...
// http://sourceforge.net/tracker/index.php?func=detail&aid=1466964&group_id=99160&atid=623334
//     Decoding of formula conditions, results, and tokens.
//     Support for user-defined named cells added as an array "namedcells"
//         Patch code for user-defined named cells supports single cells only.
//         NOTE: this patch only works for BIFF8 as BIFF5-7 use a different
//         external sheet reference structure
@:native("PhpOffice\\PhpSpreadsheet\\Reader\\Xls")
extern class Xls extends BaseReader implements IReader {
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
