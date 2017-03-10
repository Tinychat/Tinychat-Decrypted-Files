package org.robotlegs.core
{
    import flash.events.*;

    public interface IEventMap
    {

        public function IEventMap();

        function mapListener(dispatcher:IEventDispatcher, type:String, listener:Function, eventClass:Class = null, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = true) : void;

        function unmapListener(dispatcher:IEventDispatcher, type:String, listener:Function, eventClass:Class = null, useCapture:Boolean = false) : void;

        function unmapListeners() : void;

    }
}
