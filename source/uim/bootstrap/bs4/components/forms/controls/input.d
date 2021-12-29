module uim.bootstrap.bs4.components.forms.controls.input;

@safe: 
import uim.bootstrap; 

class DBS4Input : DBS4Obj {
	mixin(H5This!("Input", ["form-control"], null, true));	

}
mixin(H5Calls!("BS4Input"));

unittest {
	
}