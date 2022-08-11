﻿module uim.bootstrap.bs5.classes.tables.column;

@safe: 
import uim.bootstrap;

class DBS5TableColumn : DBS5Obj {
	mixin(H5This!"th");


	mixin(TProperty!("string", "key"));
	mixin(TProperty!("string", "title"));
	mixin(TProperty!("int", "width"));
	mixin(TProperty!("string", "type"));

	override string onlyHTML() {
		this.clearContent;
		_attributes["scope"]="col";
		if (_width) _attributes["width"]=to!string(_width);
		this.content(_title);
		return super.onlyHTML;
	}
}
mixin(H5Calls!"BS5TableColumn");

unittest {
	assert(BS5TableColumn, `<th scope="col"></th>`));
	assert(BS5TableColumn.title("xyz"), `<th scope="col">xyz</th>`));
}
