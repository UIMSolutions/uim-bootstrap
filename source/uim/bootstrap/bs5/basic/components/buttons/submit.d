module uim.bootstrap.bs5.basic.components.buttons.submit;

import uim.bootstrap;

class DBS5ButtonSubmit : DBS5ButtonObj {
	mixin(H5This!("button", ["btn"], `["type":"submit"]`));

	// Set button to active state
	O active(this O)(bool mode = true){ if (mode) _classes ~= "active"; return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonSubmit.active(true),`<button class="active btn" type="button"></button>`));
	}

	O block(this O)(bool mode = true){ if (mode) this.classes("btn-block"); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonSubmit.block(true),`<button class="btn btn-block" type="button"></button>`));
	}

	O color(this O)(string value){ this.classes("btn-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonSubmit.color("primary"),`<button class="btn btn-primary" type="button"></button>`));
	}

	// Set button to disabled
	O disabled(this O)(bool mode = true){ if (mode) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonSubmit.disabled(true),`<button class="btn disabled" type="button"></button>`));
	}

	// Set outline color
	O outline(this O)(string value){ this.classes("btn-outline-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonSubmit.outline("primary"),`<button class="btn btn-outline-primary" type="button"></button>`));
	}

	O size(this O)(string value){ this.classes("btn-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonSubmit.size("lg"),`<button class="btn btn-lg" type="button"></button>`));
	}
}
mixin(H5Calls!"BS5ButtonSubmit");

unittest {
	// assert(Assert(BS5ButtonSubmit,`<button class="btn" type="button"></button>`));
}
