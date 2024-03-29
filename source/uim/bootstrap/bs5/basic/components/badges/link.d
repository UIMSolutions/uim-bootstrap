module uim.bootstrap.bs5.basic.components.badges.link;

@safe:
@safe: 
import uim.bootstrap;

/**
 * Badges in Bootstrap are little additional information to highlight text or numbers.
 * Authors: UI Manufaktur UG, https://ui-manufaktur.com 
 */
class DBS5BadgeLink : DBS5Obj {
	mixin(H5This!("A", ["badge"]));

	// Color of badge
	O color(this O)(string name) {
		return this.addClasses("badge-"~name);
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5BadgeLink.color("secondary") == `<a class="badge badge-secondary"></a>`);
	}}

	//Rounded badges
	O pill(this O)(bool mode = true) {
		if (mode) this.addClasses("badge-pill");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5BadgeLink.pill(true) == `<a class="badge badge-pill"></a>`);
	}}
}
// Shortcut to class DBS5Badge
mixin(H5Calls!("BS5BadgeLink"));

version(test_uim_bootstrap) { unittest {
	assert(BS5BadgeLink);
	assert(BS5BadgeLink == `<a class="badge"></a>`);
}}
