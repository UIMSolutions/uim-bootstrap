module source.uim.bootstrap.bs5.demos.utilities.verticalalign;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/verticalalign", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Vertical Align - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
            return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Vertical Align")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Vertical Align"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   /*
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Vertical Align</h2>
        <hr>

        H5Div(["mb-5"]
              <h3 ["text-muted"]Inline and inline-block</h3>
              H5Div(
                <h1>BaselineH5Img(["src":"/img/20x20.png" ["align-baseline"]</h1>
                <h1>Text-topH5Img(["src":"/img/20x20.png" ["align-text-top"]</h1>
                <h1>Text-bottomH5Img(["src":"/img/20x20.png" ["align-text-bottom"]</h1>
                <h1>TopH5Img(["src":"/img/20x20.png" ["align-top"]</h1>
                <h1>MiddleH5Img(["src":"/img/20x20.png" ["align-middle"]</h1>
                <h1>BottomH5Img(["src":"/img/20x20.png" ["align-bottom"]</h1>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Table cell</h3>
              H5Div(
                <p>Text-top and text-bottom not applicable on table cells</p>
                <table ["table" "style":"height: 200px;"]
                  <tbody>
                    <tr>
                      <td ["align-baseline"]Baseline</td>
                      <td ["align-top"]Top</td>
                      <td ["align-middle"]Middle</td>
                      <td ["align-bottom"]Bottom</td>
                    </tr>
                  </tbody>
                </table>
              )
            )

          )
        )
      )
    </main>
      `;
    }
  });
}*/