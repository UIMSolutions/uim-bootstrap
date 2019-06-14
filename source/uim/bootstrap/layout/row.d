module uim.bootstrap.layout.row;

import uim.bootstrap;

class DBS4Row : DH5DIV {
	mixin(BS4This!("Row", `["row"]`));

	mixin(MyContent!("col", "BS4Col"));
}
mixin(BS4Func!("Row"));

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Row == `<div class="row"></div>`);
}