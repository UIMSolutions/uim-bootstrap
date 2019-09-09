module uim.bootstrap.obj;

import uim.bootstrap;

class DBS4Obj : DH5Obj
{
	mixin(H5This!("DIV"));

	// Adding a margin  
	O margin(this O)(string value)
	{
		if (value.length > 0)
			_classes ~= "m" ~ value;
		return cast(O) this;
	}

	unittest
	{
		assert(BS4Obj.margin("t-2") == `<div class="mt-2"></div>`);
	}

	// Adding padding
	O padding(this O)(string value)
	{
		if (value.length > 0)
			_classes ~= "p" ~ value;
		return cast(O) this;
	}

	unittest
	{
		assert(BS4Obj.padding("t-2") == `<div class="pt-2"></div>`);
	}

	// Setting border 
	O border(this O)(string value = "")
	{
		if (value.length > 0)
			_classes ~= "border-" ~ value;
		return cast(O) this;
	}

	unittest
	{
		assert(BS4Obj.border("1") == `<div class="border-1"></div>`);
	}

	// Change radius of corners 
	O radius(this O)(int value = 0)
	{
		if (value > 0)
			_classes ~= "rounded-" ~ to!string(value);
		return cast(O) this;
	}

	// Change radius of corners 
	O radius(this O)(string value = "")
	{
		if (value.length > 0)
			_classes ~= "rounded-" ~ value;
		return cast(O) this;
	}

	unittest
	{
		assert(BS4Obj.radius(1) == `<div class="rounded-1"></div>`);
		assert(BS4Obj.radius("1") == `<div class="rounded-1"></div>`);
	}
}

mixin(BS4Short!"Obj");

unittest
{
	assert(BS4Obj == "<div></div>");
}
