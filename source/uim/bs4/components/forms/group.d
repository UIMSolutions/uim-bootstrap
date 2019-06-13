module uim.bs4.components.forms.group;

import uim.bs4;

class DBS4FormGroup : DBS4Obj {
	mixin(H5This!("DIV", `["form-group"]`));
	override public void init() {
		super.init;
	}

	mixin(MyAttribute!("readOnly", "readonly"));
	mixin(MyAttribute!("value", "value"));
	mixin(MyAttribute!("placeHolder", "placeholder"));

	mixin(MyContent!("label", "H5LABEL"));
	O label(this O)(string forId, string title, string[] someClasses = null, string[string] someAttributes = null) {
		someAttributes["for"] = forId;
		this.content(H5LABEL(someClasses, someAttributes, title));
		return cast(O)this;
	}
	mixin(MyContent!("col", "BS4Col"));
	mixin(MyContent!("input", "BS4Input"));
	mixin(MyContent!("inputButton", "BS4InputButton"));
	mixin(MyContent!("inputCheckbox", "BS4InputCheckbox"));
	mixin(MyContent!("inputColor", "BS4InputColor"));
	mixin(MyContent!("inputDate", "BS4InputDate"));
	mixin(MyContent!("inputDateTime", "BS4InputDateTime"));
	mixin(MyContent!("inputEmail", "BS4InputEmail"));
	mixin(MyContent!("inputFile", "BS4InputFile"));
	mixin(MyContent!("inputHidden", "BS4InputHidden"));
	mixin(MyContent!("inputImage", "BS4InputImage"));
	mixin(MyContent!("inputMonth", "BS4InputMonth"));
	mixin(MyContent!("inputNumber", "BS4InputNumber"));
	mixin(MyContent!("inputPassword", "BS4InputPassword"));
	mixin(MyContent!("inputRadio", "BS4InputRadio"));
	mixin(MyContent!("inputRange", "BS4InputRange"));
	mixin(MyContent!("inputReset", "BS4InputReset"));
	mixin(MyContent!("inputSearch", "BS4InputSearch"));
	mixin(MyContent!("inputSelect", "BS4InputSelect"));
	mixin(MyContent!("inputSubmit", "BS4InputSubmit"));
	mixin(MyContent!("inputTelephone", "BS4InputTelephone"));
	mixin(MyContent!("inputText", "BS4InputText"));
	mixin(MyContent!("inputTextArea", "BS4InputTextArea"));
	mixin(MyContent!("inputTime", "BS4InputTime"));
	mixin(MyContent!("inputUrl", "BS4InputUrl"));
	mixin(MyContent!("inputWeek", "BS4InputWeek"));


}
mixin(H5Short!"BS4FormGroup");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4FormGroup == `<div class="form-group"></div>`);
}
