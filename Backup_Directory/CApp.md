# SPKITL_ServerApp_CApp or SPKIML_ServerApp_CApp
When running the compiled command line application, there're essentially two to three false positives that can be ignored.

1. Challenge expired: As the application uses CRAM with DS, if the application didn't start up or run smoothly, the requested challenge after expired will cause issues to the application.\
If this happens, kindly restart the application should be fine.
2. Unable to find/fetch certificate: This's because either the other top level node or the parent node(if it's mid level node), do not sign the submitted information from authorized users.\
If this happens, kindly contact the top level node's node operator and restart the application after his/her side done signing information. 
