module source.uim.bootstrap.bs5.demos.utilities.float_;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/float", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Float - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Float")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Float"),
      H5Hr,
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
/*
<main>
  <div ["container-fluid mt-3 bg-light m-1"]
    <nav aria-label="Breadcrumb" >
      <ol ["breadcrumb"]
        <li ["breadcrumb-item"]<a href="/"]UI Manufaktur</a></li>
        <li ["breadcrumb-item"]<a href="/demos"]Demos</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap"]uim-bootstrap</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap/5"]Bootstrap 5</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap/5/utilities"]Utilities</a></li>
        <li ["breadcrumb-item active" aria-current="page"]Float</li>
      </ol>
    </nav>
  )
  <div ["container mt-3"]
    <div ["row"]
      <div ["col-12 col-lg-2"]
      )
      <div ["col-12 col-lg-8"]
        <h2 ["component display-4"]Float</h2>
        <hr>

        <div ["mb-5"]
              <h3 ["text-muted"]Default</h3>
              H5Div(
                <div ["float-start"]Float left)<br>
                <div ["float-end"]Float right)<br>
                <div ["float-none"]Don't float)<br>
              )
            )

            <div ["mb-5"]
              <h3 ["text-muted"]Responsive</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Float left")
                <div ["float-sm-start"]Float left for breakpoints sm and up)<br>
                <div ["float-md-start"]Float left for breakpoints md and up)<br>
                <div ["float-lg-start"]Float left for breakpoints lg and up)<br>
                <div ["float-xl-start"]Float left for breakpoints xl and up)<br>
                <div ["float-xxl-start"]Float left for breakpoints xxl and up)<br>
                H5H4(["h5", "text-muted", "mt-3"], "Float right")
                <div ["float-sm-end"]Float right for breakpoints sm and up)<br>
                <div ["float-md-end"]Float right for breakpoints md and up)<br>
                <div ["float-lg-end"]Float right for breakpoints lg and up)<br>
                <div ["float-xl-end"]Float right for breakpoints xl and up)<br>
                <div ["float-xxl-end"]Float right for breakpoints xxl and up)<br>
                H5H4(["h5", "text-muted", "mt-3"], "Float none")
                <div ["float-sm-none"]Don't float for breakpoints sm and up)<br>
                <div ["float-md-none"]Don't float for breakpoints md and up)<br>
                <div ["float-lg-none"]Don't float for breakpoints lg and up)<br>
                <div ["float-xl-none"]Don't float for breakpoints xl and up)<br>
                <div ["float-xxl-none"]Don't float for breakpoints xxl and up)<br>
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