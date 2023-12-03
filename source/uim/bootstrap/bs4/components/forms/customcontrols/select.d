module uim.bootstrap.bs4.components.forms.customcontrols.select;

@safe: 
import uim.bootstrap; 

class DBS4CustomSelect : DH5Select {
	mixin(H5This!("Select", ["custom-select"]));

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[] values, string selected = "", string disabled = "") {
		foreach(value; values) {
			if (value == selected) {
				this.option(value == disabled 
					? ["selected":"selected", "disabled":"disabled"] 
					: ["selected":"selected"], value);
			}
			else if (value == disabled) this.option(["disabled":"disabled"], value);
			else this.option(value);
		}
		return cast(O)this;	
	}
	O options(this O)(string[string] values, string selectedKey = "", string disabledKey = "") {
		values.keys.sort.each!(key => setOptionByKey(key, selectedKey, disabledKey));

		return cast(O)this;	
	}

	protected void setOptionByKey(string optionKey, string selectedKey = "", string disabledKey = "") {
		if (optionKey == selectedKey) {
			this.option(optionKey == disabledKey
				? ["selected":"selected", "disabled":"disabled"]	
				: ["selected":"selected"], optionKey);
		}
		else if (optionKey == disabledKey) this.option(["disabled":"disabled"], optionKey);
		else this.option(["value":optionKey], values[optionKey]);
	}

	O options(this O)(string[] values, string[] selected, string[] disabled = null) {
		values.each!(value => setOption(valie, selected, disabled)); 

		return cast(O)this;	
	}
	O options(this O)(string[string] values, string[] selectedKeys, string[] disabledKeys = null) {
		values.keys.sort,each(key => setOption(key, selectedKeys, disabledKeys));
		
		return cast(O)this;	
	}

	protected setOption(string optionKey, string[] selectedKeys, string[] disabledKeys = null) {
		auto hasSelectedKey = selectedKeys.has(optionKey);
		auto hasDisabledKey = disabledKeys.has(optionKey);

		if (hasSelectedKey) {
			this.option(hasDisabledKey 
				? ["selected":"selected", "disabled":"disabled"]		
				: ["selected":"selected"], optionKey);
		}
		else if (hasDisabledKey) this.option(["disabled":"disabled"], optionKey);
		else this.option(["value":optionKey], values[optionKey]);
	}
}
mixin(H5Calls!("BS4CustomSelect"));
