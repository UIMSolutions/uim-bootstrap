module uim.bs4.components.buttons.button;

import uim.bs4;

class DBS4Button : DBS4ButtonObj {
	mixin(H5This!("BUTTON", `["btn"]`, `["type":"button"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4Button");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4Button == `<button class="btn" type="button"></button>`);
}
