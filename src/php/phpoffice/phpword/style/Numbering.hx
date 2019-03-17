package php.phpoffice.phpword.style;

/**
 * Numbering style
 *
 * @see  http://www.schemacentral.com/sc/ooxml/e-w_numbering.html
 * @see  http://www.schemacentral.com/sc/ooxml/e-w_abstractNum-1.html
 * @see  http://www.schemacentral.com/sc/ooxml/e-w_num-1.html
 * @since 0.10.0
 */
@:native("PhpOffice\\PhpWord\\Style\\Numbering")
extern class Numbering extends AbstractStyle {
	/**
	 * Get Id
	 *
	 * @return int
	 */
	public function getNumId():Int;

	/**
	 * Set Id
	 *
	 * @param int $value
	 * @return self
	 */
	public function setNumId(value:Int):Numbering;

	/**
	 * Get multilevel type
	 *
	 * @return string
	 */
	public function getType():String;

	/**
	 * Set multilevel type
	 *
	 * @param string $value
	 * @return self
	 */
	public function setType(value:String):Numbering;

	/**
	 * Get levels
	 *
	 * @return NumberingLevel[]
	 */
	public function getLevels():NativeArray;

	/**
	 * Set multilevel type
	 *
	 * @param array $values
	 * @return self
	 */
	public function setLevels(values:NativeArray):Numbering;
}
