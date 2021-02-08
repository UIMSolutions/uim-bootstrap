module source.uim.bootstrap.bs5.demos.forms.validation;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/validation", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Validation - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

 auto defaultsExample = demoBs5Example("defaults", "Browser defaults", 
  H5Div(
    H5Form("formValidationDefault", [""],
      H5Div(["mb-3"],
        H5Label(["for":"validationDefaultText"], "Text input"),
        H5Input("validationDefaultText", ["form-control"], ["type":"text", "required":"required"]),
      ),
      H5Div(["mb-3"],
        H5Div(["input-group"],
          H5Span("validationDefaultInputGroup", ["input-group-text"], "$"),
          H5Input(["form-control"], ["type":"number", "aria-label":"Amount", "aria-describedby":"validationDefaultInputGroup", "required":"required"]),
        )
      ),
      H5Div(["mb-3"],
        H5Label(["for":"validationDefaultTextarea"], "Textarea"),
        H5Textarea("validationDefaultTextarea", ["form-control"], ["rows":"5", "placeholder":"Write your message here.", "required":"required"])
      ),
      H5Div(["mb-3"],
        H5Label(["for":"validationDefaultSelect"], "Select one"),
        H5Select("validationDefaultSelect", ["form-select"], ["required":"required"],
          H5Option(["value":""], "Select"),
          H5Option(["value":"1"], "Option one"),
          H5Option(["value":"2"], "Option two"),
          H5Option(["value":"3"], "Option three")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check"],
          H5Input("validationDefaultCheck", ["form-check-input"], ["type":"checkbox", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationDefaultCheck"], "Checkbox")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check"],
          H5Input("validationDefaultRadio1", ["form-check-input"], ["type":"radio", "name":"validationDefaultRadio", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationDefaultRadio1"], "Radio")
        ),
        H5Div(["form-check"],
          H5Input("validationDefaultRadio2", ["form-check-input"], ["type":"radio", "name":"validationDefaultRadio", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationDefaultRadio2"], "Radio")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check", "form-switch"],
          H5Input("validationDefaultSwitch", ["form-check-input"], ["type":"checkbox", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationDefaultSwitch"], "Switch")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-file"],
          H5Input("validationDefaultFile", ["form-file-input"], ["type":"file", "required":"required"]),
          H5Label(["form-file-label"], ["for":"validationDefaultFile"],
            H5Span(["form-file-text"], "Choose file..."),
            H5Span(["form-file-button"], "Browse")
          )
        )
      ),
      H5Button(["btn btn-primary"], ["type":"submit"], "Submit form")
    )
  ), ``, ``);

auto clientSizeExample = demoBs5Example("client", "Client side", 
  H5Div(
    H5Form("formValidationClient", ["needs-validation"], ["novalidate":"novalidate"], 
      H5Div(["mb-3"],
        H5Label(["for":"validationClientText"], "Text input"),
        H5Input("validationClientText", ["form-control"], ["type":"text", "required":"required"]),
        H5P(["valid-feedback"], "Valid feedback text"),
        H5P(["invalid-feedback"], "Invalid feedback text")
      ),
      H5Div(["mb-3"],
        H5Div(["input-group"],
          H5Span("validationClientInputGroup", ["input-group-text"], "$"),
          H5Input(["form-control"], ["type":"number", "aria-label":"Amount", "aria-describedby":"validationClientInputGroup", "required":"required"]),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Label(["for":"validationClientTextarea"], "Textarea"),
        H5Textarea("validationClientTextarea", ["form-control"], ["rows":"5", "placeholder":"Write your message here.", "required":"required"]),
        H5P(["valid-feedback"], "Valid feedback text"),
        H5P(["invalid-feedback"], "Invalid feedback text")
      ),
      H5Div(["mb-3"],
        H5Label(["for":"validationClientSelect"], "Select one"),
        H5Select("validationClientSelect", ["form-select"], ["required":"required"],
          H5Option(["value":""], "Select"),
          H5Option(["value":"1"], "Option one"),
          H5Option(["value":"2"], "Option two"),
          H5Option(["value":"3"], "Option three")
        ),
        H5P(["valid-feedback"], "Valid feedback text"),
        H5P(["invalid-feedback"], "Invalid feedback text")
      ),
      H5Div(["mb-3"],
        H5Div(["form-check"],
          H5Input("validationClientCheck", ["form-check-input"], ["type":"checkbox", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationClientCheck"], "Checkbox"),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check"],
          H5Input("validationClientRadio1", ["form-check-input"], ["type":"radio", "name":"validationClientRadio", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationClientRadio1"], "Radio")
        ),
        H5Div(["form-check"],
          H5Input("validationClientRadio2", ["form-check-input"], ["type":"radio", "name":"validationClientRadio" , "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationClientRadio2"], "Radio"),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check form-switch"],
          H5Input("validationClientSwitch", ["form-check-input"], ["type":"checkbox", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationClientSwitch"], "Switch"),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-file"],
          H5Input("validationClientFile", ["form-file-input"], ["type":"file", "required":"required"]),
          H5Label(["form-file-label"], ["for":"validationClientFile"],
            H5Span(["form-file-text"], "Choose file..."),
            H5Span(["form-file-button"], "Browse")
          ),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Button(["btn btn-primary"], ["type":"submit"], "Submit form")
    )
  ), ``, ``);

auto serverExample = demoBs5Example("server", "Server side", 
  H5Div(
    H5Form("formValidationServer", [""],
      H5Div(["mb-3"],
        H5Label(["for":"validationServerText"], "Text input"),
        H5Input("validationServerText", ["form-control is-valid"], ["type":"text"]),
        H5P(["valid-feedback"], "Valid feedback text"),
        H5P(["invalid-feedback"], "Invalid feedback text"),
      ),
      H5Div(["mb-3"],
        H5Div(["input-group"],
          H5Span("validationServerInputGroup", ["input-group-text"], "$"),
          H5Input(["form-control", "is-invalid"], ["type":"number", "aria-label":"Amount", "aria-describedby":"validationServerInputGroup"]),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Label(["for":"validationServerTextarea"], "Textarea"),
        H5Textarea("validationServerTextarea", ["form-control", "is-valid"], ["rows":"5", "placeholder":"Write your message here."]),
        H5P(["valid-feedback"], "Valid feedback text"),
        H5P(["invalid-feedback"], "Invalid feedback text"),
      ),
      H5Div(["mb-3"],
        H5Label(["for":"validationServerSelect"], "Select one"),
        H5Select("validationServerSelect", ["form-select", "is-invalid"],
          H5Option(["value":""], "Select"),
          H5Option(["value":"1"], "Option one"),
          H5Option(["value":"2"], "Option two"),
          H5Option(["value":"3"], "Option three")
        ),
        H5P(["valid-feedback"], "Valid feedback text"),
        H5P(["invalid-feedback"], "Invalid feedback text")
      ),
      H5Div(["mb-3"],
        H5Div(["form-check"],
          H5Input("validationServerCheck", ["form-check-input", "is-valid"], ["type":"checkbox"]),
          H5Label(["form-check-label"], ["for":"validationServerCheck"], "Checkbox"),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check"],
          H5Input("validationServerRadio1", ["form-check-input", "is-invalid"], ["type":"radio", "name":"validationServerRadio"]),
          H5Label(["form-check-label"], ["for":"validationServerRadio1"], "Radio")
        ),
        H5Div(["form-check"],
          H5Input("validationServerRadio2", ["form-check-input", "is-invalid"], ["type":"radio", "name":"validationServerRadio"]),
          H5Label(["form-check-label"], ["for":"validationServerRadio2"], "Radio"),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-check form-switch"],
          H5Input("validationServerSwitch", ["form-check-input is-valid"], ["type":"checkbox"]),
          H5Label(["form-check-label"], ["for":"validationServerSwitch"], "Switch"),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3"],
        H5Div(["form-file"],
          H5Input("validationServerFile", ["form-file-input is-invalid"], ["type":"file"]), 
          H5Label(["form-file-label"], ["for":"validationServerFile"],
            H5Span(["form-file-text"], "Choose file..."),
            H5Span(["form-file-button"], "Browse")
          ),
          H5P(["valid-feedback"], "Valid feedback text"),
          H5P(["invalid-feedback"], "Invalid feedback text")
        )
      ),
      H5Button(["btn btn-primary"], ["type":"submit"], "Submit form")
    )
  ), ``, ``);


auto tooltipsExample = demoBs5Example("tooltips", "Tooltips", 
  H5Div(
    H5Form("formValidationTooltips", ["needs-validation"], ["novalidate":"novalidate"],
      H5Div(["mb-3", "position-relative"],
        H5Label(["for":"validationTooltipsText"], "Text input"),
        H5Input("validationTooltipsText", ["form-control"], ["type":"text", "required":"required"]),
        H5P(["valid-tooltip"], "Valid feedback text"),
        H5P(["invalid-tooltip"], "Invalid feedback text")
      ),
      H5Div(["mb-3", "position-relative"],
        H5Div(["input-group"],
          H5Span("validationTooltipsInputGroup", ["input-group-text"], "$"),
          H5Input(["form-control"], ["type":"number", "aria-label":"Amount", "aria-describedby":"validationTooltipsInputGroup", "required":"required"]),
          H5P(["valid-tooltip"], "Valid feedback text"),
          H5P(["invalid-tooltip"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3", "position-relative"],
        H5Label(["for":"validationTooltipsTextarea"], "Textarea"),
        H5Textarea("validationTooltipsTextarea", ["form-control"], ["rows":"5", "placeholder":"Write your message here.", "required":"required"]),
        H5P(["valid-tooltip"], "Valid feedback text"),
        H5P(["invalid-tooltip"], "Invalid feedback text")
      ),
      H5Div(["mb-3", "position-relative"],
        H5Label(["for":"validationTooltipsSelect"], "Select one"),
        H5Select("validationTooltipsSelect", ["form-select"], ["required":"required"],
          H5Option(["value":""], "Select"),
          H5Option(["value":"1"], "Option one"),
          H5Option(["value":"2"], "Option two"),
          H5Option(["value":"3"], "Option three")
        ),
        H5P(["valid-tooltip"], "Valid feedback text"),
        H5P(["invalid-tooltip"], "Invalid feedback text")
      ),
      H5Div(["mb-3", "position-relative"],
        H5Div(["form-check"],
          H5Input("validationTooltipsCheck", ["form-check-input"], ["type":"checkbox", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationTooltipsCheck"], "Checkbox"),
          H5P(["valid-tooltip"], "Valid feedback text"),
          H5P(["invalid-tooltip"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3", "position-relative"],
        H5Div(["form-check"],
          H5Input("validationTooltipsRadio1", ["form-check-input"], ["type":"radio", "name":"validationTooltipsRadio", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationTooltipsRadio1"], "Radio")
        ),
        H5Div(["form-check"],
          H5Input("validationTooltipsRadio2", ["form-check-input"], ["type":"radio", "name":"validationTooltipsRadio", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationTooltipsRadio2"], "Radio"),
          H5P(["valid-tooltip"], "Valid feedback text"),
          H5P(["invalid-tooltip"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3", "position-relative"],
        H5Div(["form-check form-switch"],
          H5Input("validationTooltipsSwitch", ["form-check-input"], ["type":"checkbox", "required":"required"]),
          H5Label(["form-check-label"], ["for":"validationTooltipsSwitch"], "Switch"),
          H5P(["valid-tooltip"], "Valid feedback text"),
          H5P(["invalid-tooltip"], "Invalid feedback text")
        )
      ),
      H5Div(["mb-3", "position-relative"],
        H5Div(["form-file"],
          H5Input("validationTooltipsFile", ["form-file-input"], ["type":"file", "required":"required"]),
          H5Label(["form-file-label"], ["for":"validationTooltipsFile"],
            H5Span(["form-file-text"], "Choose file..."),
            H5Span(["form-file-button"], "Browse")
          ),
          H5P(["valid-tooltip"], "Valid feedback text"),
          H5P(["invalid-tooltip"], "Invalid feedback text")
        )
      ),
      H5Button(["btn", "btn-primary"], ["type":"submit"], "Submit form")
    )
  ), ``, ``);


        return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Forms"], "Validation")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Validation"),
      H5Hr,

      defaultsExample, 
      clientSizeExample, 
      serverExample, 
      tooltipsExample 

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}


