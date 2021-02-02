module source.uim.bootstrap.bs5.demos.utilities.display;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/display", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Display - Bootstrap 5 Demo",
          ]);
		} 
			
     override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Display")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Display"),
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
        <h2 ["component display-4"]Display</h2>
        <hr>

        H5Div(["mb-5"]
          <h3 ["text-muted"]None</h3>
          H5Div(
            H5Div(["d-none"]Display none)
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Inline and block</h3>
          H5Div(
            H5Div(["d-inline bg-secondary text-white p-2"]Display inline)
            H5Div(["d-inline bg-secondary text-white p-2"]Display inline)
            <br><br>
            <span ["d-block bg-secondary text-white p-2"]Display block</span>
            <br>
            H5Div(["d-inline-block bg-secondary text-white p-2"]
              <h4>Inline-block")
              Display inline-block
            )
            H5Div(["d-inline-block bg-secondary text-white p-2"]
              <h4>Inline-block")
              Display inline-block
            )
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Grid</h3>
          H5Div(
            H5Div(["d-grid"]Display grid)
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Table</h3>
          H5Div(
            H5Div(["d-table"]Display table)
            H5Div(["d-table-row"]Display table-row)
            H5Div(["d-table-cell"]Display table-cell)
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Flex</h3>
          H5Div(
            H5Div(["d-flex"]Display flex)
            H5Div(["d-inline-flex"]Display inline-flex)
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Responsive display none</h3>
          H5Div(
            <p>Example: Responsive variations of display none</p>
            H5Div(["d-sm-none"]Display none for breakpoints sm and up)
            H5Div(["d-md-none"]Display none for breakpoints md and up)
            H5Div(["d-lg-none"]Display none for breakpoints lg and up)
            H5Div(["d-xl-none"]Display none for breakpoints xl and up)
            H5Div(["d-xxl-none"]Display none for breakpoints xxl and up)
          )
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]Print</h3>
          H5Div(
            H5Div(["d-print-none"]Display none for print)
            H5Div(["d-print-inline"]Display inline for print)
            H5Div(["d-print-block"]Display block for print)
            H5Div(["d-print-inline-block"]Display inline-block for print)
            H5Div(["d-print-grid"]Display grid for print)
            H5Div(["d-print-table"]Display table for print)
            H5Div(["d-print-table-row"]Display table-row for print)
            H5Div(["d-print-table-cell"]Display table-cell for print)
            H5Div(["d-print-flex"]Display flex for print)
            H5Div(["d-print-inline-flex"]Display inline-flex for print)
          )
        )

      )
    )
  )
</main>
      `;
    }
  });
} */