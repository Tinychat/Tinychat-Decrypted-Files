package org.osflash.statemachine.errors
{

    public class StateTransitionError extends Error
    {
        public static const TARGET_DECLARATION_MISMATCH:String = "Target state does not exist: ";
        public static const ALREADY_TRANSITIONING:String = "Can not action a transition when FSM is already transitioning.";

        public function StateTransitionError(msg:String)
        {
            super(msg);
            return;
        }// end function

    }
}
