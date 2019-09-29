module uim.bootstrap.tables.header;

import uim.bootstrap;

class DBS4TableHeader : DBS4Obj {
	mixin(H5This!"Thead");
}
mixin(BS4Short!"TableHeader");

unittest {
	assert(BS4TableHeader == `<thead></thead>`);
}
