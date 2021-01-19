module uim.bootstrap.bs5.classes.tables.cell;

import uim.bootstrap;

class DBS5TableCell : DBS5Obj {
	mixin(H5This!"Td");
	override public void _init() { super._init; }
	
	O colspan(this O)(int span) { return this.colspan(to!string(span)); }
	O colspan(this O)(string span) { 
		this.attributes("colspan", span);
		return cast(O)this; }
	unittest {
		assert(Assert(BS5TableCell.colspan(2), `<td colspan="2"></td>`));
	}

	O rowspan(this O)(int span) { return this.rowspan(to!string(span)); }
	O rowspan(this O)(string span) { 
		this.attributes("rowspan", span);
		return cast(O)this; }
	unittest {
		assert(Assert(BS5TableCell.rowspan(2), `<td rowspan="2"></td>`));
	}
}
mixin(H5Calls!"BS5TableCell");

unittest {
	assert(Assert(BS5TableCell, `<td></td>`));
}
