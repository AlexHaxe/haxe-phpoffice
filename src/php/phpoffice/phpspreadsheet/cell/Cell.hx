package php.phpoffice.phpspreadsheet.cell;

import php.phpoffice.phpspreadsheet.worksheet.Worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Cell\\Cell")
extern class Cell {
	/**
	 * Create a new Cell.
	 *
	 * @param mixed $pValue
	 * @param string $pDataType
	 * @param Worksheet $pSheet
	 *
	 * @throws Exception
	 */
	public function new(value:Any, dataType:String, sheet:Worksheet);

	/**
	 * Get cell coordinate column.
	 *
	 * @return string
	 */
	public function getColumn():String;

	/**
	 * Get cell coordinate row.
	 *
	 * @return int
	 */
	public function getRow():Int;

	/**
	 * Get cell coordinate.
	 *
	 * @return string
	 */
	public function getCoordinate():String;

	/**
	 * Get cell value.
	 *
	 * @return mixed
	 */
	public function getValue():Any;

	/**
	 * Get cell value with formatting.
	 *
	 * @return string
	 */
	public function getFormattedValue():String;

	/**
	 * Set cell value.
	 *
	 *    Sets the value for a cell, automatically determining the datatype using the value binder
	 *
	 * @param mixed $pValue Value
	 *
	 * @throws Exception
	 *
	 * @return Cell
	 */
	public function setValue(value:Any):Cell;

	/**
	 * Set the value for a cell, with the explicit data type passed to the method (bypassing any use of the value binder).
	 *
	 * @param mixed $pValue Value
	 * @param string $pDataType Explicit data type, see DataType::TYPE_*
	 *
	 * @throws Exception
	 *
	 * @return Cell
	 */
	public function setValueExplicit(value:Any, dataType:String):Cell;

	/**
	 * Get calculated cell value.
	 *
	 * @param bool $resetLog Whether the calculation engine logger should be reset or not
	 *
	 * @throws Exception
	 *
	 * @return mixed
	 */
	public function getCalculatedValue(resetLog:Bool = true):Any;

	/**
	 * Set old calculated value (cached).
	 *
	 * @param mixed $pValue Value
	 *
	 * @return Cell
	 */
	public function setCalculatedValue(value:Any):Cell;

	/**
	 *    Get old calculated value (cached)
	 *    This returns the value last calculated by MS Excel or whichever spreadsheet program was used to
	 *        create the original spreadsheet file.
	 *    Note that this value is not guaranteed to reflect the actual calculated value because it is
	 *        possible that auto-calculation was disabled in the original spreadsheet, and underlying data
	 *        values used by the formula have changed since it was last calculated.
	 *
	 * @return mixed
	 */
	public function getOldCalculatedValue():Any;

	/**
	 * Get cell data type.
	 *
	 * @return string
	 */
	public function getDataType():String;

	/**
	 * Set cell data type.
	 *
	 * @param string $pDataType see DataType::TYPE_*
	 *
	 * @return Cell
	 */
	public function setDataType(dataType:String):Cell;

	/**
	 * Identify if the cell contains a formula.
	 *
	 * @return bool
	 */
	public function isFormula():Bool;

	/**
	 *    Does this cell contain Data validation rules?
	 *
	 * @throws Exception
	 *
	 * @return bool
	 */
	public function hasDataValidation():Bool;

	/**
	 * Get Data validation rules.
	 *
	 * @throws Exception
	 *
	 * @return DataValidation
	 */
	public function getDataValidation():Any;

	/**
	 * Set Data validation rules.
	 *
	 * @param DataValidation $pDataValidation
	 *
	 * @throws Exception
	 *
	 * @return Cell
	 */
	public function setDataValidation(dataValidation:Any = null):Cell;

	/**
	 * Does this cell contain valid value?
	 *
	 * @return bool
	 */
	public function hasValidValue():Bool;

	/**
	 * Does this cell contain a Hyperlink?
	 *
	 * @throws Exception
	 *
	 * @return bool
	 */
	public function hasHyperlink():Bool;

	/**
	 * Get Hyperlink.
	 *
	 * @throws Exception
	 *
	 * @return Hyperlink
	 */
	public function getHyperlink():Any;

	/**
	 * Set Hyperlink.
	 *
	 * @param Hyperlink $pHyperlink
	 *
	 * @throws Exception
	 *
	 * @return Cell
	 */
	public function setHyperlink(hyperlink:Any = null):Cell;

	/**
	 * Get cell collection.
	 *
	 * @return Cells
	 */
	public function getParent():Any;

	/**
	 * Get parent worksheet.
	 *
	 * @return Worksheet
	 */
	public function getWorksheet():Worksheet;

	/**
	 * Is this cell in a merge range.
	 *
	 * @return bool
	 */
	public function isInMergeRange():Bool;

	/**
	 * Is this cell the master (top left cell) in a merge range (that holds the actual data value).
	 *
	 * @return bool
	 */
	public function isMergeRangeValueCell():Bool;

	/**
	 * If this cell is in a merge range, then return the range.
	 *
	 * @return string
	 */
	public function getMergeRange():String;

	/**
	 * Get cell style.
	 *
	 * @return Style
	 */
	public function getStyle():Any;

	/**
	 * Re-bind parent.
	 *
	 * @param Worksheet $parent
	 *
	 * @return Cell
	 */
	public function rebindParent(parent:Worksheet):Cell;

	/**
	 *    Is cell in a specific range?
	 *
	 * @param string $pRange Cell range (e.g. A1:A1)
	 *
	 * @return bool
	 */
	public function isInRange(range:String):Bool;

	/**
	 * Compare 2 cells.
	 *
	 * @param Cell $a Cell a
	 * @param Cell $b Cell b
	 *
	 * @return int Result of comparison (always -1 or 1, never zero!)
	 */
	public static function compareCells(a:Cell, b:Cell):Int;

	/**
	 * Get value binder to use.
	 *
	 * @return IValueBinder
	 */
	public static function getValueBinder():Any;

	/**
	 * Set value binder to use.
	 *
	 * @param IValueBinder $binder
	 */
	public static function setValueBinder(binder:Any):Void;

	/**
	 * Get index to cellXf.
	 *
	 * @return int
	 */
	public function getXfIndex():Int;

	/**
	 * Set index to cellXf.
	 *
	 * @param int $pValue
	 *
	 * @return Cell
	 */
	public function setXfIndex(value:Int):Cell;

	/**
	 * Set the formula attributes.
	 *
	 * @param mixed $pAttributes
	 *
	 * @return Cell
	 */
	public function setFormulaAttributes(attributes:Any):Cell;

	/**
	 * Get the formula attributes.
	 */
	public function getFormulaAttributes():Any;
}
