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
          ]);
		} 
			
    override string content() { 

      return 
`    <style>
body {
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
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  H5A(["navbar-brand col-md-3 col-lg-2 me-0 px-3"], ["href":"#"], Company name"),
  H5Button(["navbar-toggler position-absolute d-md-none collapsed" "type":"button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false", "aria-label":"Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  )
  <input class="form-control form-control-dark w-100" "type":"text" "placeholder":"Search", "aria-label":"Search">
  BS5NavbarNav(["px-3">
    BS5NavItem(["text-nowrap">
      BS5NavLink( "href":"#"], Sign out"),
    ),
  </ul>
</header>

H5Div(["container-fluid">
  H5Div(["row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      H5Div(["position-sticky pt-3">
        H5Ul(["nav flex-column">
          BS5NavItem(
            BS5NavLink(["active" aria-current="page"], ["href":"#"], 
              <span data-feather="home"></span>
              Dashboard
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="file"></span>
              Orders
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="shopping-cart"></span>
              Products
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="users"></span>
              Customers
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="bar-chart-2"></span>
              Reports
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="layers"></span>
              Integrations
            "),
          ),
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Saved reports</span>
          H5A(["link-secondary"], ["href":"#", "aria-label":"Add a new report">
            <span data-feather="plus-circle"></span>
          "),
        </h6>
        H5Ul(["nav flex-column mb-2">
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="file-text"></span>
              Current month
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="file-text"></span>
              Last quarter
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="file-text"></span>
              Social engagement
            "),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], 
              <span data-feather="file-text"></span>
              Year-end sale
            "),
          ),
        </ul>
      ),
    ),

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      H5Div(["d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        H5H1(["h2">Dashboard</h1>
        H5Div(["btn-toolbar mb-2 mb-md-0">
          H5Div(["btn-group me-2">
            BS5Button(["btn-sm btn-outline-secondary">Share)
            BS5Button(["btn-sm btn-outline-secondary">Export)
          ),
          BS5Button(["btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          )
        ),
      ),

      <canvas class="my-4 w-100" id="myChart" "width":"900" "height":"380"></canvas>

      H5H2("Section title")
      H5Div(["table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>#</th>
              <th>Header</th>
              <th>Header</th>
              <th>Header</th>
              <th>Header</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1,001</td>
              <td>Lorem</td>
              <td>ipsum</td>
              <td>dolor</td>
              <td>sit</td>
            </tr>
            <tr>
              <td>1,002</td>
              <td>amet</td>
              <td>consectetur</td>
              <td>adipiscing</td>
              <td>elit</td>
            </tr>
            <tr>
              <td>1,003</td>
              <td>Integer</td>
              <td>nec</td>
              <td>odio</td>
              <td>Praesent</td>
            </tr>
            <tr>
              <td>1,003</td>
              <td>libero</td>
              <td>Sed</td>
              <td>cursus</td>
              <td>ante</td>
            </tr>
            <tr>
              <td>1,004</td>
              <td>dapibus</td>
              <td>diam</td>
              <td>Sed</td>
              <td>nisi</td>
            </tr>
            <tr>
              <td>1,005</td>
              <td>Nulla</td>
              <td>quis</td>
              <td>sem</td>
              <td>at</td>
            </tr>
            <tr>
              <td>1,006</td>
              <td>nibh</td>
              <td>elementum</td>
              <td>imperdiet</td>
              <td>Duis</td>
            </tr>
            <tr>
              <td>1,007</td>
              <td>sagittis</td>
              <td>ipsum</td>
              <td>Praesent</td>
              <td>mauris</td>
            </tr>
            <tr>
              <td>1,008</td>
              <td>Fusce</td>
              <td>nec</td>
              <td>tellus</td>
              <td>sed</td>
            </tr>
            <tr>
              <td>1,009</td>
              <td>augue</td>
              <td>semper</td>
              <td>porta</td>
              <td>Mauris</td>
            </tr>
            <tr>
              <td>1,010</td>
              <td>massa</td>
              <td>Vestibulum</td>
              <td>lacinia</td>
              <td>arcu</td>
            </tr>
            <tr>
              <td>1,011</td>
              <td>eget</td>
              <td>nulla</td>
              <td>Class</td>
              <td>aptent</td>
            </tr>
            <tr>
              <td>1,012</td>
              <td>taciti</td>
              <td>sociosqu</td>
              <td>ad</td>
              <td>litora</td>
            </tr>
            <tr>
              <td>1,013</td>
              <td>torquent</td>
              <td>per</td>
              <td>conubia</td>
              <td>nostra</td>
            </tr>
            <tr>
              <td>1,014</td>
              <td>per</td>
              <td>inceptos</td>
              <td>himenaeos</td>
              <td>Curabitur</td>
            </tr>
            <tr>
              <td>1,015</td>
              <td>sodales</td>
              <td>ligula</td>
              <td>in</td>
              <td>libero</td>
            </tr>
          </tbody>
        </table>
      ),
    </main>
  ),
),

<script>
/* globals Chart:false, feather:false */

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
})()

</script>

`;

    }
  });
}
 
