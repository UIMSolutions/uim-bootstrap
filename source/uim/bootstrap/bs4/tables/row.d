module uim.bootstrap.bs4.tables.row;

@safe: 
import uim.bootstrap;

class DBS4TableRow : DBS4Obj {
	mixin(H5This!"Tr");

	/// Adding a header cell
	mixin(MyContent!("th", "H5Th"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4TableRow.th == `<tr><th></th></tr>`);
	}}

	/// Adding a cell
	mixin(MyContent!("cell", "H5Td"));
	mixin(MyContent!("td", "H5Td"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4TableRow.cell == `<tr><td></td></tr>`);
		assert(BS4TableRow.td == `<tr><td></td></tr>`);
	}}

/*
	mixin(TProperty!("string[string]", "keyPairs"));
	mixin(TProperty!("string[]", "values"));

	string renderHTML(DBS4TableColumn[] columns) {
		this.clearContent;
		if (_keyPairs.empty) return renderHTML;
		else {
			foreach(col; columns) {
				if (col.key in _keyPairs) this.addContent("<td>"~_keyPairs[col.key]~"</td>");
			}
		}
		return super.renderHTML;
	}
	override string renderHTML(STRINGAA bindings = null) {
		this.clearContent;
		if ((_values.length == 0) && (!_keyPairs.empty)) _values = _keyPairs.values;
		_values.each!(v => this.addContent("<td>"~v~"</td>"));

		return super.renderHTML;
	}*/
} 
mixin(H5Calls!"BS4TableRow");

version(test_uim_bootstrap) { unittest {
	assert(BS4TableRow == `<tr></tr>`);
	//assert(BS4TableRow.values(["a","b"]) == `<tr><td>a</td><td>b</td></tr>`);
}}

