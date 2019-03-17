package php.phpoffice.phpword.element;

import php.phpoffice.phpword.PhpWord;

/**
 * Element abstract class
 *
 * @since 0.10.0
 */
@:native("PhpOffice\\PhpWord\\Element\\AbstractElement")
extern class AbstractElement {
	/**
	 * Get PhpWord
	 *
	 * @return \PhpOffice\PhpWord\PhpWord
	 */
	public function getPhpWord():PhpWord;

	/**
	 * Set PhpWord as reference.
	 *
	 * @param \PhpOffice\PhpWord\PhpWord $phpWord
	 */
	public function setPhpWord(phpWord:PhpWord = null):Void;

	/**
	 * Get section number
	 *
	 * @return int
	 */
	public function getSectionId():Int;

	/**
	 * Set doc part.
	 *
	 * @param string $docPart
	 * @param int $docPartId
	 */
	public function setDocPart(docPart:String, docPartId:Int = 1):Void;

	/**
	 * Get doc part
	 *
	 * @return string
	 */
	public function getDocPart():String;

	/**
	 * Get doc part Id
	 *
	 * @return int
	 */
	public function getDocPartId():Int;

	/**
	 * Return media element (image, object, link) container name
	 *
	 * @return string section|headerx|footerx|footnote|endnote
	 */
	private function getMediaPart():Any;

	/**
	 * Get element index
	 *
	 * @return int
	 */
	public function getElementIndex():Int;

	/**
	 * Set element index.
	 *
	 * @param int $value
	 */
	public function setElementIndex(value:Int):Void;

	/**
	 * Get element unique ID
	 *
	 * @return string
	 */
	public function getElementId():String;

	/**
	 * Set element unique ID from 6 first digit of md5.
	 */
	public function setElementId():Void;

	/**
	 * Get relation Id
	 *
	 * @return int
	 */
	public function getRelationId():Int;

	/**
	 * Set relation Id.
	 *
	 * @param int $value
	 */
	public function setRelationId(value:Int):Void;

	/**
	 * Get nested level
	 *
	 * @return int
	 */
	public function getNestedLevel():Int;

	/**
	 * Get comment start
	 *
	 * @return Comment
	 */
	public function getCommentRangeStart():Any;

	/**
	 * Set comment start
	 *
	 * @param Comment $value
	 */
	public function setCommentRangeStart(value:Any):Void;

	/**
	 * Get comment end
	 *
	 * @return Comment
	 */
	public function getCommentRangeEnd():Any;

	/**
	 * Set comment end
	 *
	 * @param Comment $value
	 */
	public function setCommentRangeEnd(value:Any):Void;
	public function getParent():Any;

	/**
	 * Set parent container
	 *
	 * Passed parameter should be a container, except for Table (contain Row) and Row (contain Cell)
	 *
	 * @param \PhpOffice\PhpWord\Element\AbstractElement $container
	 */
	public function setParentContainer(container:AbstractElement):Void;

	/**
	 * Check if element is located in Section doc part (as opposed to Header/Footer)
	 *
	 * @return bool
	 */
	public function isInSection():Bool;

	/**
	 * Sets the trackChange information
	 *
	 * @param TrackChange $trackChange
	 */
	public function setTrackChange(trackChange:Any):Void;

	/**
	 * Gets the trackChange information
	 *
	 * @return TrackChange
	 */
	public function getTrackChange():Any;

	/**
	 * Set changed
	 *
	 * @param string $type INSERTED|DELETED
	 * @param string $author
	 * @param null|int|\DateTime $date allways in UTC
	 */
	public function setChangeInfo(type:String, author:String, date:Any = null):Void;
}
