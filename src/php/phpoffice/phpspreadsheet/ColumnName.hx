package php.phpoffice.phpspreadsheet;

abstract ColumnName(String) from String to String {
	private static var letters:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	public function new(column:String) {
		this = column;
	}

	@:from
	public static function fromInt(colNum:Int):ColumnName {
		var low:Int = colNum % letters.length;
		var high:Int = Math.floor(colNum / letters.length) - 1;
		if (high < 0) {
			return new ColumnName(letters.charAt(low));
		}
		return new ColumnName(letters.charAt(high) + letters.charAt(low));
	}
}
