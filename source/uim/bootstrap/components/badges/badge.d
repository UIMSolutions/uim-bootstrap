module uim.bootstrap.components.badges.badge;

import uim.bootstrap;

class DBS4Badge : DH5SPAN {
	mixin(BS4This!("Badge", `["badge"]`));

	O color(this O)(string name) { return this.classes("badge-"~name); };
	O pill(this O)(bool mode = true) { 
		if (mode) this.classes("badge-pill"); 
		return cast(O)this; }
}
mixin(BS4Func!("Badge"));

unittest {
	writeln("Testing ", __MODULE__);
}