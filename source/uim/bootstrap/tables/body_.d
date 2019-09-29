module uim.bootstrap.tables.body_;

import uim.bootstrap;

class DBS4TableBody : DBS4Obj {
	mixin(H5This!"Tbody");
}
mixin(BS4Short!"TableBody");

unittest {
	assert(BS4TableBody == `<tbody></tbody>`);
}
