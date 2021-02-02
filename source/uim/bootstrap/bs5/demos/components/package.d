module uim.bootstrap.bs5.demos.components;

import uim.bootstrap;

static this() {
	demoBS5.pages("components", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  H5Div(["container-fluid mt-3 bg-light m-1"]
    <nav aria-label="Breadcrumb" >
      <ol ["breadcrumb"]
        <li ["breadcrumb-item"]<a href="/"]UI Manufaktur</a></li>
        <li ["breadcrumb-item"]<a href="/demos"]Demos</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap"]uim-bootstrap</a></li>
        <li ["breadcrumb-item"]<a href="/demos/uim-bootstrap/5/"]Bootstrap 5</a></li>
        <li ["breadcrumb-item active" aria-current="page"]Components</li>
      </ol>
    </nav>
  )
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Bootstrap 5 Demo</h2>
        <hr>

        H5Div(["mb-5"]
          <h3 ["text-muted"]"Themenbereiche"</h3>
          <ul ["list-group"]
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components"]Components</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/contents"]Contents</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/forms"]Forms</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/helpers"]Helpers</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/layouts"]Layouts</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/utilities"]Utilities</a></li>
          </ul>
        )

        H5Div(["mb-5"]
          <h3 ["text-muted"]"Components"</h3>
          <ul ["list-group"]
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/accordions"]Accordions</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/alerts"]Alerts</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/badges"]Badges</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/breadcrumbs"]Breadcrumbs</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/buttongroups"]Button Groups</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/buttons"]Buttons</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/cards"]Cards</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/carousels"]Carousels</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/closebuttons"]Close Buttons</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/collapses"]Collapses</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/dropdowns"]Dropdowns</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/listgroups"]List Groups</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/modals"]Modals</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/navbars"]Navbars</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/navs"]Navs</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/paginations"]Paginations</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/popovers"]Popovers</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/progresses"]Progresses</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/scrollspies"]Scrollspies</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/spinners"]Spinners</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/toasts"]Toasts</a></li>
            <li ["list-group-item"]<a href="/demos/uim-bootstrap/5/components/tooltips"]Tooltips</a></li>
            </ul>
        )
      )
    )
  )
</main>

      `;
    }
  });
}