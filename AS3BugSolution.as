import flash.events.ErrorEvent;

function someFunction():void{
    trace("Start");
    try{
        //some code that may cause an error
    }
    catch(error:Error){
        trace("Error caught: "+ error.message);
    }
    catch(error:ReferenceError){
        trace("ReferenceError: "+error.message);
    }
    catch(error:TypeError){
        trace("TypeError: "+error.message);
    }
    catch(error:ArgumentError){
        trace("ArgumentError: "+error.message);
    }
    catch(error:Event){
        if (error is ErrorEvent) {
            trace("ErrorEvent caught: " + (error as ErrorEvent).text);
        }
    }
    catch(e:Object){
        // Handle other unexpected errors
        trace("Unexpected error: "+e);
    }

    trace("End");
}