package php.phpoffice.phpword.style;

/**
 * Paragraph indentation style
 *
 * @see  http://www.schemacentral.com/sc/ooxml/t-w_CT_Ind.html
 * @since 0.10.0
 */
@:native("PhpOffice\\PhpWord\\Style\\Indentation")
extern class Indentation extends AbstractStyle {
	/**
	 * Create a new instance
	 *
	 * @param array $style
	 */
	public function new(style:NativeArray = null);

	/**
	 * Get left
	 *
	 * @return int|float
	 */
	public function getLeft():EitherType<Int, Float>;

	/**
	 * Set left
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setLeft(value:Null<EitherType<Int, Float>> = null):Indentation;

	/**
	 * Get right
	 *
	 * @return int|float
	 */
	public function getRight():EitherType<Int, Float>;

	/**
	 * Set right
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setRight(value:Null<EitherType<Int, Float>> = null):Indentation;

	/**
	 * Get first line
	 *
	 * @return int|float
	 */
	public function getFirstLine():EitherType<Int, Float>;

	/**
	 * Set first line
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setFirstLine(value:Null<EitherType<Int, Float>> = null):Indentation;

	/**
	 * Get hanging
	 *
	 * @return int|float
	 */
	public function getHanging():EitherType<Int, Float>;

	/**
	 * Set hanging
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setHanging(value:Null<EitherType<Int, Float>> = null):Indentation;
}
