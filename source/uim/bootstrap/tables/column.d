module uim.bootstrap.tables.column;

import uim.bootstrap;

class DBS4TableColumn : DBS4Obj {
	mixin(H5This!"TH");
	override public void _init() {
		super._init;
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
mixin(BS4Short!"TableColumn");

unittest {
	

	assert(BS4TableColumn == `<th scope="col"></th>`);
	assert(BS4TableColumn.title("xyz") == `<th scope="col">xyz</th>`);
}
