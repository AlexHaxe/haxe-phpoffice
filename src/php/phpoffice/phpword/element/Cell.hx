package php.phpoffice.phpword.element;

import php.phpoffice.phpword.style.CellStyle;

/**
 * Table cell element
 */
@:native("PhpOffice\\PhpWord\\Element\\Cell")
extern class Cell extends AbstractContainer {
	/**
	 * Create new instance
	 *
	 * @param int $width
	 * @param array|\PhpOffice\PhpWord\Style\Cell $style
	 */
	public function new(width:Int = null, style:Any = null);

	/**
	 * Get cell style
	 *
	 * @return \PhpOffice\PhpWord\Style\Cell
	 */
	public function getStyle():CellStyle;

	/**
	 * Get cell width
	 *
	 * @return int
	 */
	public function getWidth():Int;
}
