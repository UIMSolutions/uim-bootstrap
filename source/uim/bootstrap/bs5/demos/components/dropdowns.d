module uim.bootstrap.bs5.demos.components.dropdowns;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/dropdowns", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Dropdowns - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
        <li class="breadcrumb-item active" aria-current="page">Dropdowns</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Dropdowns</h2>
        <hr>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Button</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownButton" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownButton">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Link</h3>
          <div class="code-live">
            <div class="dropdown">
              <a class="btn btn-secondary dropdown-toggle" href="#" id="dropdownLink" data-bs-toggle="dropdown" aria-expanded="false">Dropdown link</a>
              <div class="dropdown-menu" aria-labelledby="dropdownLink">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Split button</h3>
          <div class="code-live">
            <div class="btn-group">
              <button type="button" class="btn btn-secondary">Dropdown split button</button>
              <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownSplit" data-bs-toggle="dropdown" aria-expanded="false"><span class="visually-hidden">Toggle dropdown</span></button>
              <div class="dropdown-menu" aria-labelledby="dropdownSplit">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Sizing</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownSmall" data-bs-toggle="dropdown" aria-expanded="false">Small button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownSmall">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
            <br>
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMedium" data-bs-toggle="dropdown" aria-expanded="false">Medium button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownMedium">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
            <br>
            <div class="dropdown">
              <button type="button" class="btn btn-secondary btn-lg dropdown-toggle" id="dropdownLarge" data-bs-toggle="dropdown" aria-expanded="false">Large button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownLarge">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Dark</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDark" data-bs-toggle="dropdown" aria-expanded="false">Dropdown dark</button>
              <div class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownDark">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
            <h4 class="h5 text-muted mt-3">In navbar component</h4>
            <nav class="navbar navbar-dark bg-dark navbar-expand">
              <div class="container">
                <a href="#" class="navbar-brand">Navbar</a>
                <div class="collapse navbar-collapse">
                  <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                      <a href="#" class="nav-link dropdown-toggle" id="navbarDropdownDark" data-bs-toggle="dropdown" role="button" aria-expanded="false">Dropdown dark</a>
                      <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdownDark">
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
                  </ul>
                </div>
              </div>
            </nav>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Direction</h3>
          <div class="code-live">
            <div class="btn-group dropup">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropup" data-bs-toggle="dropdown" aria-expanded="false">Dropup</button>
              <div class="dropdown-menu" aria-labelledby="dropup">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
            <br><br>
            <div class="btn-group dropend">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropend" data-bs-toggle="dropdown" aria-expanded="false">Dropright</button>
              <div class="dropdown-menu" aria-labelledby="dropend">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
            <br><br>
            <div class="btn-group dropstart">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropstart" data-bs-toggle="dropdown" aria-expanded="false">Dropleft</button>
              <div class="dropdown-menu" aria-labelledby="dropstart">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Alignment</h3>
          <div class="code-live">
            <div class="btn-group">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownEndAligned" data-bs-toggle="dropdown" aria-expanded="false">Dropdown right-aligned</button>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownEndAligned">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Responsive alignment</h3>
          <div class="code-live">
            <p>To right-align the dropdown menu for the given breakpoint or larger, add <code>.dropdown-menu{-sm|-md|-lg|-xl}-end</code>.</p>
            <div class="btn-group">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownResponsive" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">Dropdown responsive alignment</button>
              <div class="dropdown-menu dropdown-menu-lg-end" aria-labelledby="dropdownResponsive">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
            <br><br>
            <p>To left-align the dropdown menu for the given breakpoint or larger, add <code>.dropdown-menu-end</code> and <code>.dropdown-menu{-sm|-md|-lg|-xl}-right</code>.</p>
            <div class="btn-group">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownResponsive" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">Dropdown responsive alignment</button>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start" aria-labelledby="dropdownResponsive">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Button items</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownButtonItems" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownButtonItems">
                <button type="button" class="dropdown-item">First button</button>
                <button type="button" class="dropdown-item">Second button</button>
                <button type="button" class="dropdown-item">Third button</button>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Active item</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownActive" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownActive">
                <a href="#" class="dropdown-item active">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Disabled item</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDisabled" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownDisabled">
                <a href="#" class="dropdown-item disabled">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Header</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownHeader" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownHeader">
                <h6 class="dropdown-header">Dropdown header</h6>
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Divider</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownDivider" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownDivider">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Text item</h3>
          <div class="code-live">
            <div class="dropdown">
              <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownText" data-bs-toggle="dropdown" aria-expanded="false">Dropdown button</button>
              <div class="dropdown-menu" aria-labelledby="dropdownText">
                <span class="dropdown-item-text">Dropdown text item</span>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
          </div>
        </div>

        <div class="code-example mb-5">
          <h3 class="component-variation text-muted">Reference</h3>
          <div class="code-live">
            <div class="btn-group">
              <button type="button" class="btn btn-secondary">Dropdown split button</button>
              <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownReference" data-bs-toggle="dropdown" aria-expanded="false" data-bs-reference="parent"><span class="visually-hidden">Toggle dropdown</span></button>
              <div class="dropdown-menu" aria-labelledby="dropdownReference">
                <a href="#" class="dropdown-item">First item</a>
                <a href="#" class="dropdown-item">Second item</a>
                <a href="#" class="dropdown-item">Third item</a>
              </div>
            </div>
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