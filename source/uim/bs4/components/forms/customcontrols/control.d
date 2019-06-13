module uim.bs4.components.forms.customcontrols.control;

import uim.bs4;

class DBS4CustomControl : DBS4Obj {
	mixin(H5This!("DIV", `["custom-control"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CustomControl");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CustomControl == `<div class="custom-control"></small>`);
}