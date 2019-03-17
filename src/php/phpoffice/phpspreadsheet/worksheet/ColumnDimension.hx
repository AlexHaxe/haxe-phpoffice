package php.phpoffice.phpspreadsheet.worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\ColumnDimension")
extern class ColumnDimension {
	/**
	 * Create a new ColumnDimension.
	 *
	 * @param string $pIndex Character column index
	 */
	public function new(index:String = 'A');

	/**
	 * Get ColumnIndex.
	 *
	 * @return string
	 */
	public function getColumnIndex():String;

	/**
	 * Set ColumnIndex.
	 *
	 * @param string $pValue
	 *
	 * @return ColumnDimension
	 */
	public function setColumnIndex(value:String):ColumnDimension;

	/**
	 * Get Width.
	 *
	 * @return float
	 */
	public function getWidth():Float;

	/**
	 * Set Width.
	 *
	 * @param float $pValue
	 *
	 * @return ColumnDimension
	 */
	public function setWidth(value:Float):ColumnDimension;

	/**
	 * Get Auto Size.
	 *
	 * @return bool
	 */
	public function getAutoSize():Bool;

	/**
	 * Set Auto Size.
	 *
	 * @param bool $pValue
	 *
	 * @return ColumnDimension
	 */
	public function setAutoSize(value:Bool):ColumnDimension;
}
