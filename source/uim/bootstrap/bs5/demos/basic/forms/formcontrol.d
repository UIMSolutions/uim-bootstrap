module source.uim.bootstrap.bs5.demos.forms.formcontrol;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/forms/formcontrol", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Form Control - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content(string[string] someParameters = null) {  

auto inputExample = demoBs5Example("input", "Text input", 
  H5Div(
    BS5FormLabel(["for":"inputText"], "Text input label"),
    BS5InputText("inputText", ["placeholder":"Text input placeholder"])
  ), `BS5FormLabel(["for":"inputText"], "Text input label"),
BS5InputText("inputText", ["placeholder":"Text input placeholder"])`, ``);

auto textareaExample = demoBs5Example("textarea", "Textarea", 
  H5Div(
    BS5FormLabel(["for":"textarea"], "Textarea"),
    H5Textarea("textarea", ["form-control"], ["rows":"5", "placeholder":"Write your message here."])
  ), `BS5FormLabel(["for":"textarea"], "Textarea"),
  H5Textarea("textarea", ["form-control"], ["rows":"5", "placeholder":"Write your message here."])`, ``);

auto sizingExample = demoBs5Example("sizing", "Sizing", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Small"),
    BS5FormLabel(["for":"inputTextSmall"], "Text input label"),
    BS5InputText("inputTextSmall", ["form-control-sm"], ["placeholder":"Text input placeholder"]),
    H5H5(["text-muted", "mt-3"], "Large"),
    BS5FormLabel(["for":"inputTextLarge" ], "Text input label"),
    BS5InputText("inputTextLarge", ["form-control-lg"], ["placeholder":"Text input placeholder"])
  ), `BS5FormLabel(["for":"inputTextSmall"], "Text input label")
BS5InputText("inputTextSmall", ["form-control-sm"], ["placeholder":"Text input placeholder"])
BS5FormLabel(["for":"inputTextLarge" ], "Text input label")
BS5InputText("inputTextLarge", ["form-control-lg"], ["placeholder":"Text input placeholder"])`, ``);

auto readonlyExample = demoBs5Example("readonly", "Readonly", 
  H5Div(
    BS5FormLabel(["for":"inputTextReadonly"], "Text input label"),
    BS5InputText("inputTextReadonly", ["placeholder":"Text input placeholder", "readonly":"readonly"])
  ), `BS5FormLabel(["for":"inputTextReadonly"], "Text input label")
BS5InputText("inputTextReadonly", ["placeholder":"Text input placeholder", "readonly":"readonly"])`, ``);

auto plainExample = demoBs5Example("plain", "Readonly plain text", 
  H5Div(
    BS5FormLabel(["for":"inputTextReadonlyPlaintext"], "Text input label"),
    BS5InputPlaintext("inputTextReadonlyPlaintext", ["placeholder":"Text input placeholder", "readonly":"readonly"])
  ), `BS5FormLabel(["for":"inputTextReadonlyPlaintext"], "Text input label"),
BS5InputPlaintext("inputTextReadonlyPlaintext", ["placeholder":"Text input placeholder", "readonly":"readonly"])`, ``);

auto fileExample = demoBs5Example("file", "Working with files", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Default"),
    BS5FormLabel(["for":"inputFile"], "Default file input label"),
    BS5InputFile("inputFile", [""]),
    H5H5(["text-muted", "mt-3"], "Multiple"),
    BS5FormLabel(["for":"inputFileMultiple"], "Input for multiple files"),
    BS5InputFile("inputFileMultiple", ["multiple":"multiple"]),
    H5H5(["text-muted", "mt-3"], "Disabled"),
    BS5FormLabel(["for":"inputFileDisabled"], "Disabled file input label"),
    BS5InputFile("inputFileDisabled", ["disabled":"disabled"]),
    H5H5(["text-muted", "mt-3"], "Small"),
    BS5FormLabel(["for":"inputFileSmall"], "Small file input label"),
    BS5InputFile("inputFileSmall", ["form-control-sm"]),
    H5H5(["text-muted", "mt-3"], "Large"),
    BS5FormLabel(["for":"inputFileLarge"], "Large file input label"),
    BS5InputFile("inputFileLarge", ["form-control-lg"]) 
), `BS5FormLabel(["for":"inputFile"], "Default file input label")
BS5InputFile("inputFile", [""])
BS5FormLabel(["for":"inputFileMultiple"], "Multiple file input label")
BS5InputFile("inputFileMultiple", ["multiple":"multiple"])
BS5FormLabel(["for":"inputFileDisabled"], "Disabled file input label")
BS5InputFile("inputFileDisabled", ["disabled":"disabled"])
BS5FormLabel(["for":"inputFileSmall"], "Small file input label")
BS5InputFile("inputFileSmall", ["form-control-sm"])
BS5FormLabel(["for":"inputFileLarge"], "Large file input label")
BS5InputFile("inputFileLarge", ["form-control-lg"])`, 
`<label class="form-label" for="inputFile">Default file input label</label>
<input id="inputFile" class="form-control" type="file">
<label class="form-label" for="inputFileMultiple">Multiple file input label</label>
<input id="inputFileMultiple" class="form-control" multiple="" type="file">
<label class="form-label" for="inputFileDisabled">Disabled file input label</label>
<input id="inputFileDisabled" class="form-control" disabled="" type="file">
<label class="form-label" for="inputFileSmall">Small file input label</label>
<input id="inputFileSmall" class="form-control form-control-sm" type="file">
<label class="form-label" for="inputFileLarge">Large file input label</label>
<input id="inputFileLarge" class="form-control form-control-lg" type="file">`);

auto colorExample = demoBs5Example("color", "Color picker", 
  H5Div(
    BS5FormLabel(["for":"inputColor"], "Color input label"),
    BS5InputColor("inputColor", ["value":"#7952b3", "title":"Choose color"])
  ), `BS5FormLabel(["for":"inputColor"], "Color input label"),
BS5InputColor("inputColor", ["value":"#7952b3", "title":"Choose color"])`, ``);

auto datalistExample = demoBs5Example("datalist", "Datalist", 
  H5Div(
    BS5FormLabel(["for":"datalist"], "Datalist label"),
    H5Input("datalist", ["form-control"], ["list":"datalistOptions", "placeholder":"Type to search..."]),
    H5Datalist("datalistOptions", [""],
      H5Option(["value":"Bootstrap"]),
      H5Option(["value":"Foundation"]),
      H5Option(["value":"Semantic UI"]),
      H5Option(["value":"Bulma"]),
      H5Option(["value":"Materialize"])
    )
  ), `BS5FormLabel(["for":"datalist"], "Datalist label"),
  H5Input("datalist", ["form-control"], ["list":"datalistOptions", "placeholder":"Type to search..."]),
  H5Datalist("datalistOptions", [""],
    H5Option(["value":"Bootstrap"]),
    H5Option(["value":"Foundation"]),
    H5Option(["value":"Semantic UI"]),
    H5Option(["value":"Bulma"]),
    H5Option(["value":"Materialize"]))`, ``);

       return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Forms"], "Form Control")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "forms"),
      listSections("basic", "forms", "formcontrol")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
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