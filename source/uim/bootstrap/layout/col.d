module uim.bootstrap.layout.col;

import uim.bootstrap;

class DBS4Col : DBS4Obj {
	mixin(H5This!("Div"));

	O sizes(this O)(string[] someSizes...) { 
		foreach(size; someSizes) this.classes("col-"~size); 
		return cast(O)this; 
	}
	unittest {	
		assert(Assert(BS4Col.sizes("12"), `<div class="col-12"></div>`));
	}
}
mixin(H5Calls!("BS4Col"));