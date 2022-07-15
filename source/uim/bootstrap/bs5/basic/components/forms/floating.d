module uim.bootstrap.bs5.basic.components.forms.floating;

@safe: 
import uim.bootstrap;

class DBS5FormFloating : DBS5Obj {
	mixin(H5This!("Div", ["form-floating"]));

  mixin(MyContent!("label", "H5Label"));
}
mixin(H5Calls!"BS5FormFloating");

unittest {
	assert(Assert(BS5FormFloating, `<div class="form-floating"></div>`));
}