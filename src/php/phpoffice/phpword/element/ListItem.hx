package php.phpoffice.phpword.element;

/**
 * List item element
 */
@:native("PhpOffice\\PhpWord\\Element\\ListItem")
extern class ListItem extends AbstractElement {
	/**
	 * Create a new ListItem
	 *
	 * @param string $text
	 * @param int $depth
	 * @param mixed $fontStyle
	 * @param array|string|null $listStyle
	 * @param mixed $paragraphStyle
	 */
	public function new(text:String, depth:Int = 0, fontStyle:Any = null, listStyle:Any = null, paragraphStyle:Any = null);

	/**
	 * Get style
	 *
	 * @return \PhpOffice\PhpWord\Style\ListItem
	 */
	public function getStyle():Any;

	/**
	 * Get Text object
	 *
	 * @return \PhpOffice\PhpWord\Element\Text
	 */
	public function getTextObject():Text;

	/**
	 * Get depth
	 *
	 * @return int
	 */
	public function getDepth():Int;

	/**
	 * Get text
	 *
	 * @return string
	 * @since 0.11.0
	 */
	public function getText():String;
}
