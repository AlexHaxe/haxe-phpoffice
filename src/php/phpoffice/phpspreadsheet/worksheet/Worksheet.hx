package php.phpoffice.phpspreadsheet.worksheet;

import php.phpoffice.phpspreadsheet.Spreadsheet;
import php.phpoffice.phpspreadsheet.cell.Cell;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\Worksheet")
extern class Worksheet {
	/**
	 * Create a new worksheet.
	 *
	 * @param Spreadsheet $parent
	 * @param string $pTitle
	 */
	public function new(parent:Spreadsheet = null, title:String = "Worksheet");

	/**
	 * Disconnect all cells from this Worksheet object,
	 * typically so that the worksheet object can be unset.
	 */
	public function disconnectCells():Void;

	/**
	 * Return the cell collection.
	 *
	 * @return Cells
	 */
	public function getCellCollection():Any;

	/**
	 * Get array of invalid characters for sheet title.
	 *
	 * @return array
	 */
	public static function getInvalidCharacters():NativeArray;

	/**
	 * Get a sorted list of all cell coordinates currently held in the collection by row and column.
	 *
	 * @param bool $sorted Also sort the cell collection?
	 *
	 * @return string[]
	 */
	public function getCoordinates(sorted:Bool = true):NativeArray;

	/**
	 * Get collection of row dimensions.
	 *
	 * @return RowDimension[]
	 */
	public function getRowDimensions():NativeArray;

	/**
	 * Get default row dimension.
	 *
	 * @return RowDimension
	 */
	public function getDefaultRowDimension():RowDimension;

	/**
	 * Get collection of column dimensions.
	 *
	 * @return ColumnDimension[]
	 */
	public function getColumnDimensions():NativeArray;

	/**
	 * Get default column dimension.
	 *
	 * @return ColumnDimension
	 */
	public function getDefaultColumnDimension():Any;

	/**
	 * Get collection of drawings.
	 *
	 * @return BaseDrawing[]
	 */
	public function getDrawingCollection():NativeArray;

	/**
	 * Get collection of charts.
	 *
	 * @return Chart[]
	 */
	public function getChartCollection():NativeArray;

	/**
	 * Add chart.
	 *
	 * @param Chart $pChart
	 * @param null|int $iChartIndex Index where chart should go (0,1,..., or null for last)
	 *
	 * @return Chart
	 */
	public function addChart(chart:Any, chartIndex:Null<Int> = null):Any;

	/**
	 * Return the count of charts on this worksheet.
	 *
	 * @return int The number of charts
	 */
	public function getChartCount():Int;

	/**
	 * Get a chart by its index position.
	 *
	 * @param string $index Chart index position
	 *
	 * @return Chart|false
	 */
	public function getChartByIndex(index:String):Any;

	/**
	 * Return an array of the names of charts on this worksheet.
	 *
	 * @return string[] The names of charts
	 */
	public function getChartNames():NativeArray;

	/**
	 * Get a chart by name.
	 *
	 * @param string $chartName Chart name
	 *
	 * @return Chart|false
	 */
	public function getChartByName(chartName:String):Any;

	/**
	 * Refresh column dimensions.
	 *
	 * @return Worksheet
	 */
	public function refreshColumnDimensions():Worksheet;

	/**
	 * Refresh row dimensions.
	 *
	 * @return Worksheet
	 */
	public function refreshRowDimensions():Worksheet;

	/**
	 * Calculate worksheet dimension.
	 *
	 * @return string String containing the dimension of this worksheet
	 */
	public function calculateWorksheetDimension():String;

	/**
	 * Calculate worksheet data dimension.
	 *
	 * @return string String containing the dimension of this worksheet that actually contain data
	 */
	public function calculateWorksheetDataDimension():String;

	/**
	 * Calculate widths for auto-size columns.
	 *
	 * @return Worksheet;
	 */
	public function calculateColumnWidths():Worksheet;

	/**
	 * Get parent.
	 *
	 * @return Spreadsheet
	 */
	public function getParent():Spreadsheet;

	/**
	 * Re-bind parent.
	 *
	 * @param Spreadsheet $parent
	 *
	 * @return Worksheet
	 */
	public function rebindParent(parent:Spreadsheet):Worksheet;

	/**
	 * Get title.
	 *
	 * @return string
	 */
	public function getTitle():String;

	/**
	 * Set title.
	 *
	 * @param string $pValue String containing the dimension of this worksheet
	 * @param bool $updateFormulaCellReferences Flag indicating whether cell references in formulae should
	 *            be updated to reflect the new sheet name.
	 *          This should be left as the default true, unless you are
	 *          certain that no formula cells on any worksheet contain
	 *          references to this worksheet
	 * @param bool $validate False to skip validation of new title. WARNING: This should only be set
	 *                       at parse time (by Readers), where titles can be assumed to be valid.
	 *
	 * @return Worksheet
	 */
	public function setTitle(pValue:String, updateFormulaCellReferences:Bool = true, validate:Bool = true):Worksheet;

	/**
	 * Get sheet state.
	 *
	 * @return string Sheet state (visible, hidden, veryHidden)
	 */
	public function getSheetState():String;

	/**
	 * Set sheet state.
	 *
	 * @param string $value Sheet state (visible, hidden, veryHidden)
	 *
	 * @return Worksheet
	 */
	public function setSheetState(value:String):Worksheet;

	/**
	 * Get page setup.
	 *
	 * @return PageSetup
	 */
	public function getPageSetup():Any;

	/**
	 * Set page setup.
	 *
	 * @param PageSetup $pValue
	 *
	 * @return Worksheet
	 */
	public function setPageSetup(value:Any):Worksheet;

	/**
	 * Get page margins.
	 *
	 * @return PageMargins
	 */
	public function getPageMargins():Any;

	/**
	 * Set page margins.
	 *
	 * @param PageMargins $pValue
	 *
	 * @return Worksheet
	 */
	public function setPageMargins(value:Any):Worksheet;

	/**
	 * Get page header/footer.
	 *
	 * @return HeaderFooter
	 */
	public function getHeaderFooter():Any;

	/**
	 * Set page header/footer.
	 *
	 * @param HeaderFooter $pValue
	 *
	 * @return Worksheet
	 */
	public function setHeaderFooter(value:Any):Worksheet;

	/**
	 * Get sheet view.
	 *
	 * @return SheetView
	 */
	public function getSheetView():Any;

	/**
	 * Set sheet view.
	 *
	 * @param SheetView $pValue
	 *
	 * @return Worksheet
	 */
	public function setSheetView(value:Any):Worksheet;

	/**
	 * Get Protection.
	 *
	 * @return Protection
	 */
	public function getProtection():Any;

	/**
	 * Set Protection.
	 *
	 * @param Protection $pValue
	 *
	 * @return Worksheet
	 */
	public function setProtection(value:Any):Worksheet;

	/**
	 * Get highest worksheet column.
	 *
	 * @param string $row Return the data highest column for the specified row,
	 *                                     or the highest column of any row if no row number is passed
	 *
	 * @return string Highest column name
	 */
	public function getHighestColumn(row:Null<String> = null):String;

	/**
	 * Get highest worksheet column that contains data.
	 *
	 * @param string $row Return the highest data column for the specified row,
	 *                                     or the highest data column of any row if no row number is passed
	 *
	 * @return string Highest column name that contains data
	 */
	public function getHighestDataColumn(row:Null<String> = null):String;

	/**
	 * Get highest worksheet row.
	 *
	 * @param string $column Return the highest data row for the specified column,
	 *                                     or the highest row of any column if no column letter is passed
	 *
	 * @return int Highest row number
	 */
	public function getHighestRow(column:Null<String> = null):Int;

	/**
	 * Get highest worksheet row that contains data.
	 *
	 * @param string $column Return the highest data row for the specified column,
	 *                                     or the highest data row of any column if no column letter is passed
	 *
	 * @return string Highest row number that contains data
	 */
	public function getHighestDataRow(column:Null<String> = null):String;

	/**
	 * Get highest worksheet column and highest row that have cell records.
	 *
	 * @return array Highest column name and highest row number
	 */
	public function getHighestRowAndColumn():NativeArray;

	/**
	 * Set a cell value.
	 *
	 * @param string $pCoordinate Coordinate of the cell, eg: 'A1'
	 * @param mixed $pValue Value of the cell
	 *
	 * @return Worksheet
	 */
	public function setCellValue(coordinate:String, value:Any):Worksheet;

	/**
	 * Set a cell value by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 * @param mixed $value Value of the cell
	 *
	 * @return Worksheet
	 */
	public function setCellValueByColumnAndRow(columnIndex:Int, row:Int, value:Any):Worksheet;

	/**
	 * Set a cell value.
	 *
	 * @param string $pCoordinate Coordinate of the cell, eg: 'A1'
	 * @param mixed $pValue Value of the cell
	 * @param string $pDataType Explicit data type, see DataType::TYPE_*
	 *
	 * @return Worksheet
	 */
	public function setCellValueExplicit(coordinate:String, value:Any, dataType:String):Worksheet;

	/**
	 * Set a cell value by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 * @param mixed $value Value of the cell
	 * @param string $dataType Explicit data type, see DataType::TYPE_*
	 *
	 * @return Worksheet
	 */
	public function setCellValueExplicitByColumnAndRow(columnIndex:Int, row:Int, value:Any, dataType:String):Worksheet;

	/**
	 * Get cell at a specific coordinate.
	 *
	 * @param string $pCoordinate Coordinate of the cell, eg: 'A1'
	 * @param bool $createIfNotExists Flag indicating whether a new cell should be created if it doesn't
	 *                                       already exist, or a null should be returned instead
	 *
	 * @throws Exception
	 *
	 * @return null|Cell Cell that was found/created or null
	 */
	public function getCell(coordinate:String, createIfNotExists:Bool = true):Null<Cell>;

	/**
	 * Get cell at a specific coordinate by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 * @param bool $createIfNotExists Flag indicating whether a new cell should be created if it doesn't
	 *                                       already exist, or a null should be returned instead
	 *
	 * @return null|Cell Cell that was found/created or null
	 */
	public function getCellByColumnAndRow(columnIndex:Int, row:Int, createIfNotExists:Bool = true):Null<Cell>;

	/**
	 * Create a new cell at the specified coordinate.
	 *
	 * @param string $pCoordinate Coordinate of the cell
	 *
	 * @return Cell Cell that was created
	 */
	private function createNewCell(coordinate:String):Cell;

	/**
	 * Does the cell at a specific coordinate exist?
	 *
	 * @param string $pCoordinate Coordinate of the cell eg: 'A1'
	 *
	 * @throws Exception
	 *
	 * @return bool
	 */
	public function cellExists(coordinate:String):Bool;

	/**
	 * Cell at a specific coordinate by using numeric cell coordinates exists?
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 *
	 * @return bool
	 */
	public function cellExistsByColumnAndRow(columnIndex:Int, row:Int):Bool;

	/**
	 * Get row dimension at a specific row.
	 *
	 * @param int $pRow Numeric index of the row
	 * @param bool $create
	 *
	 * @return RowDimension
	 */
	public function getRowDimension(row:Int, create:Bool = true):RowDimension;

	/**
	 * Get column dimension at a specific column.
	 *
	 * @param string $pColumn String index of the column eg: 'A'
	 * @param bool $create
	 *
	 * @return ColumnDimension
	 */
	public function getColumnDimension(column:String, create:Bool = true):ColumnDimension;

	/**
	 * Get column dimension at a specific column by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 *
	 * @return ColumnDimension
	 */
	public function getColumnDimensionByColumn(columnIndex:Int):ColumnDimension;

	/**
	 * Get styles.
	 *
	 * @return Style[]
	 */
	public function getStyles():NativeArray;

	/**
	 * Get style for cell.
	 *
	 * @param string $pCellCoordinate Cell coordinate (or range) to get style for, eg: 'A1'
	 *
	 * @throws Exception
	 *
	 * @return Style
	 */
	public function getStyle(cellCoordinate:String):Any;

	/**
	 * Get conditional styles for a cell.
	 *
	 * @param string $pCoordinate eg: 'A1'
	 *
	 * @return Conditional[]
	 */
	public function getConditionalStyles(coordinate:String):NativeArray;

	/**
	 * Do conditional styles exist for this cell?
	 *
	 * @param string $pCoordinate eg: 'A1'
	 *
	 * @return bool
	 */
	public function conditionalStylesExists(coordinate:String):Bool;

	/**
	 * Removes conditional styles for a cell.
	 *
	 * @param string $pCoordinate eg: 'A1'
	 *
	 * @return Worksheet
	 */
	public function removeConditionalStyles(coordinate:String):Worksheet;

	/**
	 * Get collection of conditional styles.
	 *
	 * @return array
	 */
	public function getConditionalStylesCollection():NativeArray;

	/**
	 * Set conditional styles.
	 *
	 * @param string $pCoordinate eg: 'A1'
	 * @param $pValue Conditional[]
	 *
	 * @return Worksheet
	 */
	public function setConditionalStyles(coordinate:String, value:NativeArray):Worksheet;

	/**
	 * Get style for cell by using numeric cell coordinates.
	 *
	 * @param int $columnIndex1 Numeric column coordinate of the cell
	 * @param int $row1 Numeric row coordinate of the cell
	 * @param null|int $columnIndex2 Numeric column coordinate of the range cell
	 * @param null|int $row2 Numeric row coordinate of the range cell
	 *
	 * @return Style
	 */
	public function getStyleByColumnAndRow(columnIndex1:Int, row1:Int, columnIndex2:Null<Int> = null, row2:Null<Int> = null):Any;

	/**
	 * Duplicate cell style to a range of cells.
	 *
	 * Please note that this will overwrite existing cell styles for cells in range!
	 *
	 * @param Style $pCellStyle Cell style to duplicate
	 * @param string $pRange Range of cells (i.e. "A1:B10"), or just one cell (i.e. "A1")
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function duplicateStyle(cellStyle:Any, range:String):Worksheet;

	/**
	 * Duplicate conditional style to a range of cells.
	 *
	 * Please note that this will overwrite existing cell styles for cells in range!
	 *
	 * @param Conditional[] $pCellStyle Cell style to duplicate
	 * @param string $pRange Range of cells (i.e. "A1:B10"), or just one cell (i.e. "A1")
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function duplicateConditionalStyle(cellStyle:NativeArray, range:String = ''):Worksheet;

	/**
	 * Set break on a cell.
	 *
	 * @param string $pCoordinate Cell coordinate (e.g. A1)
	 * @param int $pBreak Break type (type of Worksheet::BREAK_*)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setBreak(coordinate:String, breakType:Breaktype):Worksheet;

	/**
	 * Set break on a cell by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 * @param int $break Break type (type of Worksheet::BREAK_*)
	 *
	 * @return Worksheet
	 */
	public function setBreakByColumnAndRow(columnIndex:Int, row:Int, breakType:Breaktype):Worksheet;

	/**
	 * Get breaks.
	 *
	 * @return array[]
	 */
	public function getBreaks():NativeArray;

	/**
	 * Set merge on a cell range.
	 *
	 * @param string $pRange Cell range (e.g. A1:E1)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function mergeCells(range:String):Worksheet;

	/**
	 * Set merge on a cell range by using numeric cell coordinates.
	 *
	 * @param int $columnIndex1 Numeric column coordinate of the first cell
	 * @param int $row1 Numeric row coordinate of the first cell
	 * @param int $columnIndex2 Numeric column coordinate of the last cell
	 * @param int $row2 Numeric row coordinate of the last cell
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function mergeCellsByColumnAndRow(columnIndex1:Int, row1:Int, columnIndex2:Int, row2:Int):Worksheet;

	/**
	 * Remove merge on a cell range.
	 *
	 * @param string $pRange Cell range (e.g. A1:E1)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function unmergeCells(range:String):Worksheet;

	/**
	 * Remove merge on a cell range by using numeric cell coordinates.
	 *
	 * @param int $columnIndex1 Numeric column coordinate of the first cell
	 * @param int $row1 Numeric row coordinate of the first cell
	 * @param int $columnIndex2 Numeric column coordinate of the last cell
	 * @param int $row2 Numeric row coordinate of the last cell
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function unmergeCellsByColumnAndRow(columnIndex1:Int, row1:Int, columnIndex2:Int, row2:Int):Worksheet;

	/**
	 * Get merge cells array.
	 *
	 * @return array[]
	 */
	public function getMergeCells():NativeArray;

	/**
	 * Set merge cells array for the entire sheet. Use instead mergeCells() to merge
	 * a single cell range.
	 *
	 * @param array $pValue
	 *
	 * @return Worksheet
	 */
	public function setMergeCells(vValue:NativeArray):Worksheet;

	/**
	 * Set protection on a cell range.
	 *
	 * @param string $pRange Cell (e.g. A1) or cell range (e.g. A1:E1)
	 * @param string $pPassword Password to unlock the protection
	 * @param bool $pAlreadyHashed If the password has already been hashed, set this to true
	 *
	 * @return Worksheet
	 */
	public function protectCells(range:String, password:String, alreadyHashed:Bool = false):Worksheet;

	/**
	 * Set protection on a cell range by using numeric cell coordinates.
	 *
	 * @param int $columnIndex1 Numeric column coordinate of the first cell
	 * @param int $row1 Numeric row coordinate of the first cell
	 * @param int $columnIndex2 Numeric column coordinate of the last cell
	 * @param int $row2 Numeric row coordinate of the last cell
	 * @param string $password Password to unlock the protection
	 * @param bool $alreadyHashed If the password has already been hashed, set this to true
	 *
	 * @return Worksheet
	 */
	public function protectCellsByColumnAndRow(columnIndex1:Int, row1:Int, columnIndex2:Int, row2:Int, password:String, alreadyHashed:Bool = false):Worksheet;

	/**
	 * Remove protection on a cell range.
	 *
	 * @param string $pRange Cell (e.g. A1) or cell range (e.g. A1:E1)
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function unprotectCells(range:String):Worksheet;

	/**
	 * Remove protection on a cell range by using numeric cell coordinates.
	 *
	 * @param int $columnIndex1 Numeric column coordinate of the first cell
	 * @param int $row1 Numeric row coordinate of the first cell
	 * @param int $columnIndex2 Numeric column coordinate of the last cell
	 * @param int $row2 Numeric row coordinate of the last cell
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function unprotectCellsByColumnAndRow(columnIndex1:Int, row1:Int, columnIndex2:Int, row2:Int):Worksheet;

	/**
	 * Get protected cells.
	 *
	 * @return array[]
	 */
	public function getProtectedCells():NativeArray;

	/**
	 * Get Autofilter.
	 *
	 * @return AutoFilter
	 */
	public function getAutoFilter():Any;

	/**
	 * Set AutoFilter.
	 *
	 * @param AutoFilter|string $pValue
	 *            A simple string containing a Cell range like 'A1:E10' is permitted for backward compatibility
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setAutoFilter(value:Any):Worksheet;

	/**
	 * Set Autofilter Range by using numeric cell coordinates.
	 *
	 * @param int $columnIndex1 Numeric column coordinate of the first cell
	 * @param int $row1 Numeric row coordinate of the first cell
	 * @param int $columnIndex2 Numeric column coordinate of the second cell
	 * @param int $row2 Numeric row coordinate of the second cell
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setAutoFilterByColumnAndRow(columnIndex1:Int, row1:Int, columnIndex2:Int, row2:Int):Worksheet;

	/**
	 * Remove autofilter.
	 *
	 * @return Worksheet
	 */
	public function removeAutoFilter():Worksheet;

	/**
	 * Get Freeze Pane.
	 *
	 * @return string
	 */
	public function getFreezePane():String;

	/**
	 * Freeze Pane.
	 *
	 * Examples:
	 *
	 *     - A2 will freeze the rows above cell A2 (i.e row 1)
	 *     - B1 will freeze the columns to the left of cell B1 (i.e column A)
	 *     - B2 will freeze the rows above and to the left of cell B2 (i.e row 1 and column A)
	 *
	 * @param null|string $cell Position of the split
	 * @param null|string $topLeftCell default position of the right bottom pane
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function freezePane(cell:Null<String>, topLeftCell:Null<String> = null):Worksheet;

	/**
	 * Freeze Pane by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 *
	 * @return Worksheet
	 */
	public function freezePaneByColumnAndRow(columnIndex:Int, row:Int):Worksheet;

	/**
	 * Unfreeze Pane.
	 *
	 * @return Worksheet
	 */
	public function unfreezePane():Worksheet;

	/**
	 * Get the default position of the right bottom pane.
	 *
	 * @return int
	 */
	public function getTopLeftCell():Int;

	/**
	 * Insert a new row, updating all possible related data.
	 *
	 * @param int $pBefore Insert before this one
	 * @param int $pNumRows Number of rows to insert
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function insertNewRowBefore(before:Int, numRows:Int = 1):Worksheet;

	/**
	 * Insert a new column, updating all possible related data.
	 *
	 * @param int $pBefore Insert before this one, eg: 'A'
	 * @param int $pNumCols Number of columns to insert
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function insertNewColumnBefore(before:Int, numCols:Int = 1):Worksheet;

	/**
	 * Insert a new column, updating all possible related data.
	 *
	 * @param int $beforeColumnIndex Insert before this one (numeric column coordinate of the cell)
	 * @param int $pNumCols Number of columns to insert
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function insertNewColumnBeforeByIndex(beforeColumnIndex:Int, numCols:Int = 1):Worksheet;

	/**
	 * Delete a row, updating all possible related data.
	 *
	 * @param int $pRow Remove starting with this one
	 * @param int $pNumRows Number of rows to remove
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function removeRow(row:Int, numRows:Int = 1):Worksheet;

	/**
	 * Remove a column, updating all possible related data.
	 *
	 * @param string $pColumn Remove starting with this one, eg: 'A'
	 * @param int $pNumCols Number of columns to remove
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function removeColumn(column:String, numCols:Int = 1):Worksheet;

	/**
	 * Remove a column, updating all possible related data.
	 *
	 * @param int $columnIndex Remove starting with this one (numeric column coordinate of the cell)
	 * @param int $numColumns Number of columns to remove
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function removeColumnByIndex(columnIndex:Int, numColumns:Int = 1):Worksheet;

	/**
	 * Show gridlines?
	 *
	 * @return bool
	 */
	public function getShowGridlines():Bool;

	/**
	 * Set show gridlines.
	 *
	 * @param bool $pValue Show gridlines (true/false)
	 *
	 * @return Worksheet
	 */
	public function setShowGridlines(value:Bool):Worksheet;

	/**
	 * Print gridlines?
	 *
	 * @return bool
	 */
	public function getPrintGridlines():Bool;

	/**
	 * Set print gridlines.
	 *
	 * @param bool $pValue Print gridlines (true/false)
	 *
	 * @return Worksheet
	 */
	public function setPrintGridlines(value:Bool):Worksheet;

	/**
	 * Show row and column headers?
	 *
	 * @return bool
	 */
	public function getShowRowColHeaders():Bool;

	/**
	 * Set show row and column headers.
	 *
	 * @param bool $pValue Show row and column headers (true/false)
	 *
	 * @return Worksheet
	 */
	public function setShowRowColHeaders(value:Bool):Worksheet;

	/**
	 * Show summary below? (Row/Column outlining).
	 *
	 * @return bool
	 */
	public function getShowSummaryBelow():Bool;

	/**
	 * Set show summary below.
	 *
	 * @param bool $pValue Show summary below (true/false)
	 *
	 * @return Worksheet
	 */
	public function setShowSummaryBelow(value:Bool):Worksheet;

	/**
	 * Show summary right? (Row/Column outlining).
	 *
	 * @return bool
	 */
	public function getShowSummaryRight():Bool;

	/**
	 * Set show summary right.
	 *
	 * @param bool $pValue Show summary right (true/false)
	 *
	 * @return Worksheet
	 */
	public function setShowSummaryRight(value:Bool):Worksheet;

	/**
	 * Get comments.
	 *
	 * @return Comment[]
	 */
	public function getComments():NativeArray;

	/**
	 * Set comments array for the entire sheet.
	 *
	 * @param Comment[] $pValue
	 *
	 * @return Worksheet
	 */
	public function setComments(value:NativeArray):Worksheet;

	/**
	 * Get comment for cell.
	 *
	 * @param string $pCellCoordinate Cell coordinate to get comment for, eg: 'A1'
	 *
	 * @throws Exception
	 *
	 * @return Comment
	 */
	public function getComment(cellCoordinate:String):Any;

	/**
	 * Get comment for cell by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 *
	 * @return Comment
	 */
	public function getCommentByColumnAndRow(columnIndex:Int, row:Int):Any;

	/**
	 * Get active cell.
	 *
	 * @return string Example: 'A1'
	 */
	public function getActiveCell():String;

	/**
	 * Get selected cells.
	 *
	 * @return string
	 */
	public function getSelectedCells():String;

	/**
	 * Selected cell.
	 *
	 * @param string $pCoordinate Cell (i.e. A1)
	 *
	 * @return Worksheet
	 */
	public function setSelectedCell(coordinate:String):Worksheet;

	/**
	 * Select a range of cells.
	 *
	 * @param string $pCoordinate Cell range, examples: 'A1', 'B2:G5', 'A:C', '3:6'
	 *
	 * @return Worksheet
	 */
	public function setSelectedCells(coordinate:String):Worksheet;

	/**
	 * Selected cell by using numeric cell coordinates.
	 *
	 * @param int $columnIndex Numeric column coordinate of the cell
	 * @param int $row Numeric row coordinate of the cell
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setSelectedCellByColumnAndRow(columnIndex:Int, row:Int):Worksheet;

	/**
	 * Get right-to-left.
	 *
	 * @return bool
	 */
	public function getRightToLeft():Bool;

	/**
	 * Set right-to-left.
	 *
	 * @param bool $value Right-to-left true/false
	 *
	 * @return Worksheet
	 */
	public function setRightToLeft(value:Bool):Worksheet;

	/**
	 * Fill worksheet from values in array.
	 *
	 * @param array $source Source array
	 * @param mixed $nullValue Value in source array that stands for blank cell
	 * @param string $startCell Insert array starting from this cell address as the top left coordinate
	 * @param bool $strictNullComparison Apply strict comparison when testing for null values in the array
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function fromArray(source:NativeArray, nullValue:Null<Any> = null, startCell:String = 'A1', strictNullComparison:Bool = false):Worksheet;

	/**
	 * Create array from a range of cells.
	 *
	 * @param string $pRange Range of cells (i.e. "A1:B10"), or just one cell (i.e. "A1")
	 * @param mixed $nullValue Value returned in the array entry if a cell doesn't exist
	 * @param bool $calculateFormulas Should formulas be calculated?
	 * @param bool $formatData Should formatting be applied to cell values?
	 * @param bool $returnCellRef False - Return a simple array of rows and columns indexed by number counting from zero
	 *                               True - Return rows and columns indexed by their actual row and column IDs
	 *
	 * @return array
	 */
	public function rangeToArray(range:String, nullValue:Null<Any> = null, calculateFormulas:Bool = true, formatData:Bool = true,
		returnCellRef:Bool = false):NativeArray;

	/**
	 * Create array from a range of cells.
	 *
	 * @param string $pNamedRange Name of the Named Range
	 * @param mixed $nullValue Value returned in the array entry if a cell doesn't exist
	 * @param bool $calculateFormulas Should formulas be calculated?
	 * @param bool $formatData Should formatting be applied to cell values?
	 * @param bool $returnCellRef False - Return a simple array of rows and columns indexed by number counting from zero
	 *                                True - Return rows and columns indexed by their actual row and column IDs
	 *
	 * @throws Exception
	 *
	 * @return array
	 */
	public function namedRangeToArray(namedRange:String, nullValue:Null<Any> = null, calculateFormulas:Bool = true, formatData:Bool = true,
		returnCellRef:Bool = false):NativeArray;

	/**
	 * Create array from worksheet.
	 *
	 * @param mixed $nullValue Value returned in the array entry if a cell doesn't exist
	 * @param bool $calculateFormulas Should formulas be calculated?
	 * @param bool $formatData Should formatting be applied to cell values?
	 * @param bool $returnCellRef False - Return a simple array of rows and columns indexed by number counting from zero
	 *                               True - Return rows and columns indexed by their actual row and column IDs
	 *
	 * @return array
	 */
	public function toArray(nullValue:Null<Any> = null, calculateFormulas:Bool = true, formatData:Bool = true, returnCellRef:Bool = false):NativeArray;

	/**
	 * Get row iterator.
	 *
	 * @param int $startRow The row number at which to start iterating
	 * @param int $endRow The row number at which to stop iterating
	 *
	 * @return RowIterator
	 */
	public function getRowIterator(startRow:Int = 1, endRow:Null<Int> = null):Any;

	/**
	 * Get column iterator.
	 *
	 * @param string $startColumn The column address at which to start iterating
	 * @param string $endColumn The column address at which to stop iterating
	 *
	 * @return ColumnIterator
	 */
	public function getColumnIterator(startColumn:String = 'A', endColumn:Null<String> = null):Any;

	/**
	 * Run PhpSpreadsheet garbage collector.
	 *
	 * @return Worksheet
	 */
	public function garbageCollect():Worksheet;

	/**
	 * Get hash code.
	 *
	 * @return string Hash code
	 */
	public function getHashCode():String;

	/**
	 * Extract worksheet title from range.
	 *
	 * Example: extractSheetTitle("testSheet!A1") ==> 'A1'
	 * Example: extractSheetTitle("'testSheet 1'!A1", true) ==> ['testSheet 1', 'A1'];
	 *
	 * @param string $pRange Range to extract title from
	 * @param bool $returnRange Return range? (see example)
	 *
	 * @return mixed
	 */
	public static function extractSheetTitle(range:String, returnRange:Bool = false):Any;

	/**
	 * Get hyperlink.
	 *
	 * @param string $pCellCoordinate Cell coordinate to get hyperlink for, eg: 'A1'
	 *
	 * @return Hyperlink
	 */
	public function getHyperlink(cellCoordinate:String):Any;

	/**
	 * Set hyperlink.
	 *
	 * @param string $pCellCoordinate Cell coordinate to insert hyperlink, eg: 'A1'
	 * @param null|Hyperlink $pHyperlink
	 *
	 * @return Worksheet
	 */
	public function setHyperlink(cellCoordinate:String, hyperlink:Any = null):Worksheet;

	/**
	 * Hyperlink at a specific coordinate exists?
	 *
	 * @param string $pCoordinate eg: 'A1'
	 *
	 * @return bool
	 */
	public function hyperlinkExists(coordinate:String):Bool;

	/**
	 * Get collection of hyperlinks.
	 *
	 * @return Hyperlink[]
	 */
	public function getHyperlinkCollection():NativeArray;

	/**
	 * Get data validation.
	 *
	 * @param string $pCellCoordinate Cell coordinate to get data validation for, eg: 'A1'
	 *
	 * @return DataValidation
	 */
	public function getDataValidation(cellCoordinate:String):Any;

	/**
	 * Set data validation.
	 *
	 * @param string $pCellCoordinate Cell coordinate to insert data validation, eg: 'A1'
	 * @param null|DataValidation $pDataValidation
	 *
	 * @return Worksheet
	 */
	public function setDataValidation(cellCoordinate:String, dataValidation:Any = null):Worksheet;

	/**
	 * Data validation at a specific coordinate exists?
	 *
	 * @param string $pCoordinate eg: 'A1'
	 *
	 * @return bool
	 */
	public function dataValidationExists(coordinate:String):Bool;

	/**
	 * Get collection of data validations.
	 *
	 * @return DataValidation[]
	 */
	public function getDataValidationCollection():NativeArray;

	/**
	 * Accepts a range, returning it as a range that falls within the current highest row and column of the worksheet.
	 *
	 * @param string $range
	 *
	 * @return string Adjusted range value
	 */
	public function shrinkRangeToFit(range:String):String;

	/**
	 * Get tab color.
	 *
	 * @return Color
	 */
	public function getTabColor():Any;

	/**
	 * Reset tab color.
	 *
	 * @return Worksheet
	 */
	public function resetTabColor():Worksheet;

	/**
	 * Tab color set?
	 *
	 * @return bool
	 */
	public function isTabColorSet():Bool;

	/**
	 * Copy worksheet (!= clone!).
	 *
	 * @return Worksheet
	 */
	public function copy():Worksheet;

	/**
	 * Define the code name of the sheet.
	 *
	 * @param string $pValue Same rule as Title minus space not allowed (but, like Excel, change
	 *                       silently space to underscore)
	 * @param bool $validate False to skip validation of new title. WARNING: This should only be set
	 *                       at parse time (by Readers), where titles can be assumed to be valid.
	 *
	 * @throws Exception
	 *
	 * @return Worksheet
	 */
	public function setCodeName(value:String, validate:Bool = true):Worksheet;

	/**
	 * Return the code name of the sheet.
	 *
	 * @return null|string
	 */
	public function getCodeName():Null<String>;

	/**
	 * Sheet has a code name ?
	 *
	 * @return bool
	 */
	public function hasCodeName():Bool;
}

@:enum abstract Breaktype(Int) to Int {
	var BREAK_NONE = 0;
	var BREAK_ROW = 1;
	var BREAK_COLUMN = 2;
}
