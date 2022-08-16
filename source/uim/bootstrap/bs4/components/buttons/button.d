module uim.bootstrap.bs4.components.buttons.button;

@safe: 
import uim.bootstrap;

class DBS4Button : DBS4ButtonObj {
	mixin(H5This!("button", ["btn"], `["type":"button"]`));

	// Set button to active state
	O active(this O)(bool mode = true){ if (mode) _classes ~= "active"; return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Button.active(true) == `<button class="active btn" type="button"></button>`);
	}

	O block(this O)(bool mode = true){ if (mode) this.addClasses("btn-block"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Button.block(true) == `<button class="btn btn-block" type="button"></button>`);
	}

	O color(this O)(string value){ this.addClasses("btn-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Button.color("primary") == `<button class="btn btn-primary" type="button"></button>`);
	}

	// Set button to disabled
	O disabled(this O)(bool mode = true){ if (mode) this.addClasses("disabled"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Button.disabled(true) == `<button class="btn disabled" type="button"></button>`);
	}

	// Set outline color
	O outline(this O)(string value){ this.addClasses("btn-outline-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Button.outline("primary") == `<button class="btn btn-outline-primary" type="button"></button>`);
	}

	O size(this O)(string value){ this.addClasses("btn-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Button.size("lg") == `<button class="btn btn-lg" type="button"></button>`);
	}
}
mixin(H5Calls!"BS4Button");

version(test_uim_bootstrap) { unittest {
	assert(BS4Button == `<button class="btn" type="button"></button>`);
}
