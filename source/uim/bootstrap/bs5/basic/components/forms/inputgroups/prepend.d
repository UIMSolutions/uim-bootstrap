module uim.bootstrap.bs5.basic.components.forms.inputgroups.prepend;

@safe: 
import uim.bootstrap;

class DBS5InputGroupPrepend : DBS5Obj {
	mixin(H5This!("DIV", ["input-group-prepend"]));

	mixin(MyContent!("text", "BS5InputGroupText"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5InputGroupPrepend.text, `<div class="input-group-prepend"><div class="input-group-text"></div></div>`);
	}
}
mixin(H5Calls!"BS5InputGroupPrepend");

version(test_uim_bootstrap) { unittest {
	assert(BS5InputGroupPrepend, `<div class="input-group-prepend"></div>`);
}