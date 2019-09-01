module uim.bootstrap.components.buttons.button;

import uim.bootstrap;

class DBS4Button : DBS4ButtonObj {
	mixin(H5This!("button", `["btn"]`, `["type":"button"]`));
	override public void init() {
		super.init;
	}
}
mixin(BS4Short!"Button");

unittest {
	assert(BS4Button == `<button class="btn" type="button"></button>`);
}
