package php.phpoffice.phpword;

import php.phpoffice.phpword.reader.ReaderInterface;
import php.phpoffice.phpword.writer.WriterInterface;

@:native("PhpOffice\\PhpWord\\IOFactory")
extern class IOFactory {
	/**
	 * Create new writer
	 *
	 * @param PhpWord $phpWord
	 * @param string $name
	 *
	 * @throws \PhpOffice\PhpWord\Exception\Exception
	 *
	 * @return WriterInterface
	 */
	public static function createWriter(phpWord:PhpWord, name:WriterTypes = Word2007):WriterInterface;

	/**
	 * Create new reader
	 *
	 * @param string $name
	 *
	 * @throws Exception
	 *
	 * @return ReaderInterface
	 */
	public static function createReader(name:ReaderTypes = Word2007):ReaderInterface;

	/**
	 * Loads PhpWord from file
	 *
	 * @param string $filename The name of the file
	 * @param string $readerName
	 * @return \PhpOffice\PhpWord\PhpWord $phpWord
	 */
	public static function load(filename:String, readerName:ReaderTypes = Word2007):PhpWord;
}

enum abstract ReaderTypes(String) to String {
	var OdText = "ODText";
	var Rtf = "RTF";
	var Word2007 = "Word2007";
	var Html = "HTML";
	var Pdf = "PDF";
}

enum abstract WriterTypes(String) to String {
	var OdText = "ODText";
	var Rtf = "RTF";
	var Word2007 = "Word2007";
	var Html = "HTML";
	var Pdf = "PDF";
}
