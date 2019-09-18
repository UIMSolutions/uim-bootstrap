module uim.bootstrap.tables.table;

import uim.bootstrap;

class DBS4Table : DBS4Obj {
	mixin(H5This!("TABLE", `["table"]`));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("caption", "H5Caption"));
	unittest {
		assert(BS4Table.caption("test") == `<table class="table"><caption>test</caption></table>`);
	}	

	mixin(MyContent!("head", "H5Thead"));
	mixin(MyContent!("header", "H5Thead"));
	unittest {
		assert(BS4Table.head == `<table class="table"><thead></thead></table>`);
		assert(BS4Table.header == `<table class="table"><thead></thead></table>`);
	}	

	mixin(MyContent!("body_", "H5Tbody"));
	unittest {
		assert(BS4Table.body_ == `<table class="table"><tbody></tbody></table>`);
	}	

	mixin(MyContent!("foot", "H5Tfoot"));
	mixin(MyContent!("footer", "H5Tfoot"));
	unittest {
		assert(BS4Table.foot == `<table class="table"><tfoot></tfoot></table>`);
		assert(BS4Table.footer == `<table class="table"><tfoot></tfoot></table>`);
	}	

	mixin(MyContent!("row", "BS4TableRow"));
	mixin(MyContent!("tr", "BS4TableRow"));
	unittest {
		assert(BS4Table.row == `<table class="table"><tr></tr></table>`);
	}	
}
mixin(BS4Short!"Table");

unittest {
	assert(BS4Table == `<table class="table"></table>`);
}