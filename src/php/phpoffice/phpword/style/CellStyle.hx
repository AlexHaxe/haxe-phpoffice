package php.phpoffice.phpword.style;

/**
 * Table cell style
 */
@:native("PhpOffice\\PhpWord\\Style\\Cell")
extern class CellStyle extends Border {
	/**
	 * Get vertical align.
	 *
	 * @return string
	 */
	public function getVAlign():String;

	/**
	 * Set vertical align
	 *
	 * @param string $value
	 * @return self
	 */
	public function setVAlign(value:String = null):CellStyle;

	/**
	 * Get text direction.
	 *
	 * @return string
	 */
	public function getTextDirection():String;

	/**
	 * Set text direction
	 *
	 * @param string $value
	 * @return self
	 */
	public function setTextDirection(value:String = null):CellStyle;

	/**
	 * Get background
	 *
	 * @return string
	 */
	public function getBgColor():String;

	/**
	 * Set background
	 *
	 * @param string $value
	 * @return self
	 */
	public function setBgColor(value:String = null):CellStyle;

	/**
	 * Get grid span (colspan).
	 *
	 * @return int
	 */
	public function getGridSpan():Int;

	/**
	 * Set grid span (colspan)
	 *
	 * @param int $value
	 * @return self
	 */
	public function setGridSpan(value:Int = null):CellStyle;

	/**
	 * Get vertical merge (rowspan).
	 *
	 * @return string
	 */
	public function getVMerge():String;

	/**
	 * Set vertical merge (rowspan)
	 *
	 * @param string $value
	 * @return self
	 */
	public function setVMerge(value:String = null):CellStyle;

	/**
	 * Get shading
	 *
	 * @return \PhpOffice\PhpWord\Style\Shading
	 */
	public function getShading():Any;

	/**
	 * Set shading
	 *
	 * @param mixed $value
	 * @return self
	 */
	public function setShading(value:Any = null):CellStyle;

	/**
	 * Get cell width
	 *
	 * @return int
	 */
	public function getWidth():Int;

	/**
	 * Set cell width
	 *
	 * @param int $value
	 * @return self
	 */
	public function setWidth(value:Int):CellStyle;

	/**
	 * Get width unit
	 *
	 * @return string
	 */
	public function getUnit():String;

	/**
	 * Set width unit
	 *
	 * @param string $value
	 */
	public function setUnit(value:String):Void;
}
