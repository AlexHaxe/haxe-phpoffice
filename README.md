# Haxe externs for PHPOffice

Very incomplete collection of Haxe externs for [PHPWord](https://github.com/PHPOffice/PHPWord) and [PhpSpreadsheet](https://github.com/PHPOffice/PhpSpreadsheet) libraries from [PHPOffice](https://github.com/PHPOffice)

I have only implemented enough externs to make it work in one of my projects, if you find an api call or a type missing, please create an issue or open a pull request. Thanks!

## Usage

- First you need an installation of PHPOffice libraries so either PhpSpreadsheet or PHPWord (or both). You might also need parts of [Common](https://github.com/PHPOffice/Common) and maybe [SimpleCache](https://github.com/php-fig/simple-cache)
- You need haxe-phpoffice library so run `haxelib install phpoffice`
- I didn't install those libraries through Composer (suggested in PHPOffice's documentation), but rather obtained all sources from git.
- I placed all sources into one folder called `externalLibs`, building a folder structure so that folders reflect namespaces, e.g. `externalLibs/PHPOffice/PhpSpreadsheet/Spreadsheet.php`
- And then I added `externalLibs` to my include path, I did this by editing `index.php` (the entrypoint that Haxe generates from your code) and changing
`set_include_path(get_include_path().PATH_SEPARATOR.__DIR__.'/lib');` to `set_include_path(get_include_path().PATH_SEPARATOR.__DIR__.'/lib'.PATH_SEPARATOR.__DIR__.'/externalLibs');`. You can probably use other ways to add these external libs to your include path.
- I have commented out `-main MainClass` from my build.hxml so Haxe won't overwrite `index.php` on every compile (`index.php` usually doesn't change)
- Add `-lib phpoffice` to your build files
- Start using externs

## Sample

```haxe
import php.Lib;
import php.phpoffice.phpspreadsheet.Spreadsheet;
import php.phpoffice.phpspreadsheet.worksheet.Worksheet;
import php.phpoffice.phpspreadsheet.writer.Xlsx;

class Main {
  public static function main() {
    var spreadsheet:Spreadsheet = new Spreadsheet();
    spreadsheet.getProperties()
      .setCreator("Me")
      .setLastModifiedBy("Me")
      .setTitle("TestSpreadsheet")
      .setSubject("TestSpreadsheet")
      .setCategory("Test");

    var worksheet:Worksheet = spreadsheet.getActiveSheet();
    worksheet.getPageSetup ()
      .setPaperSize (A4)
      .setOrientation (LANDSCAPE)
      .setHorizontalCentered (true)
      .setVerticalCentered (true)
      .setFitToPage (true);
    worksheet.getPageMargins ()
      .setBottom (0.4)
      .setTop (0.4)
      .setLeft (0.4)
      .setRight (0.4);

    worksheet.setTitle("Tab-Title");
    worksheet.getColumnDimension("A").setAutoSize(true);
    worksheet.getColumnDimension("B").setAutoSize(true);
    worksheet.mergeCells("A1:F1");
    worksheet.mergeCells("A2:F2");

    worksheet.setCellValue("A1", "Headline");
    worksheet.setCellValue("A2", "Subtitle");
    worksheet.getStyle("A1").applyFromArray(Lib.associativeArrayOfHash([
      "font" => Lib.associativeArrayOfHash(["bold" => true]),
      "fill" => Lib.associativeArrayOfHash([
        "fillType" => "solid",
        "color" => Lib.associativeArrayOfHash(["argb" => "FFD9D9D9"])
      ]),
      "borders" => Lib.associativeArrayOfHash(["allBorders" => Lib.associativeArrayOfHash(["borderStyle" => "thin"])]),
      "alignment" => Lib.associativeArrayOfHash(["horizontal" => "center", "vertical" => "bottom", "wrapText" => false]),
    ]));

    var writer:Xlsx = new Xlsx(spreadsheet);
    writer.save("/tmp/myFirstSpreadsheet.xlsx");
  }
}
```
