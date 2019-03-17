package php.phpoffice.phpword.style;

/**
 * Abstract style class
 *
 * @since 0.10.0
 */
@:native("PhpOffice\\PhpWord\\Style\\AbstractStyle")
extern class AbstractStyle {
	/**
	 * Get style name
	 *
	 * @return string
	 */
	public function getStyleName():String;

	/**
	 * Set style name
	 *
	 * @param string $value
	 * @return self
	 */
	public function setStyleName(value:String):AbstractStyle;

	/**
	 * Get index number
	 *
	 * @return int|null
	 */
	public function getIndex():Null<Int>;

	/**
	 * Set index number
	 *
	 * @param int|null $value
	 * @return self
	 */
	public function setIndex(value:Null<Int> = null):AbstractStyle;

	/**
	 * Get is automatic style flag
	 *
	 * @return bool
	 */
	public function isAuto():Bool;

	/**
	 * Set is automatic style flag
	 *
	 * @param bool $value
	 * @return self
	 */
	public function setAuto(value:Bool = true):AbstractStyle;

	/**
	 * Return style value of child style object, e.g. `left` from `Indentation` child style of `Paragraph`
	 *
	 * @param \PhpOffice\PhpWord\Style\AbstractStyle $substyleObject
	 * @param string $substyleProperty
	 * @return mixed
	 * @since 0.12.0
	 */
	public function getChildStyleValue(substyleObject:AbstractStyle, substyleProperty:String):Any;

	/**
	 * Set style value template method
	 *
	 * Some child classes have their own specific overrides.
	 * Backward compability check for versions < 0.10.0 which use underscore
	 * prefix for their private properties.
	 * Check if the set method is exists. Throws an exception?
	 *
	 * @param string $key
	 * @param string $value
	 * @return self
	 */
	public function setStyleValue(key:String, value:String):AbstractStyle;

	/**
	 * Set style by using associative array
	 *
	 * @param array $values
	 * @return self
	 */
	public function setStyleByArray(values:NativeArray):AbstractStyle;

	/**
	 * Set style using associative array
	 *
	 * @deprecated 0.11.0
	 *
	 * @param array $style
	 *
	 * @return self
	 *
	 * @codeCoverageIgnore
	 */
	public function setArrayStyle(style:NativeArray = null):AbstractStyle;
}
