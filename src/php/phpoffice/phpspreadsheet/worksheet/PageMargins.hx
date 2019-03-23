package php.phpoffice.phpspreadsheet.worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\PageMargins")
extern class PageMargins {
	/**
	 * Create a new PageMargins.
	 */
	public function new();

	/**
	 * Get Left.
	 *
	 * @return float
	 */
	public function getLeft():Float;

	/**
	 * Set Left.
	 *
	 * @param float $pValue
	 *
	 * @return PageMargins
	 */
	public function setLeft(value:Float):PageMargins;

	/**
	 * Get Right.
	 *
	 * @return float
	 */
	public function getRight():Float;

	/**
	 * Set Right.
	 *
	 * @param float $pValue
	 *
	 * @return PageMargins
	 */
	public function setRight(value:Float):PageMargins;

	/**
	 * Get Top.
	 *
	 * @return float
	 */
	public function getTop():Float;

	/**
	 * Set Top.
	 *
	 * @param float $pValue
	 *
	 * @return PageMargins
	 */
	public function setTop(value:Float):PageMargins;

	/**
	 * Get Bottom.
	 *
	 * @return float
	 */
	public function getBottom():Float;

	/**
	 * Set Bottom.
	 *
	 * @param float $pValue
	 *
	 * @return PageMargins
	 */
	public function setBottom(value:Float):PageMargins;

	/**
	 * Get Header.
	 *
	 * @return float
	 */
	public function getHeader():Float;

	/**
	 * Set Header.
	 *
	 * @param float $pValue
	 *
	 * @return PageMargins
	 */
	public function setHeader(value:Float):PageMargins;

	/**
	 * Get Footer.
	 *
	 * @return float
	 */
	public function getFooter():Float;

	/**
	 * Set Footer.
	 *
	 * @param float $pValue
	 *
	 * @return PageMargins
	 */
	public function setFooter(value:Float):PageMargins;
}
