module uim.bootstrap.bs5.demos.components.navbars;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/navbars", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Navbars - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb" >
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Navbars</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Navbars</h2>
            <hr>

            <div class="mb-5">
              <h3 class="text-muted">Brand</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Link</h4>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Heading</h4>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <span class="navbar-brand h1 mb-0">Navbar</span>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Image</h4>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <a href="#" class="navbar-brand">
                      <img src="../img/50x50.png" alt="">
                    </a>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Image and text</h4>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <a href="#" class="navbar-brand">
                      <img src="../img/50x50.png" alt=""> <span class="align-middle">Navbar</span>
                    </a>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Nav</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Unordered list</h4>
                <nav class="navbar navbar-light bg-light navbar-expand">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <div class="collapse navbar-collapse">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Links</h4>
                <nav class="navbar navbar-light bg-light navbar-expand">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <div class="collapse navbar-collapse">
                      <div class="navbar-nav">
                        <a href="#" class="nav-link active" aria-current="page">Active</a>
                        <a href="#" class="nav-link">Link</a>
                        <a href="#" class="nav-link">Link</a>
                        <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                      </div>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Dropdown</h4>
                <nav class="navbar navbar-light bg-light navbar-expand">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <div class="collapse navbar-collapse">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" id="navbarWithDropdown" data-bs-toggle="dropdown" role="button" aria-expanded="false">Dropdown</a>
                          <ul class="dropdown-menu" aria-labelledby="navbarWithDropdown">
                            <li>
                              <a href="#" class="dropdown-item">First item</a>
                            </li>
                            <li>
                              <a href="#" class="dropdown-item">Second item</a>
                            </li>
                            <li>
                              <a href="#" class="dropdown-item">Third item</a>
                            </li>
                          </ul>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Forms</h3>
              <div>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <form>
                      <div class="input-group">
                        <input type="search" class="form-control" placeholder="Search text here" aria-label="Search input">
                        <button type="submit" class="btn btn-secondary">Search</button>
                      </div>
                    </form>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Text</h3>
              <div>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <div class="navbar-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Colors</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Dark navbar</h4>
                <nav class="navbar navbar-dark bg-primary">
                  <div class="container">
                    <a href="#" class="navbar-brand">Primary</a>
                  </div>
                </nav>
                <nav class="navbar navbar-dark bg-secondary">
                  <div class="container">
                    <a href="#" class="navbar-brand">Secondary</a>
                  </div>
                </nav>
                <nav class="navbar navbar-dark bg-success">
                  <div class="container">
                    <a href="#" class="navbar-brand">Success</a>
                  </div>
                </nav>
                <nav class="navbar navbar-dark bg-danger">
                  <div class="container">
                    <a href="#" class="navbar-brand">Danger</a>
                  </div>
                </nav>
                <nav class="navbar navbar-dark bg-warning">
                  <div class="container">
                    <a href="#" class="navbar-brand">Warning</a>
                  </div>
                </nav>
                <nav class="navbar navbar-dark bg-info">
                  <div class="container">
                    <a href="#" class="navbar-brand">Info</a>
                  </div>
                </nav>
                <nav class="navbar navbar-dark bg-dark">
                  <div class="container">
                    <a href="#" class="navbar-brand">Dark</a>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Light navbar</h4>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <a href="#" class="navbar-brand">Light</a>
                  </div>
                </nav>
                <nav class="navbar navbar-light bg-white">
                  <div class="container">
                    <a href="#" class="navbar-brand">White</a>
                  </div>
                </nav>
                <nav class="navbar navbar-light bg-transparent">
                  <div class="container">
                    <a href="#" class="navbar-brand">Transparent</a>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Toggler</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Left-aligned toggler</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-lg">
                  <div class="container">
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveLeft" aria-controls="navbarResponsiveLeft" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <a href="#" class="navbar-brand">Navbar</a>
                    <div class="collapse navbar-collapse" id="navbarResponsiveLeft">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Right-aligned toggler</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-lg">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveRight" aria-controls="navbarResponsiveRight" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsiveRight">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Responsiveness</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Small</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-sm">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveSmall" aria-controls="navbarResponsiveSmall" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsiveSmall">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Medium</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-md">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveMedium" aria-controls="navbarResponsiveMedium" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsiveMedium">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Large</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-lg">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveLarge" aria-controls="navbarResponsiveLarge" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsiveLarge">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Extra large</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-xl">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveExtraLarge" aria-controls="navbarResponsiveExtraLarge" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsiveExtraLarge">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <h4 class="h5 text-muted mt-3">Extra extra large</h4>
                <nav class="navbar navbar-light bg-light navbar-expand-xxl">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarResponsiveExtraExtraLarge" aria-controls="navbarResponsiveExtraExtraLarge" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsiveExtraExtraLarge">
                      <ul class="navbar-nav">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">External content</h3>
              <div>
                <div class="collapse" id="navbarExternalContent">
                  <div class="p-4">
                    <h5>Collapsed content</h5>
                    <p class="mb-0">Toggleable via the navbar toggler.</p>
                  </div>
                </div>
                <nav class="navbar navbar-light bg-light">
                  <div class="container">
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarExternalContent" aria-controls="navbarExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                  </div>
                </nav>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Advanced example</h3>
              <div>
                <nav class="navbar navbar-light bg-light navbar-expand-lg">
                  <div class="container">
                    <a href="#" class="navbar-brand">Navbar</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarAdvanced" aria-controls="navbarAdvanced" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarAdvanced">
                      <ul class="navbar-nav mb-2 mb-lg-0 me-auto">
                        <li class="nav-item">
                          <a href="#" class="nav-link active" aria-current="page">Active</a>
                        </li>
                        <li class="nav-item dropdown">
                          <a href="#" class="nav-link dropdown-toggle" id="navbarAdvancedDropdown" data-bs-toggle="dropdown" role="button" aria-expanded="false">Dropdown</a>
                          <ul class="dropdown-menu" aria-labelledby="navbarAdvancedDropdown">
                            <li>
                              <a href="#" class="dropdown-item">First item</a>
                            </li>
                            <li>
                              <a href="#" class="dropdown-item">Second item</a>
                            </li>
                            <li>
                              <a href="#" class="dropdown-item">Third item</a>
                            </li>
                          </ul>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">Link</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link disabled" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                      </ul>
                      <form>
                        <div class="input-group">
                          <input type="search" class="form-control" placeholder="Search text here" aria-label="Search input">
                          <button type="submit" class="btn btn-secondary">Search</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </nav>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>
      `;
    }
  });
}