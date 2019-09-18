module uim.bootstrap.components.badges.badge;

import uim.bootstrap;

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 * Authors: UI Manufaktur UG, https://ui-manufaktur.com 
 */
class DBS4Badge : DBS4Obj {
	mixin(H5This!("Span", `["badge"]`));

	// Color of badge
	O color(this O)(string name) {
		return this.classes("badge-" ~ name);
	}
	unittest {
		assert(BS4Badge.color("secondary") == `<span class="badge badge-secondary"></span>`);
	}

	//Rounded badges
	O pill(this O)(bool mode = true) {
		if (mode)
			this.classes("badge-pill");
		return cast(O) this;
	}
	unittest {
		assert(BS4Badge.pill(true) == `<span class="badge badge-pill"></span>`);
	}
}
// Shortcut to class DBS4Badge
mixin(BS4Func!("Badge"));

unittest {
	assert(BS4Badge == `<span class="badge"></span>`);
}
