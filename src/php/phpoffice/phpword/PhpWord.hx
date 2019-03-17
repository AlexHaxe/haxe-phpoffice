package php.phpoffice.phpword;

import php.phpoffice.phpword.element.Title;
import php.phpoffice.phpword.style.Font;
import php.phpoffice.phpword.style.Numbering;
import php.phpoffice.phpword.style.Paragraph;
import php.phpoffice.phpword.style.TableStyle;

/**
 * PHPWord main class
 *
 * @method Collection\Titles getTitles()
 * @method Collection\Footnotes getFootnotes()
 * @method Collection\Endnotes getEndnotes()
 * @method Collection\Charts getCharts()
 * @method Collection\Comments getComments()
 * @method int addBookmark(Element\Bookmark $bookmark)
 * @method int addTitle(Element\Title $title)
 * @method int addFootnote(Element\Footnote $footnote)
 * @method int addEndnote(Element\Endnote $endnote)
 * @method int addChart(Element\Chart $chart)
 * @method int addComment(Element\Comment $comment)
 *
 * @method Style\Paragraph addParagraphStyle(string $styleName, mixed $styles)
 * @method Style\Font addFontStyle(string $styleName, mixed $fontStyle, mixed $paragraphStyle = null)
 * @method Style\Font addLinkStyle(string $styleName, mixed $styles)
 * @method Style\Font addTitleStyle(mixed $depth, mixed $fontStyle, mixed $paragraphStyle = null)
 * @method Style\Table addTableStyle(string $styleName, mixed $styleTable, mixed $styleFirstRow = null)
 * @method Style\Numbering addNumberingStyle(string $styleName, mixed $styles)
 */
@:native("PhpOffice\\PhpWord\\PhpWord")
extern class PhpWord {
	/**
	 * Create new instance
	 *
	 * Collections are created dynamically
	 */
	public function new();

	/**
	 * Get document properties object
	 *
	 * @return \PhpOffice\PhpWord\Metadata\DocInfo
	 */
	public function getDocInfo():Any;

	/**
	 * Get compatibility
	 *
	 * @return \PhpOffice\PhpWord\Metadata\Compatibility
	 * @since 0.12.0
	 */
	public function getCompatibility():Any;

	/**
	 * Get compatibility
	 *
	 * @return \PhpOffice\PhpWord\Metadata\Settings
	 * @since 0.14.0
	 */
	public function getSettings():Any;

	/**
	 * Get all sections
	 *
	 * @return \PhpOffice\PhpWord\Element\Section[]
	 */
	public function getSections():NativeArray;

	/**
	 * Returns the section at the requested position
	 *
	 * @param int $index
	 * @return \PhpOffice\PhpWord\Element\Section|null
	 */
	public function getSection(index:Int):Null<Any>;

	/**
	 * Create new section
	 *
	 * @param array $style
	 * @return \PhpOffice\PhpWord\Element\Section
	 */
	public function addSection(style:NativeArray = null):Any;

	/**
	 * Sorts the sections using the callable passed
	 *
	 * @see http://php.net/manual/en/function.usort.php for usage
	 * @param callable $sorter
	 */
	public function sortSections(sorter:Any):Void;

	/**
	 * Get default font name
	 *
	 * @return string
	 */
	public function getDefaultFontName():String;

	/**
	 * Set default font name.
	 *
	 * @param string $fontName
	 */
	public function setDefaultFontName(fontName:String):Void;

	/**
	 * Get default font size
	 *
	 * @return int
	 */
	public function getDefaultFontSize():Int;

	/**
	 * Set default font size.
	 *
	 * @param int $fontSize
	 */
	public function setDefaultFontSize(fontSize:Int):Void;

	/**
	 * Set default paragraph style definition to styles.xml
	 *
	 * @param array $styles Paragraph style definition
	 * @return \PhpOffice\PhpWord\Style\Paragraph
	 */
	public function setDefaultParagraphStyle(styles:NativeArray):Any;

	/**
	 * Save to file or download
	 *
	 * All exceptions should already been handled by the writers
	 *
	 * @param string $filename
	 * @param string $format
	 * @param bool $download
	 * @return bool
	 */
	public function save(filename:String, format:String = "Word2007", download:Bool = false):Bool;
	public function getTitles():Any;
	public function getFootnotes():Any;
	public function getEndnotes():Any;
	public function getCharts():Any;
	public function getComments():Any;
	public function addBookmark(bookmark:Any):Int;
	public function addTitle(title:Title):Int;
	public function addFootnote(footnote:Any):Int;
	public function addEndnote(endnote:Any):Int;
	public function addChart(chart:Any):Int;
	public function addComment(comment:Any):Int;
	public function addParagraphStyle(styleName:String, styles:Any):Paragraph;
	public function addFontStyle(styleName:String, fontStyle:Any, paragraphStyle:Any = null):Font;
	public function addLinkStyle(styleName:String, styles:Any):Font;
	public function addTitleStyle(depth:Any, fontStyle:Any, paragraphStyle:Any = null):Font;
	public function addTableStyle(styleName:String, styleTable:Any, styleFirstRow:Any = null):TableStyle;
	public function addNumberingStyle(styleName:String, styles:Any):Numbering;
}
