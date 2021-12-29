module uim.bootstrap.bs5.basic.components.forms.customcontrols.control;

@safe: 
import uim.bootstrap;

class DBS5CustomControl : DBS5Obj {
	mixin(H5This!("DIV", ["custom-control"]));

	mixin(MyContent!("checkbox", "BS5CustomCheckbox"));
	mixin(MyContent!("input", "BS5CustomInput"));
	mixin(MyContent!("radio", "BS5CustomRadio"));
	mixin(MyContent!("label", "H5Label"));
	
	unittest {
		assert(Assert(BS5CustomControl, `<div class="custom-control"></div>`));
	}
}
mixin(H5Calls!"BS5CustomControl");