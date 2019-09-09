module uim.bootstrap.components.forms.customcontrols.radio;

import uim.bootstrap;

class DBS4CustomRadio : DBS4CustomControl {
	mixin(H5This!("INPUT", `["custom-control-input"]`, `["type":"radio"]`));
	override public void _init() {
		super._init;
	}
	unittest {
		assert(BS4CustomRadio == `<input class="custom-control-input" type="radio">`);
	}
}
mixin(BS4Short!"CustomRadio");

unittest {
}