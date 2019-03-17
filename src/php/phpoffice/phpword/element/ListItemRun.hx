package php.phpoffice.phpword.element;

/**
 * List item element
 */
@:native("PhpOffice\\PhpWord\\Element\\ListItemRun")
extern class ListItemRun extends TextRun {
	/**
	 * Create a new ListItem
	 *
	 * @param int $depth
	 * @param array|string|null $listStyle
	 * @param mixed $paragraphStyle
	 */
	public function new(depth:Int = 0, listStyle:Any = null, paragraphStyle:Any = null);

	/**
	 * Get ListItem style.
	 *
	 * @return \PhpOffice\PhpWord\Style\ListItem
	 */
	public function getStyle():Any;

	/**
	 * Get ListItem depth.
	 *
	 * @return int
	 */
	public function getDepth():Int;
}
