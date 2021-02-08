module source.uim.bootstrap.bs5.demos.forms.formcontrol;

import uim.bootstrap;

static this() {
	demoBS5.pages("forms/formcontrol", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Form Control - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto inputExample = demoBs5Example("input", "Text input", 
  H5Div(
    H5Label(["form-label"], ["for":"inputText"], "Text input label"),
    H5Input("inputText", ["form-control"], ["placeholder":"Text input placeholder"])
  ), ``, ``);

auto textareaExample = demoBs5Example("textarea", "Textarea", 
  H5Div(
    H5Label(["form-label"], ["for":"textarea"], "Textarea"),
    H5Textarea("textarea", ["form-control"], ["rows":"5", "placeholder":"Write your message here."])
  ), ``, ``);

auto sizingExample = demoBs5Example("sizing", "Sizing", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    H5Label(["form-label"], ["for":"inputTextSmall"], "Text input label"),
    H5Input("inputTextSmall", ["form-control", "form-control-sm"], ["type":"text", "placeholder":"Text input placeholder"]),
    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    H5Label(["form-label"], ["for":"inputTextLarge" ], "Text input label"),
    H5Input("inputTextLarge", ["form-control", "form-control-lg"], ["type":"text", "placeholder":"Text input placeholder"])
  ), ``, ``);

auto readonlyExample = demoBs5Example("readonly", "Readonly", 
  H5Div(
    H5Label(["form-label"], ["for":"inputTextReadonly"], "Text input label"),
    H5Input("inputTextReadonly", ["form-control"], ["type":"text", "placeholder":"Text input placeholder", "readonly":"readonly"])
  ), ``, ``);

auto plainExample = demoBs5Example("plain", "Readonly plain text", 
  H5Div(
    H5Label(["form-label"], ["for":"inputTextReadonlyPlaintext"], "Text input label"),
    H5Input("inputTextReadonlyPlaintext", ["form-control-plaintext"], ["type":"text", "placeholder":"Text input placeholder", "readonly":"readonly"])
  ), ``, ``);

auto fileExample = demoBs5Example("file", "File", 
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Default"),
    H5Label(["form-label"], ["for":"inputFile"], "Default file input label"),
    H5Input("inputFile", ["form-control"], ["type":"file"]),
    H5H4(["h5", "text-muted", "mt-3"], "Multiple"),
    H5Label(["form-label"], ["for":"inputFileMultiple"], "Multiple file input label"),
    H5Input("inputFileMultiple", ["form-control"], ["type":"file", "multiple":"multiple"]),
    H5H4(["h5", "text-muted", "mt-3"], "Disabled"),
    H5Label(["form-label"], ["for":"inputFileDisabled"], "Disabled file input label"),
    H5Input("inputFileDisabled", ["form-control"], ["type":"file", "disabled":"disabled"]),
    H5H4(["h5", "text-muted", "mt-3"], "Small"),
    H5Label(["form-label"], ["for":"inputFileSmall"], "Small file input label"),
    H5Input("inputFileSmall", ["form-control", "form-control-sm"], ["type":"file"]),
    H5H4(["h5", "text-muted", "mt-3"], "Large"),
    H5Label(["form-label"], ["for":"inputFileLarge"], "Large file input label"),
    H5Input("inputFileLarge", ["form-control", "form-control-lg"], ["type":"file"]) 
  ), ``, ``);

auto colorExample = demoBs5Example("color", "Color picker", 
  H5Div(
    H5Label(["form-label"], ["for":"inputColor"], "Color input label"),
    H5Input("inputColor", ["form-control", "form-control-color"], ["type":"color", "value":"#7952b3", "title":"Choose color"])
  ), ``, ``);

auto datalistExample = demoBs5Example("datalist", "Datalist", 
  H5Div(
    H5Label(["form-label"], ["for":"datalist"], "Datalist label"),
    H5Input("datalist", ["form-control"], ["list":"datalistOptions", "placeholder":"Type to search..."]),
    H5Datalist("datalistOptions", [""],
      H5Option(["value":"Bootstrap"]),
      H5Option(["value":"Foundation"]),
      H5Option(["value":"Semantic UI"]),
      H5Option(["value":"Bulma"]),
      H5Option(["value":"Materialize"])
    )
  ), ``, ``);

       return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic", "/demos/uim-bootstrap/5/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Forms"], "Form Control")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Form Control"),
      H5Hr,

      inputExample, 
      textareaExample, 
      sizingExample, 
      readonlyExample, 
      plainExample, 
      fileExample, 
      colorExample, 
      datalistExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
/*


        

*/