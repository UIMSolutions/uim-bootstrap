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
       return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Forms"], "Form Control")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Form Control"),
      H5Hr,

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
/*
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Form Control</h2>
        <hr>

        H5Div(["mb-5"]
              <h3 ["text-muted"]Text input</h3>
              <p>Applies to various textual inputs like <code>type="text"</code>, <code>type="search"</code>, <code>type="email"</code>, <code>type="url"</code>, <code>type="tel"</code>, <code>type="password"</code> and <code>type="number"</code>.</p>
              H5Div(
                H5Label(["for":"inputText" ["form-label"]Text input label")
                H5Input(["type":"text" ["form-control" "placeholder":"Text input placeholder" id="inputText"]
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Textarea</h3>
              H5Div(
                H5Label(["for":"textarea" ["form-label"]Textarea")
                <textarea ["form-control" id="textarea" rows="5" "placeholder":"Write your message here."])
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Sizing</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Small")
                H5Label(["for":"inputTextSmall" ["form-label"]Text input label")
                H5Input(["type":"text" ["form-control form-control-sm" "placeholder":"Text input placeholder" id="inputTextSmall"]
                H5H4(["h5", "text-muted", "mt-3"], "Large")
                H5Label(["for":"inputTextLarge" ["form-label"]Text input label")
                H5Input(["type":"text" ["form-control form-control-lg" "placeholder":"Text input placeholder" id="inputTextLarge"]
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Readonly</h3>
              H5Div(
                H5Label(["for":"inputTextReadonly" ["form-label"]Text input label")
                H5Input(["type":"text" ["form-control" "placeholder":"Text input placeholder" id="inputTextReadonly" readonly>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Readonly plain text</h3>
              H5Div(
                H5Label(["for":"inputTextReadonlyPlaintext" ["form-label"]Text input label")
                H5Input(["type":"text" ["form-control-plaintext" "placeholder":"Text input placeholder" id="inputTextReadonlyPlaintext" readonly>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]File</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Default")
                <label ["form-label" for="inputFile"]Default file input label")
                H5Input(["type":"file" ["form-control" id="inputFile"]
                H5H4(["h5", "text-muted", "mt-3"], "Multiple")
                <label ["form-label" for="inputFileMultiple"]Multiple file input label")
                H5Input(["type":"file" ["form-control" id="inputFileMultiple" multiple>
                H5H4(["h5", "text-muted", "mt-3"], "Disabled")
                <label ["form-label" for="inputFileDisabled"]Disabled file input label")
                H5Input(["type":"file" ["form-control" id="inputFileDisabled" disabled>
                H5H4(["h5", "text-muted", "mt-3"], "Small")
                <label ["form-label" for="inputFileSmall"]Small file input label")
                H5Input(["type":"file" ["form-control form-control-sm" id="inputFileSmall"]
                H5H4(["h5", "text-muted", "mt-3"], "Large")
                <label ["form-label" for="inputFileLarge"]Large file input label")
                H5Input(["type":"file" ["form-control form-control-lg" id="inputFileLarge"]
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Color picker</h3>
              H5Div(
                H5Label(["for":"inputColor" ["form-label"]Color input label")
                H5Input(["type":"color" ["form-control form-control-color" id="inputColor" "value":"#7952b3" title="Choose color"]
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Datalist</h3>
              H5Div(
                H5Label(["for":"datalist" ["form-label"]Datalist label")
                <input ["form-control" list="datalistOptions" id="datalist" "placeholder":"Type to search..."]
                <datalist id="datalistOptions"]
                  H5Option(["value":"Bootstrap"]
                  H5Option(["value":"Foundation"]
                  H5Option(["value":"Semantic UI"]
                  H5Option(["value":"Bulma"]
                  H5Option(["value":"Materialize"]
                </datalist>
              )
            )

*/