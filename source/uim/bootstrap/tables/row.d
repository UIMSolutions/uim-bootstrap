module uim.bootstrap.tables.row;

import uim.bootstrap;

class DBS4TableRow : DBS4Obj {
	mixin(H5This!"Tr");
	override public void _init() {
		super._init;
	}

	/// Adding a header cell
	mixin(MyContent!("th", "H5Th"));
	unittest {
		assert(BS4TableRow.th == `<tr><th></th></tr>`);
	}

	/// Adding a cell
	mixin(MyContent!("cell", "H5Td"));
	mixin(MyContent!("td", "H5Td"));
	unittest {
		assert(BS4TableRow.cell == `<tr><td></td></tr>`);
		assert(BS4TableRow.td == `<tr><td></td></tr>`);
	}

/*
	mixin(TProperty!("string[string]", "keyPairs"));
	mixin(TProperty!("string[]", "values"));

	string toHTML(DBS4TableColumn[] columns) {
		this.clearContent;
		if (_keyPairs.empty) return toHTML;
		else {
			foreach(col; columns) {
				if (col.key in _keyPairs) this.content("<td>"~_keyPairs[col.key]~"</td>");
			}
		}
		return super.toHTML;
	}
	override string toHTML() {
		this.clearContent;
		if ((_values.length == 0) && (!_keyPairs.empty)) _values = _keyPairs.values;
		foreach(v; _values) {
			this.content("<td>"~v~"</td>");
		}
		return super.toHTML;
	}*/
} 
mixin(BS4Short!"TableRow");

unittest {
	assert(BS4TableRow == "<tr></tr>");
	//assert(BS4TableRow.values(["a","b"]) == `<tr><td>a</td><td>b</td></tr>`);
}

