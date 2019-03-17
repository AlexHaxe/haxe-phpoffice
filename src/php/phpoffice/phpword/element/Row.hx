package php.phpoffice.phpword.element;

import php.phpoffice.phpword.style.RowStyle;

/**
 * Table row element
 *
 * @since 0.8.0
 */
@:native("PhpOffice\\PhpWord\\Element\\Row")
extern class Row extends AbstractElement {
	/**
	 * Create a new table row
	 *
	 * @param int $height
	 * @param mixed $style
	 */
	public function new(height:Int = null, style:Any = null);

	/**
	 * Add a cell
	 *
	 * @param int $width
	 * @param mixed $style
	 * @return \PhpOffice\PhpWord\Element\Cell
	 */
	public function addCell(width:Int = null, style:Any = null):Cell;

	/**
	 * Get all cells
	 *
	 * @return \PhpOffice\PhpWord\Element\Cell[]
	 */
	public function getCells():NativeArray;

	/**
	 * Get row style
	 *
	 * @return \PhpOffice\PhpWord\Style\Row
	 */
	public function getStyle():RowStyle;

	/**
	 * Get row height
	 *
	 * @return int
	 */
	public function getHeight():Int;
}
