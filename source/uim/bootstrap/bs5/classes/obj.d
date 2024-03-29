﻿module uim.bootstrap.bs5.classes.obj;

@safe: 
import uim.bootstrap;

class DBS5Obj : DH5Obj {
	mixin(H5This!("DIV"));

	// Adding margins  
	O margins(this O)(string[] values...) {
		this.margins(values);
		return cast(O) this;
	}
	O margins(this O)(string[] values) {
		foreach(v; values) this.addClasses("m"~v);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.margins("t-2") == `<div class="mt-2"></div>`);
		assert(BS5Obj.margins("t-sm-2", "t-lg-4") == `<div class="mt-lg-4 mt-sm-2"></div>`);
	}}

	/// Adding paddings
	O paddings(this O)(string[] values...)	{
		this.paddings(values);
		return cast(O) this;
	}
	O paddings(this O)(string[] values)	{
		values.each!(v = > this.addClasses("p"~v));

		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.paddings("t-2") == `<div class="pt-2"></div>`);
	}}

/* 	/// Clear border 
	O noPadding(this O)(string side = null) { 
		this.addClasses("p-0");
		return cast(O) this;
	}

	/// Adding border 
	O border(this O)(int value) { 
		if (value > 0) this.addClasses("border-"~to!string(value));
		else this.addClasses("border");
		return cast(O) this;
	 }
	O border(this O)(string side, int value) { return border(side~"-"~to!string(value)); }
	O border(this O)(string value = null) {
		if (value.length > 0) this.addClasses("border-"~value);
		else this.addClasses("border");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.border == `<div class="border"></div>`);
		assert(BS5Obj.border(1) == `<div class="border-1"></div>`);
		assert(BS5Obj.border("top") == `<div class="border-top"></div>`);
	}

	/// Clear border 
	O noBorder(this O)(string side = null) { 
		if (side.length > 0) this.addClasses("border-"~side~"-0");
		else this.addClasses("border-0");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.noBorder == `<div class="border-0"></div>`);
	}

	/// Set border color 
	O borderColor(this O)(string color) { 
		if (color.length > 0) this.addClasses("border-"~color);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.borderColor("primary") == `<div class="border-primary"></div>`);
		assert(BS5Obj.border.borderColor("primary") == `<div class="border border-primary"></div>`);
	}

	/// Change rounded of corners 
	O rounded(this O)(string value = "") {
		if (value.length > 0) this.addClasses("rounded-"~value);
		else this.addClasses("rounded");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.rounded == `<div class="rounded"></div>`);
		assert(BS5Obj.rounded("top") == `<div class="rounded-top"></div>`);
	}

	/// Clear rounded
	O noRounded(this O)() { 
		this.addClasses("rounded-0");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.noRounded == `<div class="rounded-0"></div>`);
	}

	/// Set size of rounded
	O roundedSize(this O)(string value) {
		if (value.length > 0) this.addClasses("rounded-"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.roundedSize("lg") == `<div class="rounded-lg"></div>`);
	}

	O clearfix(this O)() { 
		this.addClasses("clearfix");
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.clearfix == `<div class="clearfix"></div>`);
	}

	O closeButton(this O)(string icon = "&times;") { 
		this.content(BS5Button(["close"], ["aria-label":"Close"], H5Span(["aria-label":"true"], icon)));
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.closeButton == `<div><button class="btn close" aria-label="Close" type="button"><span aria-label="true">&times;</span></button></div>`);
	}

	/// Setting text color
	O textColor(this O)(string color, int value) { return textColor(color, to!string(value)); }
	O textColor(this O)(string color, string value = null) {
		if (value.length > 0) this.addClasses("text-"~color~"-"~value);
		else this.addClasses("text-"~color);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.textColor("primary") == `<div class="text-primary"></div>`);
		assert(BS5Obj.textColor("black", "50") == `<div class="text-black-50"></div>`);
	}

	/// Setting background color
	O background(this O)(string color, int value) { return background(color, to!string(value)); }
	O background(this O)(string color, string value = null) {
		if (value.length > 0) this.addClasses("bg-"~color~"-"~value);
		else this.addClasses("bg-"~color);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.background("primary") == `<div class="bg-primary"></div>`);
	}

	/// Setting display
	O display(this O)(string value) { return this.display(null, value); }
	O display(this O)(string breakpoint, string value) {
		if (breakpoint.length > 0) this.addClasses("d-"~breakpoint~"-"~value);
		else this.addClasses("d-"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.display("none") == `<div class="d-none"></div>`);
		assert(BS5Obj.display("sm", "block") == `<div class="d-sm-block"></div>`);
	}
	
	/// Setting print display
	O print(this O)(string value) {
		if (value.length > 0) this.addClasses("d-print-"~value);
		return cast(O) this;
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Obj.print("none") == `<div class="d-print-none"></div>`);
	}
 */
}
mixin(H5Calls!"BS5Obj");

version(test_uim_bootstrap) { unittest {
	assert(BS5Obj == "<div></div>");
}}
