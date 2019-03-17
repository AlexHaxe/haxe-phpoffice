package php.phpoffice.phpword.element;

@:native("PhpOffice\\PhpWord\\Element\\Section")
extern class Section extends AbstractContainer {
	/**
	 * Create new instance
	 *
	 * @param int $sectionCount
	 * @param null|array|\PhpOffice\PhpWord\Style $style
	 */
	public function new(sectionCount:Int, style:Any = null);

	/**
	 * Set section style.
	 *
	 * @param array $style
	 */
	public function setStyle(style:NativeArray = null):Void;

	/**
	 * Get section style
	 *
	 * @return \PhpOffice\PhpWord\Style\Section
	 */
	public function getStyle():Any;

	/**
	 * Add header
	 *
	 * @since 0.10.0
	 *
	 * @param string $type
	 *
	 * @return Header
	 */
	public function addHeader(type:String = "default"):Any;

	/**
	 * Add footer
	 *
	 * @since 0.10.0
	 *
	 * @param string $type
	 *
	 * @return Footer
	 */
	public function addFooter(type:String = "default"):Any;

	/**
	 * Get header elements
	 *
	 * @return Header[]
	 */
	public function getHeaders():NativeArray;

	/**
	 * Get footer elements
	 *
	 * @return Footer[]
	 */
	public function getFooters():NativeArray;

	/**
	 * Get the footnote properties
	 *
	 * @return FootnoteProperties
	 */
	public function getFootnotePropoperties():Any;

	/**
	 * Set the footnote properties
	 *
	 * @param FootnoteProperties $footnoteProperties
	 */
	public function setFootnoteProperties(footnoteProperties:Any = null):Void;

	/**
	 * Is there a header for this section that is for the first page only?
	 *
	 * If any of the Header instances have a type of Header::FIRST then this method returns true.
	 * False otherwise.
	 *
	 * @return bool
	 */
	public function hasDifferentFirstPage():Bool;

	/**
	 * Set section style
	 *
	 * @deprecated 0.12.0
	 *
	 * @param array $settings
	 *
	 * @codeCoverageIgnore
	 */
	public function setSettings(settings:NativeArray = null):Void;

	/**
	 * Get section style
	 *
	 * @deprecated 0.12.0
	 *
	 * @return \PhpOffice\PhpWord\Style\Section
	 *
	 * @codeCoverageIgnore
	 */
	public function getSettings():Any;

	/**
	 * Create header
	 *
	 * @deprecated 0.10.0
	 *
	 * @return Header
	 *
	 * @codeCoverageIgnore
	 */
	public function createHeader():Any;

	/**
	 * Create footer
	 *
	 * @deprecated 0.10.0
	 *
	 * @return Footer
	 *
	 * @codeCoverageIgnore
	 */
	public function createFooter():Any;

	/**
	 * Get footer
	 *
	 * @deprecated 0.10.0
	 *
	 * @return Footer
	 *
	 * @codeCoverageIgnore
	 */
	public function getFooter():Any;
}
