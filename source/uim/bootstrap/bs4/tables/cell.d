module uim.bootstrap.bs4.tables.cell;

@safe: 
import uim.bootstrap;

class DBS4TableCell : DBS4Obj {
	mixin(H5This!"Td");
	
	O colspan(this O)(int span) { return this.colspan(to!string(span)); }
	O colspan(this O)(string span) { 
		this.attributes("colspan", span);
		return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4TableCell.colspan(2), == `<td colspan="2"></td>`);
	}}

	O rowspan(this O)(int span) { return this.rowspan(to!string(span)); }
	O rowspan(this O)(string span) { 
		this.attributes("rowspan", span);
		return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4TableCell.rowspan(2), == `<td rowspan="2"></td>`);
	}}
}
mixin(H5Calls!"BS4TableCell");

version(test_uim_bootstrap) { unittest {
	assert(BS4TableCell, == `<td></td>`);
}}
