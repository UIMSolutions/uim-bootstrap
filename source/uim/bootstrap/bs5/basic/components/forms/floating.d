module uim.bootstrap.bs5.basic.components.forms.floating;

@safe: 
import uim.bootstrap;

class DBS5FormFloatting : DBS5Obj {
	mixin(H5This!("Div", ["form-floating"]));
}
mixin(H5Calls!"BS5FormFloatting");

unittest {
	assert(Assert(BS5FormFloatting, `<form></form>`));
	assert(Assert(BS5FormFloatting.inline, `<form class="form-inline"></form>`));
}<div class="