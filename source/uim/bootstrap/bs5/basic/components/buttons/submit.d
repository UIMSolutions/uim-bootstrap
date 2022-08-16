module uim.bootstrap.bs5.basic.components.buttons.submit;

@safe: 
import uim.bootstrap;

class DBS5ButtonSubmit : DBS5ButtonObj {
	mixin(H5This!("button", ["btn"], `["type":"submit"]`));

	override void initialize() {
		super.initialize;
	}

	// Set button to active state
	O active(this O)(bool mode = true){ if (mode) _classes ~= "active"; return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonSubmit.active(true) == `<button class="active btn" type="submit"></button>`);
	}

	O block(this O)(bool mode = true){ if (mode) this.addClasses("btn-block"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonSubmit.block(true) == `<button class="btn btn-block" type="submit"></button>`);
	}

	O color(this O)(string value){ this.addClasses("btn-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonSubmit.color("primary") == `<button class="btn btn-primary" type="submit"></button>`);
	}

	// Set button to disabled
	O disabled(this O)(bool mode = true){ if (mode) this.addClasses("disabled"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonSubmit.disabled(true) == `<button class="btn disabled" type="submit"></button>`);
	}

	// Set outline color
	O outline(this O)(string value){ this.addClasses("btn-outline-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ButtonSubmit.outline("primary") == `<button class="btn btn-outline-primary" type="submit"></button>`);
	}

	O size(this O)(string value){ this.addClasses("btn-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		writeln(BS5ButtonSubmit.size("lg"));
		assert(BS5ButtonSubmit.size("lg") == `<button class="btn btn-lg" type="submit"></button>`);
	}
}
mixin(H5Calls!"BS5ButtonSubmit");

version(test_uim_bootstrap) { unittest {
	// assert(BS5ButtonSubmit == `<button class="btn" type="button"></button>`);
}
