package php.phpoffice.phpspreadsheet.worksheet;

/**
 * <code>
 * Paper size taken from Office Open XML Part 4 - Markup Language Reference, page 1988:.
 *
 * 1 = Letter paper (8.5 in. by 11 in.)
 * 2 = Letter small paper (8.5 in. by 11 in.)
 * 3 = Tabloid paper (11 in. by 17 in.)
 * 4 = Ledger paper (17 in. by 11 in.)
 * 5 = Legal paper (8.5 in. by 14 in.)
 * 6 = Statement paper (5.5 in. by 8.5 in.)
 * 7 = Executive paper (7.25 in. by 10.5 in.)
 * 8 = A3 paper (297 mm by 420 mm)
 * 9 = A4 paper (210 mm by 297 mm)
 * 10 = A4 small paper (210 mm by 297 mm)
 * 11 = A5 paper (148 mm by 210 mm)
 * 12 = B4 paper (250 mm by 353 mm)
 * 13 = B5 paper (176 mm by 250 mm)
 * 14 = Folio paper (8.5 in. by 13 in.)
 * 15 = Quarto paper (215 mm by 275 mm)
 * 16 = Standard paper (10 in. by 14 in.)
 * 17 = Standard paper (11 in. by 17 in.)
 * 18 = Note paper (8.5 in. by 11 in.)
 * 19 = #9 envelope (3.875 in. by 8.875 in.)
 * 20 = #10 envelope (4.125 in. by 9.5 in.)
 * 21 = #11 envelope (4.5 in. by 10.375 in.)
 * 22 = #12 envelope (4.75 in. by 11 in.)
 * 23 = #14 envelope (5 in. by 11.5 in.)
 * 24 = C paper (17 in. by 22 in.)
 * 25 = D paper (22 in. by 34 in.)
 * 26 = E paper (34 in. by 44 in.)
 * 27 = DL envelope (110 mm by 220 mm)
 * 28 = C5 envelope (162 mm by 229 mm)
 * 29 = C3 envelope (324 mm by 458 mm)
 * 30 = C4 envelope (229 mm by 324 mm)
 * 31 = C6 envelope (114 mm by 162 mm)
 * 32 = C65 envelope (114 mm by 229 mm)
 * 33 = B4 envelope (250 mm by 353 mm)
 * 34 = B5 envelope (176 mm by 250 mm)
 * 35 = B6 envelope (176 mm by 125 mm)
 * 36 = Italy envelope (110 mm by 230 mm)
 * 37 = Monarch envelope (3.875 in. by 7.5 in.).
 * 38 = 6 3/4 envelope (3.625 in. by 6.5 in.)
 * 39 = US standard fanfold (14.875 in. by 11 in.)
 * 40 = German standard fanfold (8.5 in. by 12 in.)
 * 41 = German legal fanfold (8.5 in. by 13 in.)
 * 42 = ISO B4 (250 mm by 353 mm)
 * 43 = Japanese double postcard (200 mm by 148 mm)
 * 44 = Standard paper (9 in. by 11 in.)
 * 45 = Standard paper (10 in. by 11 in.)
 * 46 = Standard paper (15 in. by 11 in.)
 * 47 = Invite envelope (220 mm by 220 mm)
 * 50 = Letter extra paper (9.275 in. by 12 in.)
 * 51 = Legal extra paper (9.275 in. by 15 in.)
 * 52 = Tabloid extra paper (11.69 in. by 18 in.)
 * 53 = A4 extra paper (236 mm by 322 mm)
 * 54 = Letter transverse paper (8.275 in. by 11 in.)
 * 55 = A4 transverse paper (210 mm by 297 mm)
 * 56 = Letter extra transverse paper (9.275 in. by 12 in.)
 * 57 = SuperA/SuperA/A4 paper (227 mm by 356 mm)
 * 58 = SuperB/SuperB/A3 paper (305 mm by 487 mm)
 * 59 = Letter plus paper (8.5 in. by 12.69 in.)
 * 60 = A4 plus paper (210 mm by 330 mm)
 * 61 = A5 transverse paper (148 mm by 210 mm)
 * 62 = JIS B5 transverse paper (182 mm by 257 mm)
 * 63 = A3 extra paper (322 mm by 445 mm)
 * 64 = A5 extra paper (174 mm by 235 mm)
 * 65 = ISO B5 extra paper (201 mm by 276 mm)
 * 66 = A2 paper (420 mm by 594 mm)
 * 67 = A3 transverse paper (297 mm by 420 mm)
 * 68 = A3 extra transverse paper (322 mm by 445 mm)
 * </code>
 *
 * @category   PhpSpreadsheet
 *
 * @copyright  Copyright (c) 2006 - 2016 PhpSpreadsheet (https://github.com/PHPOffice/PhpSpreadsheet)
 */
@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\PageSetup")
extern class PageSetup {
	/**
	 * Create a new PageSetup.
	 */
	public function new();

	/**
	 * Get Paper Size.
	 *
	 * @return int
	 */
	public function getPaperSize():PaperSize;

	/**
	 * Set Paper Size.
	 *
	 * @param int $pValue see self::PAPERSIZE_*
	 *
	 * @return PageSetup
	 */
	public function setPaperSize(value:PaperSize):PageSetup;

	/**
	 * Get Orientation.
	 *
	 * @return string
	 */
	public function getOrientation():Orientation;

	/**
	 * Set Orientation.
	 *
	 * @param string $pValue see self::ORIENTATION_*
	 *
	 * @return PageSetup
	 */
	public function setOrientation(value:Orientation):PageSetup;

	/**
	 * Get Scale.
	 *
	 * @return int?
	 */
	public function getScale():Int;

	/**
	 * Set Scale.
	 * Print scaling. Valid values range from 10 to 400
	 * This setting is overridden when fitToWidth and/or fitToHeight are in use.
	 *
	 * @param null|int $pValue
	 * @param bool $pUpdate Update fitToPage so scaling applies rather than fitToHeight / fitToWidth
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return PageSetup
	 */
	public function setScale(value:Null<Int>, update:Bool = true):PageSetup;

	/**
	 * Get Fit To Page.
	 *
	 * @return bool
	 */
	public function getFitToPage():Bool;

	/**
	 * Set Fit To Page.
	 *
	 * @param bool $pValue
	 *
	 * @return PageSetup
	 */
	public function setFitToPage(value:Bool):PageSetup;

	/**
	 * Get Fit To Height.
	 *
	 * @return int?
	 */
	public function getFitToHeight():Int;

	/**
	 * Set Fit To Height.
	 *
	 * @param null|int $pValue
	 * @param bool $pUpdate Update fitToPage so it applies rather than scaling
	 *
	 * @return PageSetup
	 */
	public function setFitToHeight(value:Null<Int>, update:Bool = true):PageSetup;

	/**
	 * Get Fit To Width.
	 *
	 * @return int?
	 */
	public function getFitToWidth():Int;

	/**
	 * Set Fit To Width.
	 *
	 * @param null|int $pValue
	 * @param bool $pUpdate Update fitToPage so it applies rather than scaling
	 *
	 * @return PageSetup
	 */
	public function setFitToWidth(value:Null<Int>, update:Bool = true):PageSetup;

	/**
	 * Is Columns to repeat at left set?
	 *
	 * @return bool
	 */
	public function isColumnsToRepeatAtLeftSet():Bool;

	/**
	 * Get Columns to repeat at left.
	 *
	 * @return array Containing start column and end column, empty array if option unset
	 */
	public function getColumnsToRepeatAtLeft():NativeArray;

	/**
	 * Set Columns to repeat at left.
	 *
	 * @param array $pValue Containing start column and end column, empty array if option unset
	 *
	 * @return PageSetup
	 */
	public function setColumnsToRepeatAtLeft(value:NativeArray):PageSetup;

	/**
	 * Set Columns to repeat at left by start and end.
	 *
	 * @param string $pStart eg: 'A'
	 * @param string $pEnd eg: 'B'
	 *
	 * @return PageSetup
	 */
	public function setColumnsToRepeatAtLeftByStartAndEnd(start:String, end:String):PageSetup;

	/**
	 * Is Rows to repeat at top set?
	 *
	 * @return bool
	 */
	public function isRowsToRepeatAtTopSet():Bool;

	/**
	 * Get Rows to repeat at top.
	 *
	 * @return array Containing start column and end column, empty array if option unset
	 */
	public function getRowsToRepeatAtTop():NativeArray;

	/**
	 * Set Rows to repeat at top.
	 *
	 * @param array $pValue Containing start column and end column, empty array if option unset
	 *
	 * @return PageSetup
	 */
	public function setRowsToRepeatAtTop(value:NativeArray):PageSetup;

	/**
	 * Set Rows to repeat at top by start and end.
	 *
	 * @param int $pStart eg: 1
	 * @param int $pEnd eg: 1
	 *
	 * @return PageSetup
	 */
	public function setRowsToRepeatAtTopByStartAndEnd(start:Int, end:Int):PageSetup;

	/**
	 * Get center page horizontally.
	 *
	 * @return bool
	 */
	public function getHorizontalCentered():Bool;

	/**
	 * Set center page horizontally.
	 *
	 * @param bool $value
	 *
	 * @return PageSetup
	 */
	public function setHorizontalCentered(value:Bool):PageSetup;

	/**
	 * Get center page vertically.
	 *
	 * @return bool
	 */
	public function getVerticalCentered():Bool;

	/**
	 * Set center page vertically.
	 *
	 * @param bool $value
	 *
	 * @return PageSetup
	 */
	public function setVerticalCentered(value:Bool):PageSetup;

	/**
	 * Get print area.
	 *
	 * @param int $index Identifier for a specific print area range if several ranges have been set
	 *                            Default behaviour, or a index value of 0, will return all ranges as a comma-separated string
	 *                            Otherwise, the specific range identified by the value of $index will be returned
	 *                            Print areas are numbered from 1
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return string
	 */
	public function getPrintArea(index:Int = 0):String;

	/**
	 * Is print area set?
	 *
	 * @param int $index Identifier for a specific print area range if several ranges have been set
	 *                            Default behaviour, or an index value of 0, will identify whether any print range is set
	 *                            Otherwise, existence of the range identified by the value of $index will be returned
	 *                            Print areas are numbered from 1
	 *
	 * @return bool
	 */
	public function isPrintAreaSet(index:Int = 0):Bool;

	/**
	 * Clear a print area.
	 *
	 * @param int $index Identifier for a specific print area range if several ranges have been set
	 *                            Default behaviour, or an index value of 0, will clear all print ranges that are set
	 *                            Otherwise, the range identified by the value of $index will be removed from the series
	 *                            Print areas are numbered from 1
	 *
	 * @return PageSetup
	 */
	public function clearPrintArea(index:Int = 0):PageSetup;

	/**
	 * Set print area. e.g. 'A1:D10' or 'A1:D10,G5:M20'.
	 *
	 * @param string $value
	 * @param int $index Identifier for a specific print area range allowing several ranges to be set
	 *                            When the method is "O"verwrite, then a positive integer index will overwrite that indexed
	 *                                entry in the print areas list; a negative index value will identify which entry to
	 *                                overwrite working bacward through the print area to the list, with the last entry as -1.
	 *                                Specifying an index value of 0, will overwrite <b>all</b> existing print ranges.
	 *                            When the method is "I"nsert, then a positive index will insert after that indexed entry in
	 *                                the print areas list, while a negative index will insert before the indexed entry.
	 *                                Specifying an index value of 0, will always append the new print range at the end of the
	 *                                list.
	 *                            Print areas are numbered from 1
	 * @param string $method Determines the method used when setting multiple print areas
	 *                            Default behaviour, or the "O" method, overwrites existing print area
	 *                            The "I" method, inserts the new print area before any specified index, or at the end of the list
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return PageSetup
	 */
	public function setPrintArea(value:String, index:Int = 0, method:SetPrintRange = OVERWRITE):PageSetup;

	/**
	 * Add a new print area (e.g. 'A1:D10' or 'A1:D10,G5:M20') to the list of print areas.
	 *
	 * @param string $value
	 * @param int $index Identifier for a specific print area range allowing several ranges to be set
	 *                            A positive index will insert after that indexed entry in the print areas list, while a
	 *                                negative index will insert before the indexed entry.
	 *                                Specifying an index value of 0, will always append the new print range at the end of the
	 *                                list.
	 *                            Print areas are numbered from 1
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return PageSetup
	 */
	public function addPrintArea(value:String, index:Int = -1):PageSetup;

	/**
	 * Set print area.
	 *
	 * @param int $column1 Column 1
	 * @param int $row1 Row 1
	 * @param int $column2 Column 2
	 * @param int $row2 Row 2
	 * @param int $index Identifier for a specific print area range allowing several ranges to be set
	 *                                When the method is "O"verwrite, then a positive integer index will overwrite that indexed
	 *                                    entry in the print areas list; a negative index value will identify which entry to
	 *                                    overwrite working backward through the print area to the list, with the last entry as -1.
	 *                                    Specifying an index value of 0, will overwrite <b>all</b> existing print ranges.
	 *                                When the method is "I"nsert, then a positive index will insert after that indexed entry in
	 *                                    the print areas list, while a negative index will insert before the indexed entry.
	 *                                    Specifying an index value of 0, will always append the new print range at the end of the
	 *                                    list.
	 *                                Print areas are numbered from 1
	 * @param string $method Determines the method used when setting multiple print areas
	 *                                Default behaviour, or the "O" method, overwrites existing print area
	 *                                The "I" method, inserts the new print area before any specified index, or at the end of the list
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return PageSetup
	 */
	public function setPrintAreaByColumnAndRow(column1:Int, row1:Int, column2:Int, row2:Int, index:Int = 0, method:SetPrintRange = OVERWRITE):PageSetup;

	/**
	 * Add a new print area to the list of print areas.
	 *
	 * @param int $column1 Start Column for the print area
	 * @param int $row1 Start Row for the print area
	 * @param int $column2 End Column for the print area
	 * @param int $row2 End Row for the print area
	 * @param int $index Identifier for a specific print area range allowing several ranges to be set
	 *                                A positive index will insert after that indexed entry in the print areas list, while a
	 *                                    negative index will insert before the indexed entry.
	 *                                    Specifying an index value of 0, will always append the new print range at the end of the
	 *                                    list.
	 *                                Print areas are numbered from 1
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return PageSetup
	 */
	public function addPrintAreaByColumnAndRow(column1:Int, row1:Int, column2:Int, row2:Int, index:Int = -1):PageSetup;

	/**
	 * Get first page number.
	 *
	 * @return int
	 */
	public function getFirstPageNumber():Int;

	/**
	 * Set first page number.
	 *
	 * @param int $value
	 *
	 * @return PageSetup
	 */
	public function setFirstPageNumber(value:Int):PageSetup;

	/**
	 * Reset first page number.
	 *
	 * @return PageSetup
	 */
	public function resetFirstPageNumber():PageSetup;
}

@:enum abstract PaperSize(Int) to Int {
	// Paper size
	var LETTER = 1;
	var LETTER_SMALL = 2;
	var TABLOID = 3;
	var LEDGER = 4;
	var LEGAL = 5;
	var STATEMENT = 6;
	var EXECUTIVE = 7;
	var A3 = 8;
	var A4 = 9;
	var A4_SMALL = 10;
	var A5 = 11;
	var B4 = 12;
	var B5 = 13;
	var FOLIO = 14;
	var QUARTO = 15;
	var STANDARD_1 = 16;
	var STANDARD_2 = 17;
	var NOTE = 18;
	var NO9_ENVELOPE = 19;
	var NO10_ENVELOPE = 20;
	var NO11_ENVELOPE = 21;
	var NO12_ENVELOPE = 22;
	var NO14_ENVELOPE = 23;
	var C = 24;
	var D = 25;
	var E = 26;
	var DL_ENVELOPE = 27;
	var C5_ENVELOPE = 28;
	var C3_ENVELOPE = 29;
	var C4_ENVELOPE = 30;
	var C6_ENVELOPE = 31;
	var C65_ENVELOPE = 32;
	var B4_ENVELOPE = 33;
	var B5_ENVELOPE = 34;
	var B6_ENVELOPE = 35;
	var ITALY_ENVELOPE = 36;
	var MONARCH_ENVELOPE = 37;
	var SIX_3_4_ENVELOPE = 38;
	var US_STANDARD_FANFOLD = 39;
	var GERMAN_STANDARD_FANFOLD = 40;
	var GERMAN_LEGAL_FANFOLD = 41;
	var ISO_B4 = 42;
	var JAPANESE_DOUBLE_POSTCARD = 43;
	var STANDARD_PAPER_1 = 44;
	var STANDARD_PAPER_2 = 45;
	var STANDARD_PAPER_3 = 46;
	var INVITE_ENVELOPE = 47;
	var LETTER_EXTRA_PAPER = 48;
	var LEGAL_EXTRA_PAPER = 49;
	var TABLOID_EXTRA_PAPER = 50;
	var A4_EXTRA_PAPER = 51;
	var LETTER_TRANSVERSE_PAPER = 52;
	var A4_TRANSVERSE_PAPER = 53;
	var LETTER_EXTRA_TRANSVERSE_PAPER = 54;
	var SUPERA_SUPERA_A4_PAPER = 55;
	var SUPERB_SUPERB_A3_PAPER = 56;
	var LETTER_PLUS_PAPER = 57;
	var A4_PLUS_PAPER = 58;
	var A5_TRANSVERSE_PAPER = 59;
	var JIS_B5_TRANSVERSE_PAPER = 60;
	var A3_EXTRA_PAPER = 61;
	var A5_EXTRA_PAPER = 62;
	var ISO_B5_EXTRA_PAPER = 63;
	var A2_PAPER = 64;
	var A3_TRANSVERSE_PAPER = 65;
	var A3_EXTRA_TRANSVERSE_PAPER = 66;
}

// Page orientation
@:enum abstract Orientation(String) to String {
	var DEFAULT = 'default';
	var LANDSCAPE = 'landscape';
	var PORTRAIT = 'portrait';
}

// Print Range Set Method
@:enum abstract SetPrintRange(String) to String {
	var OVERWRITE = 'O';
	var INSERT = 'I';
}
