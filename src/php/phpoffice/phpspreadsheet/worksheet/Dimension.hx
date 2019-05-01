package php.phpoffice.phpspreadsheet.worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\Dimension")
extern class Dimension {
	/**
	 * Create a new Dimension.
	 *
	 * @param int $initialValue Numeric row index
	 */
	public function new(initialValue:Null<Int> = null);

	/**
	 * Get Visible.
	 *
	 * @return bool
	 */
	public function getVisible():Bool;

	/**
	 * Set Visible.
	 *
	 * @param bool $pValue
	 *
	 * @return Dimension
	 */
	public function setVisible(value:Bool):Dimension;

	/**
	 * Get Outline Level.
	 *
	 * @return int
	 */
	public function getOutlineLevel():Int;

	/**
	 * Set Outline Level.
	 * Value must be between 0 and 7.
	 *
	 * @param int $pValue
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return Dimension
	 */
	public function setOutlineLevel(value:Int):Dimension;

	/**
	 * Get Collapsed.
	 *
	 * @return bool
	 */
	public function getCollapsed():Bool;

	/**
	 * Set Collapsed.
	 *
	 * @param bool $pValue
	 *
	 * @return Dimension
	 */
	public function setCollapsed(value:Bool):Dimension;

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
	 * @return Dimension
	 */
	public function setXfIndex(value:Int):Dimension;
}
