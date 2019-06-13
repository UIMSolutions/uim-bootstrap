module uim.bs4.tables.table;

import uim.bs4;

class DBS4Table : DBS4Obj {
	mixin(H5This!("TABLE", `["table"]`));
	override public void init() {
		super.init;
	}

	mixin(MyContent!("row", "BS4Table"));
}
mixin(H5Short!"BS4Table");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Table == `<table class="table"></table>`);
//	writeln(BS4Table.column(BS4TableColumn("", "ID"), BS4TableColumn("", "Name")));
//	writeln(BS4Table
//			.column("ID", "id")
//			.column("Name", "name"));
//	writeln(BS4Table
//		.column("ID", "id")
//		.column("Name", "name")
//		.row(["id":"1", "name":"x"])
//		.row(["id":"2", "name":"xx"])
//		.row(["id":"3", "name":"xxx"]));

	//	writeln(BS4Table
	//		.column("", "id", "ID")
	//		.column("", "name", "Name")
	//		.row(["id": "id-1", "name": "x"])
	//		.row(["id": "id-1", "name": "x"]));
	//	== `<table class="table"><thead><tr><th scope="col">ID</th><th scope="col">Name</th></tr></thead></table>`
	//		);
}