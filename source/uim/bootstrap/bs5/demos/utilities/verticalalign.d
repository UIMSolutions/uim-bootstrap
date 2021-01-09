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
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/utilities">Utilities</a></li>
        <li class="breadcrumb-item active" aria-current="page">Vertical Align</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Vertical Align</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Inline and inline-block</h3>
              <div>
                <h1>Baseline<img src="../img/20x20.png" class="align-baseline"></h1>
                <h1>Text-top<img src="../img/20x20.png" class="align-text-top"></h1>
                <h1>Text-bottom<img src="../img/20x20.png" class="align-text-bottom"></h1>
                <h1>Top<img src="../img/20x20.png" class="align-top"></h1>
                <h1>Middle<img src="../img/20x20.png" class="align-middle"></h1>
                <h1>Bottom<img src="../img/20x20.png" class="align-bottom"></h1>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Table cell</h3>
              <div>
                <p>Text-top and text-bottom not applicable on table cells</p>
                <table class="table" style="height: 200px;">
                  <tbody>
                    <tr>
                      <td class="align-baseline">Baseline</td>
                      <td class="align-top">Top</td>
                      <td class="align-middle">Middle</td>
                      <td class="align-bottom">Bottom</td>
                    </tr>
                  </tbody>
                </table>
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