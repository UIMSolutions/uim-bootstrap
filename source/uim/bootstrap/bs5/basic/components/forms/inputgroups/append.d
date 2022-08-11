module uim.bootstrap.bs5.basic.components.forms.inputgroups.append;

@safe: 
import uim.bootstrap;

class DBS5InputGroupAppend : DBS5Obj {
	mixin(H5This!("DIV", ["input-group-append"]));

	mixin(MyContent!("button", "BS5Button"));
	unittest {
		assert(BS5InputGroupAppend.button, `<div class="input-group-append"><button class="btn" type="button"></button></div>`);
	}

	mixin(MyContent!("text", "BS5InputGroupText"));
	unittest {
		assert(BS5InputGroupAppend.text, `<div class="input-group-append"><div class="input-group-text"></div></div>`);
	}
}
mixin(H5Calls!"BS5InputGroupAppend");

unittest {
	assert(BS5InputGroupAppend, `<div class="input-group-append"></div>`);
}