module uim.bootstrap.bs4.tables.column;

@safe: 
import uim.bootstrap;

class DBS4TableColumn : DBS4Obj {
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
mixin(H5Calls!"BS4TableColumn");

unittest {
	assert(Assert(BS4TableColumn, `<th scope="col"></th>`));
	assert(Assert(BS4TableColumn.title("xyz"), `<th scope="col">xyz</th>`));
}
