module uim.bootstrap.components.forms.inputgroups.group;

import uim.bootstrap;

class DBS4InputGroup : DBS4Obj {
	mixin(H5This!("DIV", ["input-group"]));

	mixin(MyContent!("prepend", "BS4InputGroupPrepend"));
	unittest {
		assert(Assert(BS4InputGroup.prepend, `<div class="input-group"><div class="input-group-prepend"></div></div>`));
	}

	mixin(MyContent!("append", "BS4InputGroupAppend"));
	unittest {
		assert(Assert(BS4InputGroup.append, `<div class="input-group"><div class="input-group-append"></div></div>`));
	}
	
	// Setting size of group
	O size(this O)(string sizeName) { return this.classes("input-group-"~sizeName); }
	O small(this O)() { return this.classes("input-group-sm"); }
	O large(this O)() { return this.classes("input-group-lg"); }
	unittest {
		assert(Assert(BS4InputGroup.size("sm"), `<div class="input-group input-group-sm"></div>`));
		assert(Assert(BS4InputGroup.small, `<div class="input-group input-group-sm"></div>`));
		assert(Assert(BS4InputGroup.large, `<div class="input-group input-group-lg"></div>`));
	}

	mixin(MyContent!("button", "BS4InputButton"));
	mixin(MyContent!("checkbox", "BS4Checkbox"));
	mixin(MyContent!("color", "BS4InputColor"));
	mixin(MyContent!("inputDate", "BS4InputDate"));
	mixin(MyContent!("inputDateTime", "BS4InputDateTime"));
	mixin(MyContent!("email", "BS4InputEmail"));
	mixin(MyContent!("file", "BS4InputFile"));
	mixin(MyContent!("group", "BS4InputGroup"));
	mixin(MyContent!("inputHidden", "BS4InputHidden"));
	mixin(MyContent!("image", "BS4InputImage"));
	mixin(MyContent!("month", "BS4InputMonth"));
	mixin(MyContent!("number", "BS4InputNumber"));
	mixin(MyContent!("password", "BS4Password"));
	mixin(MyContent!("radio", "BS4Radio"));
	mixin(MyContent!("inputRange", "BS4InputRange"));
	mixin(MyContent!("inputReset", "BS4InputReset"));
	mixin(MyContent!("search", "BS4InputSearch"));
	mixin(MyContent!("select", "BS4InputSelect"));
	mixin(MyContent!("submit", "BS4InputSubmit"));
	mixin(MyContent!("telephone", "BS4InputTelephone"));
	mixin(MyContent!("text", "BS4InputText"));
	mixin(MyContent!("textarea", "BS4InputTextarea"));
	mixin(MyContent!("inputTime", "BS4InputTime"));
	mixin(MyContent!("url", "BS4InputUrl"));
	mixin(MyContent!("week", "BS4InputWeek"));
}
mixin(H5Calls!"BS4InputGroup");

unittest {
		assert(Assert(BS4InputGroup, `<div class="input-group"></div>`));
}
