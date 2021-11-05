module uim.bootstrap.bs5.basic.components.badges.link;

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
		return this.classes("badge-"~name);
	}
	unittest {
		assert(Assert(BS5BadgeLink.color("secondary"),`<a class="badge badge-secondary"></a>`));
	}

	//Rounded badges
	O pill(this O)(bool mode = true) {
		if (mode) this.classes("badge-pill");
		return cast(O) this;
	}
	unittest {
		assert(Assert(BS5BadgeLink.pill(true),`<a class="badge badge-pill"></a>`));
	}
}
// Shortcut to @safe: class DBS5Badge
mixin(H5Calls!("BS5BadgeLink"));

unittest {
	assert(Assert(BS5BadgeLink,`<a class="badge"></a>`));
}
