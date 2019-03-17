package php.phpoffice.phpword.element;

/**
 * Container abstract class
 *
 * @method Text addText(string $text, mixed $fStyle = null, mixed $pStyle = null)
 * @method TextRun addTextRun(mixed $pStyle = null)
 * @method Bookmark addBookmark(string $name)
 * @method Link addLink(string $target, string $text = null, mixed $fStyle = null, mixed $pStyle = null, boolean $internal = false)
 * @method PreserveText addPreserveText(string $text, mixed $fStyle = null, mixed $pStyle = null)
 * @method void addTextBreak(int $count = 1, mixed $fStyle = null, mixed $pStyle = null)
 * @method ListItem addListItem(string $txt, int $depth = 0, mixed $font = null, mixed $list = null, mixed $para = null)
 * @method ListItemRun addListItemRun(int $depth = 0, mixed $listStyle = null, mixed $pStyle = null)
 * @method Footnote addFootnote(mixed $pStyle = null)
 * @method Endnote addEndnote(mixed $pStyle = null)
 * @method CheckBox addCheckBox(string $name, $text, mixed $fStyle = null, mixed $pStyle = null)
 * @method Title addTitle(mixed $text, int $depth = 1)
 * @method TOC addTOC(mixed $fontStyle = null, mixed $tocStyle = null, int $minDepth = 1, int $maxDepth = 9)
 * @method PageBreak addPageBreak()
 * @method Table addTable(mixed $style = null)
 * @method Image addImage(string $source, mixed $style = null, bool $isWatermark = false, $name = null)
 * @method OLEObject addOLEObject(string $source, mixed $style = null)
 * @method TextBox addTextBox(mixed $style = null)
 * @method Field addField(string $type = null, array $properties = array(), array $options = array(), mixed $text = null)
 * @method Line addLine(mixed $lineStyle = null)
 * @method Shape addShape(string $type, mixed $style = null)
 * @method Chart addChart(string $type, array $categories, array $values, array $style = null)
 * @method FormField addFormField(string $type, mixed $fStyle = null, mixed $pStyle = null)
 * @method SDT addSDT(string $type)
 *
 * @method \PhpOffice\PhpWord\Element\OLEObject addObject(string $source, mixed $style = null) deprecated, use addOLEObject instead
 *
 * @since 0.10.0
 */
@:native("PhpOffice\\PhpWord\\Element\\AbstractContainer")
extern class AbstractContainer extends AbstractElement {
	public function addText(text:String, fontStyle:Any = null, paragraphStyle:Any = null):Text;
	public function addTextRun(style:Any = null):TextRun;
	public function addBookmark(name:String):AbstractElement;
	public function addLink(target:String, text:String = null, fontStyle:Any = null, paragraphStyle:Any = null, internal:Bool = false):Link;
	public function addPreserveText(text:String, fontStyle:Any = null, paragraphStyle:Any = null):AbstractElement;
	public function addTextBreak(count:Int = 1, fontStyle:Any = null, paragraphStyle:Any = null):TextBreak;
	public function addListItem(txt:String, depth:Int = 0, font:Any = null, list:Any = null, para:Any = null):ListItem;
	public function addListItemRun(depth:Int = 0, listStyle:Any = null, style:Any = null):ListItemRun;
	public function addFootnote(style:Any = null):AbstractElement;
	public function addEndnote(style:Any = null):AbstractElement;
	public function addCheckBox(name:String, text:Any, fontStyle:Any = null, paragraphStyle:Any = null):AbstractElement;
	public function addTitle(text:Any, depth:Int = 1):Title;
	public function addTOC(fontStyle:Any = null, tocStyle:Any = null, minDepth:Int = 1, maxDepth:Int = 9):AbstractElement;
	public function addPageBreak():AbstractElement;
	public function addTable(style:Any = null):Table;
	public function addImage(source:String, style:Any = null, isWatermark:Bool = false, name:String = null):Image;
	public function addOLEObject(source:String, style:Any = null):AbstractElement;
	public function addTextBox(style:Any = null):AbstractElement;
	public function addField(type:String = null, properties:NativeArray = null, options:NativeArray = null, text:Any = null):AbstractElement;
	public function addLine(lineStyle:Any = null):AbstractElement;
	public function addShape(type:String, style:Any = null):AbstractElement;
	public function addChart(type:String, categories:NativeArray, values:NativeArray, style:NativeArray = null):AbstractElement;
	public function addFormField(type:String, fontStyle:Any = null, paragraphStyle:Any = null):AbstractElement;
	public function addSDT(type:String):AbstractElement;

	/**
	 * Get all elements
	 *
	 * @return \PhpOffice\PhpWord\Element\AbstractElement[]
	 */
	public function getElements():NativeArray;

	/**
	 * Returns the element at the requested position
	 *
	 * @param int $index
	 * @return \PhpOffice\PhpWord\Element\AbstractElement|null
	 */
	public function getElement(index:Int):Any;

	/**
	 * Removes the element at requested index
	 *
	 * @param int|\PhpOffice\PhpWord\Element\AbstractElement $toRemove
	 */
	public function removeElement(toRemove:Any):Void;

	/**
	 * Count elements
	 *
	 * @return int
	 */
	public function countElements():Int;

	/**
	 * Check if a method is allowed for the current container
	 *
	 * @param string $method
	 *
	 * @throws \BadMethodCallException
	 * @return bool
	 */
	private function checkValidity(method:String):Bool;

	/**
	 * Create textrun element
	 *
	 * @deprecated 0.10.0
	 *
	 * @param mixed $paragraphStyle
	 *
	 * @return \PhpOffice\PhpWord\Element\TextRun
	 *
	 * @codeCoverageIgnore
	 */
	public function createTextRun(paragraphStyle:Any = null):Any;

	/**
	 * Create footnote element
	 *
	 * @deprecated 0.10.0
	 *
	 * @param mixed $paragraphStyle
	 *
	 * @return \PhpOffice\PhpWord\Element\Footnote
	 *
	 * @codeCoverageIgnore
	 */
	public function createFootnote(paragraphStyle:Any = null):Any;
}
