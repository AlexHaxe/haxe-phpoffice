package php.phpoffice.phpword.element;

import php.phpoffice.phpword.style.Font;
import php.phpoffice.phpword.style.Paragraph;

/**
 * Link element
 */
@:native("PhpOffice\\PhpWord\\Element\\Link")
extern class Link extends AbstractElement {
	/**
	 * Create a new Link Element
	 *
	 * @param string $source
	 * @param string $text
	 * @param mixed $fontStyle
	 * @param mixed $paragraphStyle
	 * @param bool $internal
	 */
	public function new(source:String, text:String = null, fontStyle:Any = null, paragraphStyle:Any = null, internal:Bool = false);

	/**
	 * Get link source
	 *
	 * @return string
	 */
	public function getSource():String;

	/**
	 * Get link text
	 *
	 * @return string
	 */
	public function getText():String;

	/**
	 * Get Text style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Font
	 */
	public function getFontStyle():EitherType<String, Font>;

	/**
	 * Get Paragraph style
	 *
	 * @return string|\PhpOffice\PhpWord\Style\Paragraph
	 */
	public function getParagraphStyle():EitherType<String, Paragraph>;

	/**
	 * is internal
	 *
	 * @return bool
	 */
	public function isInternal():Bool;
}
