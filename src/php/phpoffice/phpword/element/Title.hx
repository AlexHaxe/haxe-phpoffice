package php.phpoffice.phpword.element;

/**
 * Title element
 */
@:native("PhpOffice\\PhpWord\\Element\\Title")
extern class Title extends AbstractElement {
	/**
	 * Create a new Title Element
	 *
	 * @param string|TextRun $text
	 * @param int $depth
	 */
	public function new(text:Any, depth:Int = 1);

	/**
	 * Get Title Text content
	 *
	 * @return string
	 */
	public function getText():String;

	/**
	 * Get depth
	 *
	 * @return int
	 */
	public function getDepth():Int;

	/**
	 * Get Title style
	 *
	 * @return string
	 */
	public function getStyle():String;
}
