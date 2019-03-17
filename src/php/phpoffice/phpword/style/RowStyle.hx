package php.phpoffice.phpword.style;

/**
 * Table row style
 *
 * @since 0.8.0
 */
@:native("PhpOffice\\PhpWord\\Style\\Row")
extern class RowStyle extends AbstractStyle {
	/**
	 * Create a new row style
	 */
	public function new();

	/**
	 * Is tblHeader
	 *
	 * @return bool
	 */
	public function isTblHeader():Bool;

	/**
	 * Is tblHeader
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setTblHeader(value:Bool = true):RowStyle;

	/**
	 * Is cantSplit
	 *
	 * @return bool
	 */
	public function isCantSplit():Bool;

	/**
	 * Is cantSplit
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setCantSplit(value:Bool = true):RowStyle;

	/**
	 * Is exactHeight
	 *
	 * @return bool
	 */
	public function isExactHeight():Bool;

	/**
	 * Set exactHeight
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setExactHeight(value:Bool = true):RowStyle;
}
