package php.phpoffice.phpword.element;

/**
 * Text element
 */
@:native("PhpOffice\\PhpWord\\Element\\Text")
extern class Text extends AbstractElement {
	/**
	 * Create a new Text Element
	 *
	 * @param string $text
	 * @param mixed $fontStyle
	 * @param mixed $paragraphStyle
	 */
	public function new(text:Null<String> = null, fontStyle:Any = null, paragraphStyle:Any = null);

	/**
	 * Set Text style
	 *
	 * @param string|array|\PhpOffice\PhpWord\Style\Font $style
	 * @param string|array|\PhpOffice\PhpWord\Style\Paragraph $paragraphStyle
	 * @return string|\PhpOffice\PhpWord\Style\Font
	 */
	public function setFontStyle(style:Any = null, paragraphStyle:Any = null):Any;

	/**
	 * Get Text style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Font
	 */
	public function getFontStyle():Any;

	/**
	 * Set Paragraph style
	 *
	 * @param string|array|\PhpOffice\PhpWord\Style\Paragraph $style
	 * @return string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function setParagraphStyle(style:Any = null):Any;

	/**
	 * Get Paragraph style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function getParagraphStyle():Any;

	/**
	 * Set text content
	 *
	 * @param string $text
	 * @return self
	 */
	public function setText(text:String):Text;

	/**
	 * Get Text content
	 *
	 * @return string
	 */
	public function getText():String;
}
