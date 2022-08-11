module uim.bootstrap.bs5.basic.components.buttons.reset;

@safe: 
import uim.bootstrap;

class DBS5ButtonReset : DBS5ButtonObj {
	mixin(H5This!("button", ["btn"], `["type":"reset"]`));

	// Set button to active state
	O active(this O)(bool mode = true){ if (mode) _classes ~= "active"; return cast(O)this; }
	unittest {
		assert(BS5ButtonReset.active(true),`<button class="active btn" type="reset"></button>`));
	}

	O block(this O)(bool mode = true){ if (mode) this.classes("btn-block"); return cast(O)this; }
	unittest {
		assert(BS5ButtonReset.block(true),`<button class="btn btn-block" type="reset"></button>`));
	}

	O color(this O)(string value){ this.classes("btn-"~value); return cast(O)this; }
	unittest {
		assert(BS5ButtonReset.color("primary"),`<button class="btn btn-primary" type="reset"></button>`));
	}

	// Set button to disabled
	O disabled(this O)(bool mode = true){ if (mode) this.classes("disabled"); return cast(O)this; }
	unittest {
		assert(BS5ButtonReset.disabled(true),`<button class="btn disabled" type="reset"></button>`));
	}

	// Set outline color
	O outline(this O)(string value){ this.classes("btn-outline-"~value); return cast(O)this; }
	unittest {
		assert(BS5ButtonReset.outline("primary"),`<button class="btn btn-outline-primary" type="reset"></button>`));
	}

	O size(this O)(string value){ this.classes("btn-"~value); return cast(O)this; }
	unittest {
		assert(BS5ButtonReset.size("lg"),`<button class="btn btn-lg" type="reset"></button>`));
	}
}
mixin(H5Calls!"BS5ButtonReset");

unittest {
	// assert(BS5ButtonReset,`<button class="btn" type="button"></button>`));
}
