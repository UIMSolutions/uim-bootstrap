module uim.bootstrap.bs5.classes.layout.col;

@safe: 
import uim.bootstrap;

class DBS5Col : DBS5Obj {
	mixin(H5This!("Div"));

	O sizes(this O)(string[] someSizes...) { 
		foreach(size; someSizes) this.classes("col-"~size); 
		return cast(O)this; 
	}
	unittest {	
		assert(BS5Col.sizes("12"), `<div class="col-12"></div>`);
	}
}
mixin(H5Calls!("BS5Col"));