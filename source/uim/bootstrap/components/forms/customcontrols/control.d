module uim.bootstrap.components.forms.customcontrols.control;

import uim.bootstrap;

class DBS4CustomControl : DBS4Obj {
	mixin(H5This!("DIV", `["custom-control"]`));
	override public void _init() { super._init; }
	unittest {
		assert(BS4CustomControl == `<div class="custom-control"></div>`);
	}
}
mixin(BS4Short!"CustomControl");