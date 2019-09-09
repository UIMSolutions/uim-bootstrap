module uim.bootstrap.tables.table;

import uim.bootstrap;

class DBS4Table : DBS4Obj {
	mixin(H5This!("TABLE", `["table"]`));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("row", "BS4Table"));
}
mixin(BS4Short!"Table");

unittest {
	assert(BS4Table == `<table class="table"></table>`);
}