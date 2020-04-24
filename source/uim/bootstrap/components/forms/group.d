module uim.bootstrap.components.forms.group;

import uim.bootstrap;

class DBS4FormGroup : DBS4Obj {
	mixin(H5This!("div", ["form-group"]));

	mixin(MyAttribute!("readOnly", "readonly"));
	mixin(MyAttribute!("value", "value"));
	mixin(MyAttribute!("placeHolder", "placeholder"));

	mixin(MyContent!("label", "H5Label"));
	O label(this O)(string forId, string title, string[] someClasses = null, string[string] someAttributes = null) {
		someAttributes["for"] = forId;
		this.content(H5Label(someClasses, someAttributes, title));
		return cast(O)this;
	}
	mixin(MyContent!("col", "BS4Col"));
	mixin(MyContent!("input", "BS4Input"));
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
mixin(H5Calls!"BS4FormGroup");
///
unittest {
	assert(Assert(BS4FormGroup, `<div class="form-group"></div>`));
}
