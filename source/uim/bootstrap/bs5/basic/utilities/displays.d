module uim.bootstrap.bs5.classes.utilities.displays;

@safe: 
import uim.bootstrap; 

T displayInline(T)(T h5) {
	return h5.classes("d-inline");
}
T displayBlock(T)(T h5) {
	return h5.classes("d-block");
}
T displayInlineBlock(T)(T h5) {
	return h5.classes("d-inline-block");
}
T displayTable(T)(T h5) {
	return h5.classes("d-table");
}
T displayTableCell(T)(T h5) {
	return h5.classes("d-table-cell");
}
T displayFlex(T)(T h5) {
	return h5.classes("d-flex");
}
T displayInlineFlex(T)(T h5) {
	return h5.classes("d-inline-flex");
}
T displayNone(T)(T h5, string screenSize) {
	return h5.classes("d-"~screenSize~"-none");
}
T displayPrint(T)(T h5, string mode) {
	return h5.classes("d-print-"~mode);
}

version(test_uim_bootstrap) { unittest {
	
}