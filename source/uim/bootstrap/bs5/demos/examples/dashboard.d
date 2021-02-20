module uim.bootstrap.bs5.demos.examples.dashboard;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/dashboard", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ])
          .styles(`body {
  font-size: .875rem;
}

.feather {
  width: 16px;
  height: 16px;
  vertical-align: text-bottom;
}

/*
 * Sidebar
 */

.sidebar {
  position: fixed;
  top: 0;
  /* rtl:raw:
  right: 0;
  */
  bottom: 0;
  /* rtl:remove */
  left: 0;
  z-index: 100; /* Behind the navbar */
  padding: 48px 0 0; /* Height of navbar */
  box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
}

@media (max-width: 767.98px) {
  .sidebar {
    top: 5rem;
  }
}

.sidebar-sticky {
  position: relative;
  top: 0;
  height: calc(100vh - 48px);
  padding-top: .5rem;
  overflow-x: hidden;
  overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
}

.sidebar .nav-link {
  font-weight: 500;
  color: #333;
}

.sidebar .nav-link .feather {
  margin-right: 4px;
  color: #727272;
}

.sidebar .nav-link.active {
  color: #007bff;
}

.sidebar .nav-link:hover .feather,
.sidebar .nav-link.active .feather {
  color: inherit;
}

.sidebar-heading {
  font-size: .75rem;
  text-transform: uppercase;
}

/*
 * Navbar
 */

.navbar-brand {
  padding-top: .75rem;
  padding-bottom: .75rem;
  font-size: 1rem;
  background-color: rgba(0, 0, 0, .25);
  box-shadow: inset -1px 0 0 rgba(0, 0, 0, .25);
}

.navbar .navbar-toggler {
  top: .25rem;
  right: 1rem;
}

.navbar .form-control {
  padding: .75rem 1rem;
  border-width: 0;
  border-radius: 0;
}

.form-control-dark {
  color: #fff;
  background-color: rgba(255, 255, 255, .1);
  border-color: rgba(255, 255, 255, .1);
}

.form-control-dark:focus {
  border-color: transparent;
  box-shadow: 0 0 0 3px rgba(255, 255, 255, .25);
}

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }`)
      .styles(["href":"dashboard.css", "rel":"stylesheet"])
      .libraries(`/* globals Chart:false, feather:false */

(function () {
  'use strict'

  feather.replace()

  // Graphs
  var ctx = document.getElementById('myChart')
  // eslint-disable-next-line no-unused-vars
  var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        'Sunday',
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday'
      ],
      datasets: [{
        data: [
          15339,
          21345,
          18483,
          24003,
          23489,
          24092,
          12034
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: false
      }
    }
  })
})()`);
		} 
			
    override string content() { 

      return 
BS5Navbar(["navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow"], 
  BS5NavbarBrand(["col-md-3 col-lg-2 me-0 px-3"], ["href":"#"], "Company name"),
  H5Button(["navbar-toggler position-absolute d-md-none collapsed"], ["type":"button", "data-bs-toggle":"collapse", "data-bs-target":"#sidebarMenu", "aria-controls":"sidebarMenu", "aria-expanded":"false", "aria-label":"Toggle navigation"], 
    H5Span(["navbar-toggler-icon"])
  ),
  BS5InputSearch(["form-control-dark w-100"], ["type":"text", "placeholder":"Search", "aria-label":"Search"]),
  BS5NavbarNav(["px-3"], 
    BS5NavItem(["text-nowrap"], 
      BS5NavLink(["href":"#"], "Sign out")
    )
  )
).toString~

H5Div(["container-fluid"], 
  H5Div(["row"], 
    H5Nav("sidebarMenu", ["col-md-3 col-lg-2 d-md-block bg-light sidebar collapse"], 
      H5Div(["position-sticky pt-3"], 
        H5Ul(["nav flex-column"], 
          BS5NavItem(
            BS5NavLink(["active"], ["aria-current":"page", "href":"#"], 
              H5Span(["data-feather":"home"]), H5String("Dashboard"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"file"]), H5String("Orders"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"shopping-cart"]), H5String("Products"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"users"]), H5String("Customers"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"bar-chart-2"]), H5String("Reports"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"layers"]), H5String("Integrations"))
          )
        ),
        H5H6(["sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted"],
          H5Span("Saved reports"),
          H5A(["link-secondary"], ["href":"#", "aria-label":"Add a new report"],
            H5Span(["data-feather":"plus-circle"])
          )
        ),
        H5Ul(["nav flex-column mb-2"], 
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"file-text"]), H5String("Current month"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"file-text"]), H5String("Last quarter"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"file-text"]), H5String("Social engagement"))
          ),
          BS5NavItem(
            BS5NavLink(["href":"#"], 
              H5Span(["data-feather":"file-text"]), H5String("Year-end sale"))
          )
        )
      )
    ),

    H5Main(["col-md-9 ms-sm-auto col-lg-10 px-md-4"], 
      H5Div(["d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"], 
        H5H1(["h2"], "Dashboard"),
        H5Div(["btn-toolbar mb-2 mb-md-0"], 
          H5Div(["btn-group me-2"], 
            BS5Button(["btn-sm btn-outline-secondary"], "Share"),
            BS5Button(["btn-sm btn-outline-secondary"], "Export")
          ),
          BS5Button(["btn-sm btn-outline-secondary dropdown-toggle"],
            H5Span(["data-feather":"calendar"]), H5String("This week"))
        )
      ),

      H5Canvas("myChart", ["my-4 w-100"], ["width":"900", "height":"380"]),

      H5H2("Section title"),
      H5Div(["table-responsive"], 
        H5Table(["table table-striped table-sm"], 
          H5Thead(
            H5Tr
              .th("#")
              .th("Header")
              .th("Header")
              .th("Header")
              .th("Header")
          ),
          H5Tbody(
            H5Tr
              .td("1,001")
              .td("Lorem")
              .td("ipsum")
              .td("dolor")
              .td("sit"),
            H5Tr
              .td("1,002")
              .td("amet")
              .td("consectetur")
              .td("adipiscing")
              .td("elit"),
            H5Tr
              .td("1,003")
              .td("Integer")
              .td("nec")
              .td("odio")
              .td("Praesent"),
            H5Tr
              .td("1,003")
              .td("libero")
              .td("Sed")
              .td("cursus")
              .td("ante"),
            H5Tr
              .td("1,004")
              .td("dapibus")
              .td("diam")
              .td("Sed")
              .td("nisi"),
            H5Tr
              .td("1,005")
              .td("Nulla")
              .td("quis")
              .td("sem")
              .td("at"),
            H5Tr
              .td("1,006")
              .td("nibh")
              .td("elementum")
              .td("imperdiet")
              .td("Duis"),
            H5Tr
              .td("1,007")
              .td("sagittis")
              .td("ipsum")
              .td("Praesent")
              .td("mauris"),
            H5Tr
              .td("1,008")
              .td("Fusce")
              .td("nec")
              .td("tellus")
              .td("sed"),
            H5Tr
              .td("1,009")
              .td("augue")
              .td("semper")
              .td("porta")
              .td("Mauris"),
            H5Tr
              .td("1,010")
              .td("massa")
              .td("Vestibulum")
              .td("lacinia")
              .td("arcu"),
            H5Tr
              .td("1,011")
              .td("eget")
              .td("nulla")
              .td("Class")
              .td("aptent"),
            H5Tr
              .td("1,012")
              .td("taciti")
              .td("sociosqu")
              .td("ad")
              .td("litora"),
            H5Tr
              .td("1,013")
              .td("torquent")
              .td("per")
              .td("conubia")
              .td("nostra"),
            H5Tr
              .td("1,014")
              .td("per")
              .td("inceptos")
              .td("himenaeos")
              .td("Curabitur"),            
            H5Tr
              .td("1,015")
              .td("sodales")
              .td("ligula")
              .td("in")
              .td("libero")
          )
        )
      )
    )
  )
).toString;

    }
  });
}
 
