module uim.bootstrap.tables.row;

import uim.bootstrap;

class DBS4TableRow : DBS4Obj {
	mixin(H5This!"TR");
	override public void init() {
		super.init;
	}

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
	}
} 
mixin(H5Short!"BS4TableRow");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4TableRow == "<tr></tr>");
	assert(BS4TableRow.values(["a","b"]) == `<tr><td>a</td><td>b</td></tr>`);
}

