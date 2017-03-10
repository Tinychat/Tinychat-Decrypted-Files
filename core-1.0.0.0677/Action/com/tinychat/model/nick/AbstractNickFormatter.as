package com.tinychat.model.nick
{
    import flash.errors.*;

    public class AbstractNickFormatter extends Object implements NickFormatter
    {
        private var _asciiPattern:RegExp;
        private static const unicodePattern:RegExp = /[�-�]/gi;
        private static var unicodeToAsciiTable:Object;
        private static var _initializeUnicodeToAsciiTable:Boolean = initializeUnicodeToAsciiTable();

        public function AbstractNickFormatter()
        {
            return;
        }// end function

        public function get allowedCharacters() : String
        {
            throw new IllegalOperationError("Must be overriden in subclass.");
        }// end function

        public function get typographicCase() : String
        {
            throw new IllegalOperationError("Must be overriden in subclass.");
        }// end function

        public function format(param1:String) : String
        {
            return param1.replace(" ", "_").replace(unicodePattern, unicodeNormalization).match(this.asciiPattern).join("");
        }// end function

        private function get asciiPattern() : RegExp
        {
            if (!this._asciiPattern)
            {
                this._asciiPattern = new RegExp("[" + this.allowedCharacters.replace(/[\[\]]/g, "\\$&") + "]", "g");
            }
            return this._asciiPattern;
        }// end function

        private static function unicodeNormalization(param1:String, param2:uint, param3:String) : String
        {
            if (unicodeToAsciiTable.hasOwnProperty(param1))
            {
                return unicodeToAsciiTable[param1];
            }
            return "";
        }// end function

        private static function initializeUnicodeToAsciiTable() : Boolean
        {
            unicodeToAsciiTable = {};
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "a";
            unicodeToAsciiTable["� "] = "c";
            unicodeToAsciiTable["� "] = "e";
            unicodeToAsciiTable["� "] = "e";
            unicodeToAsciiTable["� "] = "e";
            unicodeToAsciiTable["� "] = "e";
            unicodeToAsciiTable["� "] = "i";
            unicodeToAsciiTable["� "] = "i";
            unicodeToAsciiTable["� "] = "i";
            unicodeToAsciiTable["� "] = "i";
            unicodeToAsciiTable["� "] = "n";
            unicodeToAsciiTable["� "] = "o";
            unicodeToAsciiTable["� "] = "o";
            unicodeToAsciiTable["� "] = "o";
            unicodeToAsciiTable["� "] = "o";
            unicodeToAsciiTable["� "] = "o";
            unicodeToAsciiTable["� "] = "o";
            unicodeToAsciiTable["� "] = "u";
            unicodeToAsciiTable["� "] = "u";
            unicodeToAsciiTable["� "] = "u";
            unicodeToAsciiTable["� "] = "u";
            unicodeToAsciiTable["� "] = "y";
            unicodeToAsciiTable["� "] = "y";
            return true;
        }// end function

    }
}
