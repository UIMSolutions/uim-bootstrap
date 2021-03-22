module uim.bootstrap.bs5.basic.components.forms.controls.time;

import uim.bootstrap; 

@safe: class DBS5InputTime : DBS5Input {
	mixin(H5This!("", null, `["type":"time"]`));


	O value(this O)(long timestamp) {
		_attributes["value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString.split("T")[1];
		return cast(O)this;
	}
	unittest {	
			
	}

	O value(this O)(SysTime systime) {
		_attributes["value"] = (cast(DateTime)systime).toISOExtString.split("T")[1];
		return cast(O)this;
	}
	unittest {		
	}

	O value(this O)(DateTime datetime) {
		_attributes["value"] = datetime.toISOExtString.split("T")[1];
		return cast(O)this;
	}
	unittest {		
	}

}
mixin(H5Calls!("BS5InputTime"));
///
unittest {
	assert(Assert(BS5InputTime, `<input class="form-control" type="time">`));
}