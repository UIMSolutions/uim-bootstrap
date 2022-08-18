module uim.bootstrap.bs4.layout.col;

@safe: 
import uim.bootstrap;

class DBS4Col : DBS4Obj {
	mixin(H5This!("Div"));

	O sizes(this O)(string[] someSizes...) { 
		foreach(size; someSizes) this.addClasses("col-"~size); 
		return cast(O)this; 
	}
	version(test_uim_bootstrap) { unittest {	
		assert(BS4Col.sizes("12") == `<div class="col-12"></div>`);
	}}
}
mixin(H5Calls!("BS4Col"));