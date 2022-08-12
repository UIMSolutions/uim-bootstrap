module uim.bootstrap.bs5.basic.components.badges.badge;

@safe: 
import uim.bootstrap;

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 * Authors: UI Manufaktur UG, https://ui-manufaktur.com 
 */
class DBS5Badge : DBS5Obj {
	mixin(H5This!("Span", ["badge"]));

	// Color of badge
	O color(this O)(string name) {
		return this.addClasses("badge-" ~ name);
	}
	unittest {
		assert(BS5Badge.color("secondary") == `<span class="badge badge-secondary"></span>`);
	}

	//Rounded badges
	O pill(this O)(bool mode = true) {
		if (mode)
			this.addClasses("badge-pill");
		return cast(O) this;
	}
	unittest {
		assert(BS5Badge.pill(true) == `<span class="badge badge-pill"></span>`);
	}
}
// Shortcut to class DBS5Badge
mixin(H5Calls!("BS5Badge"));

unittest {
	assert(BS5Badge == `<span class="badge"></span>`);
}
