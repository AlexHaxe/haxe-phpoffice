package php.phpoffice.phpword.reader;

/**
 * Reader interface
 *
 * @since 0.8.0
 */
@:native("PhpOffice\\PhpWord\\Reader\\ReaderInterface")
extern interface ReaderInterface {
	/**
	 * Can the current ReaderInterface read the file?
	 *
	 * @param  string $filename
	 * @return bool
	 */
	public function canRead(filename:String):Bool;

	/**
	 * Loads PhpWord from file
	 *
	 * @param string $filename
	 */
	public function load(filename:String):Void;
}
