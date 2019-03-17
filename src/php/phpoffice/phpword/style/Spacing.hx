package php.phpoffice.phpword.style;

/**
 * Spacing between lines and above/below paragraph style
 *
 * @see  http://www.datypic.com/sc/ooxml/t-w_CT_Spacing.html
 * @since 0.10.0
 */
@:native("PhpOffice\\PhpWord\\Style\\Spacing")
extern class Spacing extends AbstractStyle {
	/**
	 * Create a new instance
	 *
	 * @param array $style
	 */
	public function new(style:NativeArray = null);

	/**
	 * Get before
	 *
	 * @return int|float
	 */
	public function getBefore():EitherType<Int, Float>;

	/**
	 * Set before
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setBefore(value:Null<EitherType<Int, Float>> = null):Spacing;

	/**
	 * Get after
	 *
	 * @return int|float
	 */
	public function getAfter():EitherType<Int, Float>;

	/**
	 * Set after
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setAfter(value:Null<EitherType<Int, Float>> = null):Spacing;

	/**
	 * Get line
	 *
	 * @return int|float
	 */
	public function getLine():EitherType<Int, Float>;

	/**
	 * Set distance
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setLine(value:Null<EitherType<Int, Float>> = null):Spacing;

	/**
	 * Get line rule
	 *
	 * @return string
	 */
	public function getLineRule():String;

	/**
	 * Set line rule
	 *
	 * @param string $value
	 * @return self
	 */
	public function setLineRule(value:String = null):Spacing;

	/**
	 * Get line rule
	 *
	 * @return string
	 * @deprecated Use getLineRule() instead
	 * @codeCoverageIgnore
	 */
	public function getRule():String;

	/**
	 * Set line rule
	 *
	 * @param string $value
	 * @return self
	 * @deprecated Use setLineRule() instead
	 * @codeCoverageIgnore
	 */
	public function setRule(value:String = null):Spacing;
}
