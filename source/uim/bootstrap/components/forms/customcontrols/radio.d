module uim.bootstrap.components.forms.customcontrols.radio;

import uim.bootstrap;

class DBS4CustomRadio : DBS4CustomControl {
	mixin(H5This!("INPUT", `["custom-control-input"]`, `["type":"radio"]`));
	override public void init() {
		super.init;
	}
	unittest {
		writeln(BS4CustomRadio);
		assert(BS4CustomRadio == `<input class="custom-control-input" type="radio">`);
	}
}
mixin(H5Short!"BS4CustomRadio");

unittest {
}