package php.phpoffice.phpspreadsheet.document;

import php.phpoffice.phpspreadsheet.Spreadsheet;

@:native("PhpOffice\\PhpSpreadsheet\\Document\\Properties")
extern class Properties {
	/**
	 * Create a new Document Properties instance.
	 */
	public function new();

	/**
	 * Get Creator.
	 *
	 * @return string
	 */
	public function getCreator():String;

	/**
	 * Set Creator.
	 *
	 * @param string $creator
	 *
	 * @return Properties
	 */
	public function setCreator(creator:String):Properties;

	/**
	 * Get Last Modified By.
	 *
	 * @return string
	 */
	public function getLastModifiedBy():String;

	/**
	 * Set Last Modified By.
	 *
	 * @param string $pValue
	 *
	 * @return Properties
	 */
	public function setLastModifiedBy(value:String):Properties;

	/**
	 * Get Created.
	 *
	 * @return int
	 */
	public function getCreated():Int;

	/**
	 * Set Created.
	 *
	 * @param int|string $time
	 *
	 * @return Properties
	 */
	public function setCreated(time:EitherType<Int, String>):Properties;

	/**
	 * Get Modified.
	 *
	 * @return int
	 */
	public function getModified():Int;

	/**
	 * Set Modified.
	 *
	 * @param int|string $time
	 *
	 * @return Properties
	 */
	public function setModified(time:EitherType<Int, String>):Properties;

	/**
	 * Get Title.
	 *
	 * @return string
	 */
	public function getTitle():String;

	/**
	 * Set Title.
	 *
	 * @param string $title
	 *
	 * @return Properties
	 */
	public function setTitle(title:String):Properties;

	/**
	 * Get Description.
	 *
	 * @return string
	 */
	public function getDescription():String;

	/**
	 * Set Description.
	 *
	 * @param string $description
	 *
	 * @return Properties
	 */
	public function setDescription(description:String):Properties;

	/**
	 * Get Subject.
	 *
	 * @return string
	 */
	public function getSubject():String;

	/**
	 * Set Subject.
	 *
	 * @param string $subject
	 *
	 * @return Properties
	 */
	public function setSubject(subject:String):Properties;

	/**
	 * Get Keywords.
	 *
	 * @return string
	 */
	public function getKeywords():String;

	/**
	 * Set Keywords.
	 *
	 * @param string $keywords
	 *
	 * @return Properties
	 */
	public function setKeywords(keywords:String):Properties;

	/**
	 * Get Category.
	 *
	 * @return string
	 */
	public function getCategory():String;

	/**
	 * Set Category.
	 *
	 * @param string $category
	 *
	 * @return Properties
	 */
	public function setCategory(category:String):Properties;

	/**
	 * Get Company.
	 *
	 * @return string
	 */
	public function getCompany():String;

	/**
	 * Set Company.
	 *
	 * @param string $company
	 *
	 * @return Properties
	 */
	public function setCompany(company:String):Properties;

	/**
	 * Get Manager.
	 *
	 * @return string
	 */
	public function getManager():String;

	/**
	 * Set Manager.
	 *
	 * @param string $manager
	 *
	 * @return Properties
	 */
	public function setManager(manager:String):Properties;

	/**
	 * Get a List of Custom Property Names.
	 *
	 * @return array of string
	 */
	public function getCustomProperties():NativeArray;

	/**
	 * Check if a Custom Property is defined.
	 *
	 * @param string $propertyName
	 *
	 * @return bool
	 */
	public function isCustomPropertySet(propertyName:String):Bool;

	/**
	 * Get a Custom Property Value.
	 *
	 * @param string $propertyName
	 *
	 * @return string
	 */
	public function getCustomPropertyValue(propertyName:String):String;

	/**
	 * Get a Custom Property Type.
	 *
	 * @param string $propertyName
	 *
	 * @return string
	 */
	public function getCustomPropertyType(propertyName:String):String;

	/**
	 * Set a Custom Property.
	 *
	 * @param string $propertyName
	 * @param mixed $propertyValue
	 * @param string $propertyType
	 *      'i'    : Integer
	 *   'f' : Floating Point
	 *   's' : String
	 *   'd' : Date/Time
	 *   'b' : Boolean
	 *
	 * @return Properties
	 */
	public function setCustomProperty(propertyName:String, propertyValue:Any, propertyType:Null<PropertyType> = null):Properties;
}

enum abstract PropertyType(String) to String {
	var PROPERTY_TYPE_BOOLEAN = "b";
	var PROPERTY_TYPE_INTEGER = "i";
	var PROPERTY_TYPE_FLOAT = "f";
	var PROPERTY_TYPE_DATE = "d";
	var PROPERTY_TYPE_STRING = "s";
	var PROPERTY_TYPE_UNKNOWN = "u";
}
