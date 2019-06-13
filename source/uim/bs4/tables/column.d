module uim.bs4.tables.column;

import uim.bs4;

class DBS4TableColumn : DBS4Obj {
	mixin(H5This!"TH");
	override public void init() {
		super.init;
	}

	mixin(TProperty!("string", "key"));
	mixin(TProperty!("string", "title"));
	mixin(TProperty!("int", "width"));
	mixin(TProperty!("string", "type"));

	override string toHTML() {
		this.clearContent;
		_attributes["scope"]="col";
		if (_width) _attributes["width"]=to!string(_width);
		this.content(_title);
		return super.toHTML;
	}
}
mixin(H5Short!"BS4TableColumn");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4TableColumn == `<th scope="col"></th>`);
	assert(BS4TableColumn.title("xyz") == `<th scope="col">xyz</th>`);
}
