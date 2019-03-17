package php.phpoffice.phpspreadsheet;

import php.phpoffice.phpspreadsheet.document.Properties;
import php.phpoffice.phpspreadsheet.style.Style;
import php.phpoffice.phpspreadsheet.worksheet.Worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Spreadsheet")
extern class Spreadsheet {
	/**
	 * The workbook has macros ?
	 *
	 * @return bool
	 */
	public function hasMacros():Bool;

	/**
	 * Define if a workbook has macros.
	 *
	 * @param bool $hasMacros true|false
	 */
	public function setHasMacros(hasMacros:Bool):Void;

	/**
	 * Set the macros code.
	 *
	 * @param string $macroCode string|null
	 */
	public function setMacrosCode(macroCode:String):Void;

	/**
	 * Return the macros code.
	 *
	 * @return null|string
	 */
	public function getMacrosCode():Null<String>;

	/**
	 * Set the macros certificate.
	 *
	 * @param null|string $certificate
	 */
	public function setMacrosCertificate(certificate:Null<String>):Void;

	/**
	 * Is the project signed ?
	 *
	 * @return bool true|false
	 */
	public function hasMacrosCertificate():Bool;

	/**
	 * Return the macros certificate.
	 *
	 * @return null|string
	 */
	public function getMacrosCertificate():Null<String>;

	/**
	 * Remove all macros, certificate from spreadsheet.
	 */
	public function discardMacros():Void;

	/**
	 * set ribbon XML data.
	 *
	 * @param null|mixed $target
	 * @param null|mixed $xmlData
	 */
	public function setRibbonXMLData(target:Null<Any>, xmlData:Null<Any>):Void;

	/**
	 * retrieve ribbon XML Data.
	 *
	 * return string|null|array
	 *
	 * @param string $what
	 *
	 * @return string
	 */
	public function getRibbonXMLData(what:String = 'all') // we need some constants here...
		:String;

	/**
	 * store binaries ribbon objects (pictures).
	 *
	 * @param null|mixed $BinObjectsNames
	 * @param null|mixed $BinObjectsData
	 */
	public function setRibbonBinObjects(objectsNames:Null<Any>, objectsData:Null<Any>):Void;

	/**
	 * List of unparsed loaded data for export to same format with better compatibility.
	 * It has to be minimized when the library start to support currently unparsed data.
	 *
	 * @internal
	 *
	 * @return array
	 */
	public function getUnparsedLoadedData():NativeArray;

	/**
	 * List of unparsed loaded data for export to same format with better compatibility.
	 * It has to be minimized when the library start to support currently unparsed data.
	 *
	 * @internal
	 *
	 * @param array $unparsedLoadedData
	 */
	public function setUnparsedLoadedData(unparsedLoadedData:NativeArray):Void;

	/**
	 * return the extension of a filename. Internal use for a array_map callback (php<5.3 don't like lambda function).
	 *
	 * @param mixed $path
	 *
	 * @return string
	 */
	private function getExtensionOnly(path:Any):String;

	/**
	 * retrieve Binaries Ribbon Objects.
	 *
	 * @param string $what
	 *
	 * @return null|array
	 */
	public function getRibbonBinObjects(what:String = 'all'):Null<NativeArray>;

	/**
	 * This workbook have a custom UI ?
	 *
	 * @return bool
	 */
	public function hasRibbon():Bool;

	/**
	 * This workbook have additionnal object for the ribbon ?
	 *
	 * @return bool
	 */
	public function hasRibbonBinObjects():Bool;

	/**
	 * Check if a sheet with a specified code name already exists.
	 *
	 * @param string $pSheetCodeName Name of the worksheet to check
	 *
	 * @return bool
	 */
	public function sheetCodeNameExists(sheetCodeName:String):Bool;

	/**
	 * Get sheet by code name. Warning : sheet don't have always a code name !
	 *
	 * @param string $pName Sheet name
	 *
	 * @return Worksheet
	 */
	public function getSheetByCodeName(name:String):Worksheet;

	/**
	 * Create a new PhpSpreadsheet with one Worksheet.
	 */
	public function new();

	/**
	 * Disconnect all worksheets from this PhpSpreadsheet workbook object,
	 * typically so that the PhpSpreadsheet object can be unset.
	 */
	public function disconnectWorksheets():Void;

	/**
	 * Return the calculation engine for this worksheet.
	 *
	 * @return Calculation
	 */
	public function getCalculationEngine():Any;

	/**
	 * Get properties.
	 *
	 * @return Document\Properties
	 */
	public function getProperties():Properties;

	/**
	 * Set properties.
	 *
	 * @param Document\Properties $pValue
	 */
	public function setProperties(value:Properties):Void;

	/**
	 * Get security.
	 *
	 * @return Document\Security
	 */
	public function getSecurity():Any;

	/**
	 * Set security.
	 *
	 * @param Document\Security $pValue
	 */
	public function setSecurity(value:Any):Void;

	/**
	 * Get active sheet.
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function getActiveSheet():Worksheet;

	/**
	 * Create sheet and add it to this workbook.
	 *
	 * @param null|int $sheetIndex Index where sheet should go (0,1,..., or null for last)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function createSheet(sheetIndex:Null<Int> = null):Worksheet;

	/**
	 * Check if a sheet with a specified name already exists.
	 *
	 * @param string $pSheetName Name of the worksheet to check
	 *
	 * @return bool
	 */
	public function sheetNameExists(sheetName:String):Bool;

	/**
	 * Add sheet.
	 *
	 * @param Worksheet $pSheet
	 * @param null|int $iSheetIndex Index where sheet should go (0,1,..., or null for last)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function addSheet(sheet:Worksheet, sheetIndex:Int = null):Worksheet;

	/**
	 * Remove sheet by index.
	 *
	 * @param int $pIndex Active sheet index
	 *
	 * @throws Exception
	 */
	public function removeSheetByIndex(index:Int):Void;

	/**
	 * Get sheet by index.
	 *
	 * @param int $pIndex Sheet index
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function getSheet(index:Int):Worksheet;

	/**
	 * Get all sheets.
	 *
	 * @return Worksheet[]
	 */
	public function getAllSheets():NativeArray;

	/**
	 * Get sheet by name.
	 *
	 * @param string $pName Sheet name
	 *
	 * @return Worksheet
	 */
	public function getSheetByName(name:String):Worksheet;

	/**
	 * Get index for sheet.
	 *
	 * @param Worksheet $pSheet
	 *
	 * @throws Exception
	 *
	 * @return int index
	 */
	public function getIndex(sheet:Worksheet):Int;

	/**
	 * Set index for sheet by sheet name.
	 *
	 * @param string $sheetName Sheet name to modify index for
	 * @param int $newIndex New index for the sheet
	 *
	 * @throws Exception
	 *
	 * @return int New sheet index
	 */
	public function setIndexByName(sheetName:String, newIndex:Int):Int;

	/**
	 * Get sheet count.
	 *
	 * @return int
	 */
	public function getSheetCount():Int;

	/**
	 * Get active sheet index.
	 *
	 * @return int Active sheet index
	 */
	public function getActiveSheetIndex():Int;

	/**
	 * Set active sheet index.
	 *
	 * @param int $pIndex Active sheet index
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setActiveSheetIndex(index:Int):Worksheet;

	/**
	 * Set active sheet index by name.
	 *
	 * @param string $pValue Sheet title
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setActiveSheetIndexByName(value:String):Worksheet;

	/**
	 * Get sheet names.
	 *
	 * @return string[]
	 */
	public function getSheetNames():String;

	/**
	 * Add external sheet.
	 *
	 * @param Worksheet $pSheet External sheet to add
	 * @param null|int $iSheetIndex Index where sheet should go (0,1,..., or null for last)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function addExternalSheet(sheet:Worksheet, sheetIndex:Null<Int> = null):Worksheet;

	/**
	 * Get named ranges.
	 *
	 * @return NamedRange[]
	 */
	public function getNamedRanges():NativeArray;

	/**
	 * Add named range.
	 *
	 * @param NamedRange $namedRange
	 *
	 * @return bool
	 */
	public function addNamedRange(namedRange:Any):Bool;

	/**
	 * Get named range.
	 *
	 * @param string $namedRange
	 * @param null|Worksheet $pSheet Scope. Use null for global scope
	 *
	 * @return null|NamedRange
	 */
	public function getNamedRange(namedRange:String, sheet:Worksheet = null):Null<Any>;

	/**
	 * Remove named range.
	 *
	 * @param string $namedRange
	 * @param null|Worksheet $pSheet scope: use null for global scope
	 *
	 * @return Spreadsheet
	 */
	public function removeNamedRange(namedRange:String, sheet:Worksheet = null):Spreadsheet;

	/**
	 * Get worksheet iterator.
	 *
	 * @return Iterator
	 */
	public function getWorksheetIterator():Any;

	/**
	 * Copy workbook (!= clone!).
	 *
	 * @return Spreadsheet
	 */
	public function copy():Spreadsheet;

	/**
	 * Get the workbook collection of cellXfs.
	 *
	 * @return Style[]
	 */
	public function getCellXfCollection():NativeArray;

	/**
	 * Get cellXf by index.
	 *
	 * @param int $pIndex
	 *
	 * @return Style
	 */
	public function getCellXfByIndex(index:Int):Style;

	/**
	 * Get cellXf by hash code.
	 *
	 * @param string $pValue
	 *
	 * @return false|Style
	 */
	public function getCellXfByHashCode(value:String):EitherType<Bool, Style>;

	/**
	 * Check if style exists in style collection.
	 *
	 * @param Style $pCellStyle
	 *
	 * @return bool
	 */
	public function cellXfExists(cellStyle:Style):Bool;

	/**
	 * Get default style.
	 *
	 * @throws Exception
	 *
	 * @return Style
	 */
	public function getDefaultStyle():Style;

	/**
	 * Add a cellXf to the workbook.
	 *
	 * @param Style $style
	 */
	public function addCellXf(style:Style):Void;

	/**
	 * Remove cellXf by index. It is ensured that all cells get their xf index updated.
	 *
	 * @param int $pIndex Index to cellXf
	 *
	 * @throws Exception
	 */
	public function removeCellXfByIndex(index:Int):Void;

	/**
	 * Get the cellXf supervisor.
	 *
	 * @return Style
	 */
	public function getCellXfSupervisor():Style;

	/**
	 * Get the workbook collection of cellStyleXfs.
	 *
	 * @return Style[]
	 */
	public function getCellStyleXfCollection():NativeArray;

	/**
	 * Get cellStyleXf by index.
	 *
	 * @param int $pIndex Index to cellXf
	 *
	 * @return Style
	 */
	public function getCellStyleXfByIndex(index:Int):Style;

	/**
	 * Get cellStyleXf by hash code.
	 *
	 * @param string $pValue
	 *
	 * @return false|Style
	 */
	public function getCellStyleXfByHashCode(value:String):EitherType<Bool, Style>;

	/**
	 * Add a cellStyleXf to the workbook.
	 *
	 * @param Style $pStyle
	 */
	public function addCellStyleXf(style:Style):Void;

	/**
	 * Remove cellStyleXf by index.
	 *
	 * @param int $pIndex Index to cellXf
	 *
	 * @throws Exception
	 */
	public function removeCellStyleXfByIndex(index:Int):Void;

	/**
	 * Eliminate all unneeded cellXf and afterwards update the xfIndex for all cells
	 * and columns in the workbook.
	 */
	public function garbageCollect():Void;

	/**
	 * Return the unique ID value assigned to this spreadsheet workbook.
	 *
	 * @return string
	 */
	public function getID():String;

	/**
	 * Get the visibility of the horizonal scroll bar in the application.
	 *
	 * @return bool True if horizonal scroll bar is visible
	 */
	public function getShowHorizontalScroll():Bool;

	/**
	 * Set the visibility of the horizonal scroll bar in the application.
	 *
	 * @param bool $showHorizontalScroll True if horizonal scroll bar is visible
	 */
	public function setShowHorizontalScroll(showHorizontalScroll:Bool):Void;

	/**
	 * Get the visibility of the vertical scroll bar in the application.
	 *
	 * @return bool True if vertical scroll bar is visible
	 */
	public function getShowVerticalScroll():Bool;

	/**
	 * Set the visibility of the vertical scroll bar in the application.
	 *
	 * @param bool $showVerticalScroll True if vertical scroll bar is visible
	 */
	public function setShowVerticalScroll(showVerticalScroll:Bool):Void;

	/**
	 * Get the visibility of the sheet tabs in the application.
	 *
	 * @return bool True if the sheet tabs are visible
	 */
	public function getShowSheetTabs():Bool;

	/**
	 * Set the visibility of the sheet tabs  in the application.
	 *
	 * @param bool $showSheetTabs True if sheet tabs are visible
	 */
	public function setShowSheetTabs(showSheetTabs:Bool):Void;

	/**
	 * Return whether the workbook window is minimized.
	 *
	 * @return bool true if workbook window is minimized
	 */
	public function getMinimized():Bool;

	/**
	 * Set whether the workbook window is minimized.
	 *
	 * @param bool $minimized true if workbook window is minimized
	 */
	public function setMinimized(minimized:Bool):Void;

	/**
	 * Return whether to group dates when presenting the user with
	 * filtering optiomd in the user interface.
	 *
	 * @return bool true if workbook window is minimized
	 */
	public function getAutoFilterDateGrouping():Bool;

	/**
	 * Set whether to group dates when presenting the user with
	 * filtering optiomd in the user interface.
	 *
	 * @param bool $autoFilterDateGrouping true if workbook window is minimized
	 */
	public function setAutoFilterDateGrouping(autoFilterDateGrouping:Bool):Void;

	/**
	 * Return the first sheet in the book view.
	 *
	 * @return int First sheet in book view
	 */
	public function getFirstSheetIndex():Int;

	/**
	 * Set the first sheet in the book view.
	 *
	 * @param int $firstSheetIndex First sheet in book view
	 *
	 * @throws Exception  if the given value is invalid
	 */
	public function setFirstSheetIndex(firstSheetIndex:Int):Void;

	/**
	 * Return the visibility status of the workbook.
	 *
	 * This may be one of the following three values:
	 * - visibile
	 *
	 * @return string Visible status
	 */
	public function getVisibility():Visibility;

	/**
	 * Set the visibility status of the workbook.
	 *
	 * Valid values are:
	 *  - 'visible' (self::VISIBILITY_VISIBLE):
	 *       Workbook window is visible
	 *  - 'hidden' (self::VISIBILITY_HIDDEN):
	 *       Workbook window is hidden, but can be shown by the user
	 *       via the user interface
	 *  - 'veryHidden' (self::VISIBILITY_VERY_HIDDEN):
	 *       Workbook window is hidden and cannot be shown in the
	 *       user interface.
	 *
	 * @param string $visibility visibility status of the workbook
	 *
	 * @throws Exception  if the given value is invalid
	 */
	public function setVisibility(visibility:Visibility):Void;

	/**
	 * Get the ratio between the workbook tabs bar and the horizontal scroll bar.
	 * TabRatio is assumed to be out of 1000 of the horizontal window width.
	 *
	 * @return int Ratio between the workbook tabs bar and the horizontal scroll bar
	 */
	public function getTabRatio():Int;

	/**
	 * Set the ratio between the workbook tabs bar and the horizontal scroll bar
	 * TabRatio is assumed to be out of 1000 of the horizontal window width.
	 *
	 * @param int $tabRatio Ratio between the tabs bar and the horizontal scroll bar
	 *
	 * @throws Exception  if the given value is invalid
	 */
	public function setTabRatio(tabRatio:Int):Void;
}

@:enum abstract Visibility(String) to String {
	// // Allowable values for workbook window visilbity
	var VISIBILITY_VISIBLE = 'visible';
	var VISIBILITY_HIDDEN = 'hidden';
	var VISIBILITY_VERY_HIDDEN = 'veryHidden';
}
