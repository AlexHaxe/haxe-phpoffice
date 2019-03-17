package php.phpoffice.phpword.element;

/**
 * Textrun/paragraph element
 */
@:native("PhpOffice\\PhpWord\\Element\\TextRun")
extern class TextRun extends AbstractContainer {
	/**
	 * Create new instance
	 *
	 * @param string|array|\PhpOffice\PhpWord\Style\Paragraph $paragraphStyle
	 */
	public function new(paragraphStyle:Any = null);

	/**
	 * Get Paragraph style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function getParagraphStyle():Any;

	/**
	 * Set Paragraph style
	 *
	 * @param string|array|\PhpOffice\PhpWord\Style\Paragraph $style
	 * @return string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function setParagraphStyle(style:Any = null):Any;
}
