package php.phpoffice.phpspreadsheet.worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\RowDimension")
extern class RowDimension {
	/**
	 * Create a new RowDimension.
	 *
	 * @param int $pIndex Numeric row index
	 */
	public function new(index:Int = 0);

	/**
	 * Get Row Index.
	 *
	 * @return int
	 */
	public function getRowIndex():Int;

	/**
	 * Set Row Index.
	 *
	 * @param int $pValue
	 *
	 * @return RowDimension
	 */
	public function setRowIndex(value:Int):RowDimension;

	/**
	 * Get Row Height.
	 *
	 * @return float
	 */
	public function getRowHeight():Float;

	/**
	 * Set Row Height.
	 *
	 * @param float $pValue
	 *
	 * @return RowDimension
	 */
	public function setRowHeight(value:Float):RowDimension;

	/**
	 * Get ZeroHeight.
	 *
	 * @return bool
	 */
	public function getZeroHeight():Bool;

	/**
	 * Set ZeroHeight.
	 *
	 * @param bool $pValue
	 *
	 * @return RowDimension
	 */
	public function setZeroHeight(value:Bool):RowDimension;
}
