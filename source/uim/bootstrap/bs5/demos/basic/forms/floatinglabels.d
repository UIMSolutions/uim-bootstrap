module source.uim.bootstrap.bs5.demos.forms.floatinglabels;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/floatinglabels", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Floating Labels - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    H5Div(["form-floating"],
      H5Input("floatingLabelDefault", ["form-control"], ["type":"text", "placeholder":"Text input placeholder"]),
      H5Label(["form-label"], ["for":"floatingLabelDefault"], "Text input label")
    )
  ), ``, ``);

auto valueExample = demoBs5Example("value", "With value", 
  H5Div(
    H5Div(["form-floating"],
      H5Input("floatingLabelValue", ["form-control"], ["type":"text", "placeholder":"Text input placeholder", "value":"Text input value"]),
      H5Label(["form-label"], ["for":"floatingLabelValue"], "Text input label")
    )
  ), ``, ``);

auto validationExample = demoBs5Example("validation", "Validation", 
  H5Div(
    H5Div(["form-floating"],
      H5Input("floatingLabelValidation", ["form-control", "is-valid"], ["type":"text", "placeholder":"Text input placeholder", "value":"Text input value"]),
      H5Label(["form-label"], ["for":"floatingLabelValidation"], "Text input label")
    )
  ), ``, ``);

auto textareaExample = demoBs5Example("textarea", "Textarea", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Default"),
    H5Div(["form-floating"],
      H5Textarea("floatingLabelTextareaDefault", ["form-control"], ["placeholder":"Textarea placeholder"]),
      H5Label(["form-label"], ["for":"floatingLabelTextareaDefault"], "Textarea label")
    ),
    H5H4(["h5", "text-muted", "mt-3"], "Custom height"),
    H5Div(["form-floating"],
      H5Textarea("floatingLabelTextareaHeight", ["form-control"], ["placeholder":"Textarea placeholder", "style":"height: 100px;"]),
      H5Label(["form-label"], ["for":"floatingLabelTextareaHeight"], "Textarea label")
    )
  ), ``, ``);

auto selectExample = demoBs5Example("select", "Select", 
  H5Div(   
    H5Div(["form-floating"],
      H5Select("floatingLabelSelect", ["form-select"], ["aria-label":"Select"],
        H5Option(["selected":"selected"], "Select option"),
        H5Option(["value":"1"], "Option one"),
        H5Option(["value":"2"], "Option two"),
        H5Option(["value":"3"], "Option three"),
        H5Option(["value":"4"], "Option four"),
        H5Option(["value":"5"], "Option five")
      ),
      H5Label(["form-label"], ["for":"floatingLabelSelect"], "Select label")
    )
  ), ``, ``);

       return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Forms"], "Floating Labels")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Floating Labels"),
      H5Hr,

      defaultExample, 
      valueExample, 
      validationExample, 
      textareaExample, 
      selectExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}


