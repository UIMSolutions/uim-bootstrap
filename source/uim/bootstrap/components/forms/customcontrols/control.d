module uim.bootstrap.components.forms.customcontrols.control;

import uim.bootstrap;

class DBS4CustomControl : DBS4Obj {
	mixin(H5This!("DIV", ["custom-control"]));

	mixin(MyContent!("checkbox", "BS4CustomCheckbox"));
	mixin(MyContent!("input", "BS4CustomInput"));
	mixin(MyContent!("radio", "BS4CustomRadio"));
	mixin(MyContent!("label", "H5Label"));
	
	unittest {
		assert(Assert(BS4CustomControl, `<div class="custom-control"></div>`));
	}
}
mixin(H5Calls!"BS4CustomControl");