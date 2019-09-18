module uim.bootstrap.components.forms.customcontrols.radio;

import uim.bootstrap;

class DBS4CustomRadio : DBS4CustomControl
{
	mixin(H5This!("DIV", `["custom-control", "custom-radio"]`));
	unittest
	{
		assert(BS4CustomRadio == `<div class="custom-control custom-radio"></div>`);
	}
}

mixin(BS4Short!"CustomRadio");

unittest
{
}
