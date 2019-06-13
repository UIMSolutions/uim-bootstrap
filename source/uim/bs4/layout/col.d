module uim.bs4.layout.col;

import uim.bs4;

class DBS4Col : DH5DIV {
	mixin(BS4This!("Col"));

	O sizes(this O)(string[] someSizes...) { 
		foreach(size; someSizes) this.classes("col-"~size); 
		return cast(O)this; }
}
mixin(BS4Func!("Col"));

unittest {
	writeln("Testing ", __MODULE__);
	assert(BS4Col.sizes("12") == `<div class="col-12"></div>`);
}