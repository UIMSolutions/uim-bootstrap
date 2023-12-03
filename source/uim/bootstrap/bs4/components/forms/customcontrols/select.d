module uim.bootstrap.bs4.components.forms.customcontrols.select;

@safe: 
import uim.bootstrap; 

class DBS4CustomSelect : DH5Select {
	mixin(H5This!("Select", ["custom-select"]));

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[] values, string selected = "", string disabled = "") {
		values.each!(value => setOptionByValue(value, selected, disabled));

		return cast(O)this;	
	}

	protected void setOptionByValue(string optionValue, string selected = "", string disabled = "") {
		if (optionValue == selected) {
			this.option(optionValue == disabled 
				? ["selected":"selected", "disabled":"disabled"] 
				: ["selected":"selected"], optionValue);
		}
		else if (optionValue == disabled) this.option(["disabled":"disabled"], optionValue);
		else this.option(optionValue);
	}

	O options(this O)(STRINGAA values, string selectedKey = "", string disabledKey = "") {
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
	O options(this O)(STRINGAA values, string[] selectedKeys, string[] disabledKeys = null) {
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
