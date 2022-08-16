module uim.bootstrap.bs4.obj;

@safe: 
import uim.bootstrap;

class DBS4Obj : DH5Obj {
	mixin(H5This!("DIV"));

	// Adding a margin  
	O margin(this O)(int size) { return margin("-"~to!string(size)); }
	O margin(this O)(string side, int size) { return margin(side~"-"~to!string(size)); }
	O margin(this O)(string value) {
		if (value.length > 0) this.classes("m"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.margin("t-2"), `<div class="mt-2"></div>`);
	}

	/// Adding padding
	O padding(this O)(int size) { return padding("-"~to!string(size)); }
	O padding(this O)(string side, int size) { return padding(side~"-"~to!string(size)); }
	O padding(this O)(string value)	{
		if (value.length > 0) this.classes("p"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.padding("t-2"), `<div class="pt-2"></div>`);
	}

	/// Clear border 
	O noPadding(this O)(string side = null) { 
		this.classes("p-0");
		return cast(O) this;
	}

	/// Adding border 
	O border(this O)(int value) { 
		if (value > 0) this.classes("border-"~to!string(value));
		else this.classes("border");
		return cast(O) this;
	 }
	O border(this O)(string side, int value) { return border(side~"-"~to!string(value)); }
	O border(this O)(string value = null) {
		if (value.length > 0) this.classes("border-"~value);
		else this.classes("border");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.border, `<div class="border"></div>`);
		assert(BS4Obj.border(1), `<div class="border-1"></div>`);
		assert(BS4Obj.border("top"), `<div class="border-top"></div>`);
	}

	/// Clear border 
	O noBorder(this O)(string side = null) { 
		if (side.length > 0) this.classes("border-"~side~"-0");
		else this.classes("border-0");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.noBorder, `<div class="border-0"></div>`);
	}

	/// Set border color 
	O borderColor(this O)(string color) { 
		if (color.length > 0) this.classes("border-"~color);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.borderColor("primary"), `<div class="border-primary"></div>`);
		assert(BS4Obj.border.borderColor("primary"), `<div class="border border-primary"></div>`);
	}

	/// Change rounded of corners 
	O rounded(this O)(string value = "") {
		if (value.length > 0) this.classes("rounded-"~value);
		else this.classes("rounded");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.rounded, `<div class="rounded"></div>`);
		assert(BS4Obj.rounded("top"), `<div class="rounded-top"></div>`);
	}

	/// Clear rounded
	O noRounded(this O)() { 
		this.classes("rounded-0");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.noRounded, `<div class="rounded-0"></div>`);
	}

	/// Set size of rounded
	O roundedSize(this O)(string value) {
		if (value.length > 0) this.classes("rounded-"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.roundedSize("lg"), `<div class="rounded-lg"></div>`);
	}

	O clearfix(this O)() { 
		this.classes("clearfix");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.clearfix, `<div class="clearfix"></div>`);
	}

	O closeButton(this O)(string icon = "&times;") { 
		this.content(BS4Button(["close"], ["aria-label":"Close"], H5Span(["aria-label":"true"], icon)));
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.closeButton, `<div><button class="btn close" aria-label="Close" type="button"><span aria-label="true">&times;</span></button></div>`);
	}

	/// Setting text color
	O textColor(this O)(string color, int value) { return textColor(color, to!string(value)); }
	O textColor(this O)(string color, string value = null) {
		if (value.length > 0) this.classes("text-"~color~"-"~value);
		else this.classes("text-"~color);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.textColor("primary"), `<div class="text-primary"></div>`);
		assert(BS4Obj.textColor("black", "50"), `<div class="text-black-50"></div>`);
	}

	/// Setting background color
	O background(this O)(string color, int value) { return background(color, to!string(value)); }
	O background(this O)(string color, string value = null) {
		if (value.length > 0) this.classes("bg-"~color~"-"~value);
		else this.classes("bg-"~color);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.background("primary"), `<div class="bg-primary"></div>`);
	}

	/// Setting display
	O display(this O)(string value) { return this.display(null, value); }
	O display(this O)(string breakpoint, string value) {
		if (breakpoint.length > 0) this.classes("d-"~breakpoint~"-"~value);
		else this.classes("d-"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.display("none"), `<div class="d-none"></div>`);
		assert(BS4Obj.display("sm", "block"), `<div class="d-sm-block"></div>`);
	}
	
	/// Setting print display
	O print(this O)(string value) {
		if (value.length > 0) this.classes("d-print-"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Obj.print("none"), `<div class="d-print-none"></div>`);
	}
}

mixin(H5Calls!"BS4Obj");

version(test_uim_bootstrap) { unittest {
	assert(BS4Obj == `<div></div>`);
}
