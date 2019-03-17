package php.phpoffice.phpword.element;

import php.phpoffice.phpword.style.TableStyle;

/**
 * Table element
 */
@:native("PhpOffice\\PhpWord\\Element\\Table")
extern class Table extends AbstractElement {
	/**
	 * Create a new table
	 *
	 * @param mixed $style
	 */
	public function new(style:Any = null);

	/**
	 * Add a row
	 *
	 * @param int $height
	 * @param mixed $style
	 * @return \PhpOffice\PhpWord\Element\Row
	 */
	public function addRow(height:Int = null, style:Any = null):Row;

	/**
	 * Add a cell
	 *
	 * @param int $width
	 * @param mixed $style
	 * @return \PhpOffice\PhpWord\Element\Cell
	 */
	public function addCell(width:Int = null, style:Any = null):Cell;

	/**
	 * Get all rows
	 *
	 * @return \PhpOffice\PhpWord\Element\Row[]
	 */
	public function getRows():NativeArray;

	/**
	 * Get table style
	 *
	 * @return \PhpOffice\PhpWord\Style\Table
	 */
	public function getStyle():TableStyle;

	/**
	 * Get table width
	 *
	 * @return int
	 */
	public function getWidth():Int;

	/**
	 * Set table width.
	 *
	 * @param int $width
	 */
	public function setWidth(width:Int):Void;

	/**
	 * Get column count
	 *
	 * @return int
	 */
	public function countColumns():Int;

	/**
	 * The first declared cell width for each column
	 *
	 * @return int[]
	 */
	public function findFirstDefinedCellWidths():NativeArray;
}
