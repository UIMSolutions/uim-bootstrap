module uim.bootstrap.bs5.basic.components.buttons.reset;

import uim.bootstrap;

class DBS5ButtonReset : DBS5ButtonObj {
	mixin(H5This!("button", ["btn"], `["type":"reset"]`));

	// Set button to active state
	O active(this O)(bool mode = true){ if (mode) _classes ~= "active"; return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonReset.active(true),`<button class="active btn" type="button"></button>`));
	}

	O block(this O)(bool mode = true){ if (mode) this.classes("btn-block"); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonReset.block(true),`<button class="btn btn-block" type="button"></button>`));
	}

	O color(this O)(string value){ this.classes("btn-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonReset.color("primary"),`<button class="btn btn-primary" type="button"></button>`));
	}

	// Set button to disabled
	O disabled(this O)(bool mode = true){ if (mode) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonReset.disabled(true),`<button class="btn disabled" type="button"></button>`));
	}

	// Set outline color
	O outline(this O)(string value){ this.classes("btn-outline-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonReset.outline("primary"),`<button class="btn btn-outline-primary" type="button"></button>`));
	}

	O size(this O)(string value){ this.classes("btn-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5ButtonReset.size("lg"),`<button class="btn btn-lg" type="button"></button>`));
	}
}
mixin(H5Calls!"BS5ButtonReset");

unittest {
	// assert(Assert(BS5ButtonReset,`<button class="btn" type="button"></button>`));
}
