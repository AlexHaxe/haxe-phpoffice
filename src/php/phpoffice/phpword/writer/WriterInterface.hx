package php.phpoffice.phpword.writer;

/**
 * Writer interface
 */
@:native("PhpOffice\\PhpWord\\Writer\\WriterInterface")
extern interface WriterInterface {
	/**
	 * Save PhpWord to file
	 *
	 * @param string $filename
	 */
	public function save(filename:Null<String> = null):Void;
}
