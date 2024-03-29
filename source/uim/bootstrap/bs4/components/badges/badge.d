module uim.bootstrap.bs4.components.badges.badge;

@safe: 
import uim.bootstrap;

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 */
class DBS4Badge : DBS4Obj {
	mixin(H5This!("Span", ["badge"]));

	// Color of badge
	O color(this O)(string name) {
		return this.addClasses("badge-" ~ name);
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Badge.color("secondary") == `<span class="badge badge-secondary"></span>`);
	}}

	//Rounded badges
	O pill(this O)(bool mode = true) {
		if (mode)
			this.addClasses("badge-pill");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Badge.pill(true) == `<span class="badge badge-pill"></span>`);
	}}
}
// Shortcut to class DBS4Badge
mixin(H5Calls!("BS4Badge"));

version(test_uim_bootstrap) { unittest {
	assert(BS4Badge == `<span class="badge"></span>`);
}}
