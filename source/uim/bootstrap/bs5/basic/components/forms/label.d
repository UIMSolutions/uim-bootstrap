module uim.bootstrap.bs5.basic.components.forms.label;

@safe: 
import uim.bootstrap;

class DBS5FormLabel : DBS5Obj {
	mixin(H5This!("label", ["form-label"]));
}
mixin(H5Calls!"BS5FormLabel");
