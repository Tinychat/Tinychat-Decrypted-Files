package com.facebook.graph.data
{

    public class FacebookSession extends Object
    {
        public var uid:String;
        public var user:Object;
        public var sessionKey:String;
        public var expireDate:Date;
        public var accessToken:String;
        public var secret:String;
        public var sig:String;
        public var availablePermissions:Array;

        public function FacebookSession()
        {
            return;
        }// end function

        public function fromJSON(result:Object) : void
        {
            if (result != null)
            {
                this.sessionKey = result.session_key;
                this.expireDate = new Date(result.expires);
                this.accessToken = result.access_token;
                this.secret = result.secret;
                this.sig = result.sig;
                this.uid = result.uid;
            }
            return;
        }// end function

        public function toString() : String
        {
            return "[userId:" + this.uid + "]";
        }// end function

    }
}
