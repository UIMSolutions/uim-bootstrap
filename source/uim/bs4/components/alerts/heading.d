module uim.bs4.components.alerts.heading;

import uim.bs4;

class DBS4AlertHeading : DH5H6 {
	mixin(BS4This!("AlertHeading", `["alert-heading"]`)); 

	O size(this O)(int size) {
		if ((size > 0) && (size < 7)) _tag = "h"~to!string(size);
		return cast(O)this;
	}
}
mixin(BS4Func!("AlertHeading"));

unittest {
	writeln("Testing ", __MODULE__);
}