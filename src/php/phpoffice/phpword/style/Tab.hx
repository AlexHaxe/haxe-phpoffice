package php.phpoffice.phpword.style;

/**
 * Tab style
 */
@:native("PhpOffice\\PhpWord\\Style\\Tab")
extern class Tab extends AbstractStyle {
	/**
	 * Create a new instance of Tab. Both $type and $leader
	 * must conform to the values put forth in the schema. If they do not
	 * they will be changed to default values.
	 *
	 * @param string $type Defaults to "clear" if value is not possible
	 * @param int $position Must be numeric; otherwise defaults to 0
	 * @param string $leader Defaults to null if value is not possible
	 */
	public function new(type:Null<TabStopType> = null, position:Int = 0, leader:Null<TabLeaderType> = null);

	/**
	 * Get stop type
	 *
	 * @return string
	 */
	public function getType():TabStopType;

	/**
	 * Set stop type
	 *
	 * @param string $value
	 * @return self
	 */
	public function setType(value:TabStopType):Tab;

	/**
	 * Get leader
	 *
	 * @return string
	 */
	public function getLeader():TabLeaderType;

	/**
	 * Set leader
	 *
	 * @param string $value
	 * @return self
	 */
	public function setLeader(value:TabLeaderType):Tab;

	/**
	 * Get position
	 *
	 * @return int|float
	 */
	public function getPosition():EitherType<Int, Float>;

	/**
	 * Set position
	 *
	 * @param int|float $value
	 * @return self
	 */
	public function setPosition(value:EitherType<Int, Float>):Tab;
}

/**
 * Tab stop types
 *
 * @const string
 */
enum abstract TabStopType(String) from String to String {
	var Clear = "clear";
	var Left = "left";
	var Center = "center";
	var Right = "right";
	var Decimal = "decimal";
	var Bar = "bar";
	var Num = "num";
}

/**
 * Tab leader types
 *
 * @const string
 */
enum abstract TabLeaderType(String) from String to String {
	var None = "none";
	var Dot = "dot";
	var Hyphen = "hyphen";
	var Underscore = "underscore";
	var Heavy = "heavy";
	var Middledot = "middleDot";
}
