module uim.bootstrap.bs5.classes.tables.row;

@safe: 
import uim.bootstrap;

class DBS5TableRow : DBS5Obj {
	mixin(H5This!"Tr");

	/// Adding a header cell
	mixin(MyContent!("th", "H5Th"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5TableRow.th, `<tr><th></th></tr>`);
	}}

	/// Adding a cell
	mixin(MyContent!("cell", "H5Td"));
	mixin(MyContent!("td", "H5Td"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5TableRow.cell, `<tr><td></td></tr>`);
		assert(BS5TableRow.td, `<tr><td></td></tr>`);
	}}

/*
	mixin(TProperty!("string[string]", "keyPairs"));
	mixin(TProperty!("string[]", "values"));

	string onlyHTML(DBS5TableColumn[] columns) {
		this.clearContent;
		if (_keyPairs.empty) return onlyHTML;
		else {
			foreach(col; columns) {
				if (col.key in _keyPairs) this.content("<td>"~_keyPairs[col.key]~"</td>");
			}
		}
		return super.onlyHTML;
	}
	override string onlyHTML() {
		this.clearContent;
		if ((_values.length == 0) && (!_keyPairs.empty)) _values = _keyPairs.values;
		foreach(v; _values) {
			this.content("<td>"~v~"</td>");
		}
		return super.onlyHTML;
	}*/
} 
mixin(H5Calls!"BS5TableRow");

version(test_uim_bootstrap) { unittest {
	assert(BS5TableRow == "<tr></tr>");
	//assert(BS5TableRow.values(["a","b"]), `<tr><td>a</td><td>b</td></tr>`);
}}

