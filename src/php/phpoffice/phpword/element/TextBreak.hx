package php.phpoffice.phpword.element;

import php.phpoffice.phpword.style.Font;
import php.phpoffice.phpword.style.Paragraph;

/**
 * Text break element
 */
@:native("PhpOffice\\PhpWord\\Element\\TextBreak")
extern class TextBreak extends AbstractElement {
	/**
	 * Create a new TextBreak Element
	 *
	 * @param mixed $fontStyle
	 * @param mixed $paragraphStyle
	 */
	public function new(fontStyle:Any = null, paragraphStyle:Any = null);

	/**
	 * Set Text style
	 *
	 * @param mixed $style
	 * @param mixed $paragraphStyle
	 * @return string|\PhpOffice\PhpWord\Style\Font
	 */
	public function setFontStyle(style:Any = null, paragraphStyle:Any = null):Any;

	/**
	 * Get Text style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Font
	 */
	public function getFontStyle():EitherType<String, Font>;

	/**
	 * Set Paragraph style
	 *
	 * @param   string|array|\PhpOffice\PhpWord\Style\Paragraph $style
	 * @return  string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function setParagraphStyle(style:Any = null):EitherType<String, Paragraph>;

	/**
	 * Get Paragraph style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function getParagraphStyle():EitherType<String, Paragraph>;

	/**
	 * Has font/paragraph style defined
	 *
	 * @return bool
	 */
	public function hasStyle():Bool;
}
