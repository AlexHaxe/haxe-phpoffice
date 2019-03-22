package php.phpoffice.phpspreadsheet.cell;

import php.phpoffice.phpspreadsheet.worksheet.Worksheet;

@:native("PhpOffice\\PhpSpreadsheet\\Cell\\Hyperlink")
extern class Hyperlink {
	/**
	 * Create a new Hyperlink.
	 *
	 * @param string $pUrl Url to link the cell to
	 * @param string $pTooltip Tooltip to display on the hyperlink
	 */
	public function new(url:String = '', tooltip:String = '');

	/**
	 * Get URL.
	 *
	 * @return string
	 */
	public function getUrl():String;

	/**
	 * Set URL.
	 *
	 * @param string $value
	 *
	 * @return Hyperlink
	 */
	public function setUrl(value:String):Hyperlink;

	/**
	 * Get tooltip.
	 *
	 * @return string
	 */
	public function getTooltip():String;

	/**
	 * Set tooltip.
	 *
	 * @param string $value
	 *
	 * @return Hyperlink
	 */
	public function setTooltip(value:String):Hyperlink;

	/**
	 * Is this hyperlink internal? (to another worksheet).
	 *
	 * @return bool
	 */
	public function isInternal():Bool;

	/**
	 * @return string
	 */
	public function getTypeHyperlink():String;
}
