module uim.bootstrap.bs5.basic.components.buttons.link;

import uim.bootstrap;

@safe: class DBS5ButtonLink : DBS5ButtonObj {
	mixin(H5This!("A", ["btn"], `["role":"button"]`));

	O disabled(this O)() {
		this.classes(["disabled"]).attributes(["tabindex":"-1", "aria-disabled":"true"]);
		return cast(O)this;
	}
	unittest{}
}
mixin(H5Calls!"BS5ButtonLink");

unittest {
	assert(Assert(BS5ButtonLink, `<a class="btn" role="button"></a>`));
}
	

