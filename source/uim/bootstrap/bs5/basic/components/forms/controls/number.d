module uim.bootstrap.bs5.basic.components.forms.controls.number;

import uim.bootstrap; 

@safe: class DBS5InputNumber : DBS5Obj {
	mixin(H5This!("Input", ["form-control"], `["type":"number"]`));
	override public void _init() {
		super._init;
		_single = true;
	}

	O value(this O)(int aValue) {
		_attributes["value"] = to!string(aValue);
		return cast(O)this;
	}
	unittest {		
	}

	O value(this O)(long aValue) {
		_attributes["value"] = to!string(aValue);
		return cast(O)this;
	}
	unittest {		
	}

	O value(this O)(size_t aValue) {
		_attributes["value"] = to!string(aValue);
		_attributes["min"] = "0";
		return cast(O)this;
	}
	unittest {		
	}

}
mixin(H5Calls!("BS5InputNumber"));
///
unittest {
	assert(Assert(BS5InputNumber, `<input class="form-control" type="number">`));
}