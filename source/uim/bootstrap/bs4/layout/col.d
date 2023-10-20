module uim.bootstrap.bs4.layout.col;

@safe: 
import uim.bootstrap;

class DBS4Col : DBS4Obj {
	mixin(H5This!("Div"));

	O sizes(this O)(string[] someSizes...) { 
		sizes(someSizes.dup); 
		
		return cast(O)this; 
	}

	O sizes(this O)(string[] someSizes) { 
		someSizes.each!(s => this.addClasses("col-"~s));

		return cast(O)this; 
	}
}
mixin(H5Calls!("BS4Col"));