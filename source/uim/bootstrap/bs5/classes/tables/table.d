module uim.bootstrap.bs5.classes.tables.table;

@safe: 
import uim.bootstrap;

class DBS5Table : DBS5Obj {
	mixin(H5This!("TABLE", ["table"]));


	mixin(MyContent!("caption", "H5Caption"));
	unittest {
		assert(BS5Table.caption("test"), `<table class="table"><caption>test</caption></table>`));
	}	

	mixin(MyContent!("head", "H5Thead"));
	mixin(MyContent!("header", "H5Thead"));
	unittest {
		assert(BS5Table.head, `<table class="table"><thead></thead></table>`));
		assert(BS5Table.header, `<table class="table"><thead></thead></table>`));
	}	

	mixin(MyContent!("body_", "H5Tbody"));
	unittest {
		assert(BS5Table.body_, `<table class="table"><tbody></tbody></table>`));
	}	

	mixin(MyContent!("foot", "H5Tfoot"));
	mixin(MyContent!("footer", "H5Tfoot"));
	unittest {
		assert(BS5Table.foot, `<table class="table"><tfoot></tfoot></table>`));
		assert(BS5Table.footer, `<table class="table"><tfoot></tfoot></table>`));
	}	

	mixin(MyContent!("row", "BS5TableRow"));
	mixin(MyContent!("tr", "BS5TableRow"));
	unittest {
		assert(BS5Table.row, `<table class="table"><tr></tr></table>`));
	}	
}
mixin(H5Calls!"BS5Table");

unittest {
	assert(BS5Table, `<table class="table"></table>`));
}