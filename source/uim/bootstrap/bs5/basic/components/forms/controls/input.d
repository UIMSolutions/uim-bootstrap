module uim.bootstrap.bs5.basic.components.forms.controls.input;

import uim.bootstrap; 

@safe: class DBS5Input : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], null, true));	

	mixin(MyAttribute!"value");
	mixin(MyAttribute!"placeholder");

}
mixin(H5Calls!("BS5Input"));

unittest {
	
}