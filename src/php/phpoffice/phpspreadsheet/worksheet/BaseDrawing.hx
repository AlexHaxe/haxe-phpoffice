package php.phpoffice.phpspreadsheet.worksheet;

import php.phpoffice.phpspreadsheet.cell.Hyperlink;

@:native("PhpOffice\\PhpSpreadsheet\\Worksheet\\BaseDrawing")
extern class BaseDrawing {
	/**
	 * Create a new BaseDrawing.
	 */
	public function new();

	/**
	 * Get image index.
	 *
	 * @return int
	 */
	public function getImageIndex():Int;

	/**
	 * Get Name.
	 *
	 * @return string
	 */
	public function getName():String;

	/**
	 * Set Name.
	 *
	 * @param string $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setName(value:String):BaseDrawing;

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
	 * @return BaseDrawing
	 */
	public function setDescription(description:String):BaseDrawing;

	/**
	 * Get Worksheet.
	 *
	 * @return Worksheet
	 */
	public function getWorksheet():Worksheet;

	/**
	 * Set Worksheet.
	 *
	 * @param Worksheet $pValue
	 * @param bool $pOverrideOld If a Worksheet has already been assigned, overwrite it and remove image from old Worksheet?
	 *
	 * @throws PhpSpreadsheetException
	 *
	 * @return BaseDrawing
	 */
	public function setWorksheet(value:Worksheet = null, overrideOld:Bool = false):BaseDrawing;

	/**
	 * Get Coordinates.
	 *
	 * @return string
	 */
	public function getCoordinates():String;

	/**
	 * Set Coordinates.
	 *
	 * @param string $pValue eg: 'A1'
	 *
	 * @return BaseDrawing
	 */
	public function setCoordinates(value:String):BaseDrawing;

	/**
	 * Get OffsetX.
	 *
	 * @return int
	 */
	public function getOffsetX():Int;

	/**
	 * Set OffsetX.
	 *
	 * @param int $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setOffsetX(value:Int):BaseDrawing;

	/**
	 * Get OffsetY.
	 *
	 * @return int
	 */
	public function getOffsetY():Int;

	/**
	 * Set OffsetY.
	 *
	 * @param int $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setOffsetY(value:Int):BaseDrawing;

	/**
	 * Get Width.
	 *
	 * @return int
	 */
	public function getWidth():Int;

	/**
	 * Set Width.
	 *
	 * @param int $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setWidth(value:Int):BaseDrawing;

	/**
	 * Get Height.
	 *
	 * @return int
	 */
	public function getHeight():Int;

	/**
	 * Set Height.
	 *
	 * @param int $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setHeight(value:Int):BaseDrawing;

	/**
	 * Set width and height with proportional resize.
	 *
	 * Example:
	 * <code>
	 * $objDrawing->setResizeProportional(true);
	 * $objDrawing->setWidthAndHeight(160,120);
	 * </code>
	 *
	 * @author Vincent@luo MSN:kele_100@hotmail.com
	 *
	 * @param int $width
	 * @param int $height
	 *
	 * @return BaseDrawing
	 */
	public function setWidthAndHeight(width:Int, height:Int):BaseDrawing;

	/**
	 * Get ResizeProportional.
	 *
	 * @return bool
	 */
	public function getResizeProportional():Bool;

	/**
	 * Set ResizeProportional.
	 *
	 * @param bool $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setResizeProportional(value:Bool):BaseDrawing;

	/**
	 * Get Rotation.
	 *
	 * @return int
	 */
	public function getRotation():Int;

	/**
	 * Set Rotation.
	 *
	 * @param int $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setRotation(value:Int):BaseDrawing;

	/**
	 * Get Shadow.
	 *
	 * @return Drawing\Shadow
	 */
	public function getShadow():Any;

	/**
	 * Set Shadow.
	 *
	 * @param Drawing\Shadow $pValue
	 *
	 * @return BaseDrawing
	 */
	public function setShadow(value:Any = null):BaseDrawing;

	/**
	 * @param null|Hyperlink $pHyperlink
	 */
	public function setHyperlink(hyperlink:Null<Hyperlink> = null):Void;

	/**
	 * @return null|Hyperlink
	 */
	public function getHyperlink():Null<Hyperlink>;
}
