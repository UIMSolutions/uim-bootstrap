module uim.bootstrap.bs5.demos.examples.cheatsheet;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/cheatsheet", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Album Page - Bootstrap 5 Demo"])
      .styles(`
body {
  scroll-behavior: smooth;
}

/**
 * Bootstrap "Journal code" icon
 * @link https://icons.getbootstrap.com/icons/journal-code/
 */
.bd-heading a::before {
  display: inline-block;
  width: 1em;
  height: 1em;
  margin-right: .25rem;
  content: "";
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%25230d6efd' viewBox='0 0 16 16'%3E%3Cpath d='M4 1h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1H2a2 2 0 0 1 2-2z'/%3E%3Cpath d='M2 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H2zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H2zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H2z'/%3E%3Cpath fill-rule='evenodd' d='M8.646 5.646a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1 0 .708l-2 2a.5.5 0 0 1-.708-.708L10.293 8 8.646 6.354a.5.5 0 0 1 0-.708zm-1.292 0a.5.5 0 0 0-.708 0l-2 2a.5.5 0 0 0 0 .708l2 2a.5.5 0 0 0 .708-.708L5.707 8l1.647-1.646a.5.5 0 0 0 0-.708z'/%3E%3C/svg%3E");
  background-size: 1em;
}

/* stylelint-disable-next-line selector-max-universal */
.bd-heading + div > * + * {
  margin-top: 3rem;
}

/* Table of contents */
.bd-aside a {
  padding: .1875rem .5rem;
  margin-top: .125rem;
  margin-left: .3125rem;
  color: rgba(0, 0, 0, .65);
  text-decoration: none;
}

.bd-aside a:hover,
.bd-aside a:focus {
  color: rgba(0, 0, 0, .85);
  background-color: rgba(121, 82, 179, .1);
}

.bd-aside .active {
  font-weight: 600;
  color: rgba(0, 0, 0, .85);
}

.bd-aside .btn {
  padding: .25rem .5rem;
  font-weight: 600;
  color: rgba(0, 0, 0, .65);
  border: 0;
}

.bd-aside .btn:hover,
.bd-aside .btn:focus {
  color: rgba(0, 0, 0, .85);
  background-color: rgba(121, 82, 179, .1);
}

.bd-aside .btn:focus {
  box-shadow: 0 0 0 1px rgba(121, 82, 179, .7);
}

.bd-aside .btn::before {
  width: 1.25em;
  line-height: 0;
  content: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%280,0,0,.5%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M5 14l6-6-6-6'/%3e%3c/svg%3e");
  transition: transform .35s ease;
  transform-origin: .5em 50%;
}

.bd-aside .btn[aria-expanded="true"]::before {
  transform: rotate(90deg)/* rtl:ignore */;
}


/* Examples */
.scrollspy-example {
  position: relative;
  height: 200px;
  margin-top: .5rem;
  overflow: auto;
}

[id="modal"] .bd-example .btn,
[id="buttons"] .bd-example .btn,
[id="tooltips"] .bd-example .btn,
[id="popovers"] .bd-example .btn,
[id="dropdowns"] .bd-example .btn-group,
[id="dropdowns"] .bd-example .dropdown,
[id="dropdowns"] .bd-example .dropup,
[id="dropdowns"] .bd-example .dropend,
[id="dropdowns"] .bd-example .dropstart {
  margin: 0 1rem 1rem 0;
}

/* Layout */
@media (min-width: 1200px) {
  body {
    display: grid;
    gap: 1rem;
    grid-template-columns: 1fr 4fr 1fr;
    grid-template-rows: auto;
  }

  .bd-header {
    position: fixed;
    top: 0;
    /* rtl:begin:ignore */
    right: 0;
    left: 0;
    /* rtl:end:ignore */
    z-index: 1030;
    grid-column: 1 / span 3;
  }

  .bd-aside,
  .bd-cheatsheet {
    padding-top: 4rem;
  }

  /**
   * 1. Too bad only Firefox supports subgrids ATM
   */
  .bd-cheatsheet,
  .bd-cheatsheet section,
  .bd-cheatsheet article {
    display: inherit; /* 1 */
    gap: inherit; /* 1 */
    grid-template-columns: 1fr 4fr;
    grid-column: 1 / span 2;
    grid-template-rows: auto;
  }

  .bd-aside {
    grid-area: 1 / 3;
    scroll-margin-top: 4rem;
  }

  .bd-cheatsheet section,
  .bd-cheatsheet section > h2 {
    top: 2rem;
    scroll-margin-top: 2rem;
  }

  .bd-cheatsheet section > h2::before {
    position: absolute;
    /* rtl:begin:ignore */
    top: 0;
    right: 0;
    bottom: -2rem;
    left: 0;
    /* rtl:end:ignore */
    z-index: -1;
    content: "";
    background-image: linear-gradient(to bottom, rgba(255, 255, 255, 1) calc(100% - 3rem), rgba(255, 255, 255, .01));
  }

  .bd-cheatsheet article,
  .bd-cheatsheet .bd-heading {
    top: 8rem;
    scroll-margin-top: 8rem;
  }

  .bd-cheatsheet .bd-heading {
    z-index: 1;
  }
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
      }`);
		} 
			
    override string content(string[string] someParameters = null) {  
    /* !-- Custom styles for this template -->
    <link href="cheatsheet.css" rel="stylesheet">
  <body class="bg-light"> */
      return 
`
<header class="bd-header bg-dark py-3 d-flex align-items-stretch border-bottom border-dark">
  H5Div(["container-fluid d-flex align-items-center">
    H5H1(["d-flex align-items-center fs-4 text-white mb-0">
      <img src="../assets/brand/bootstrap-logo-white.svg" "width":"38" "height":"30" class="me-3" alt="Bootstrap">
      Cheatsheet
    "),
    H5A(["../examples/cheatsheet-rtl/" class="ms-auto link-light" hreflang="ar">RTL cheatsheet"),
  )
).toString
<aside class="bd-aside sticky-xl-top text-muted align-self-start mb-3 mb-xl-5 px-2"], 
  H5H2(["h6 pt-4 pb-3 mb-4 border-bottom">On this page")
  H5Nav("toc", ["small"], 
    H5Ul(["list-unstyled"], 
      <li class="my-2"], 
        H5Button(["btn d-inline-flex align-items-center collapsed" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#contents-collapse" aria-controls="contents-collapse">Contents)
        H5Ul(["list-unstyled ps-3 collapse" id="contents-collapse"], 
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#typography">Typography")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#images">Images")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#tables">Tables")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#figures">Figures")),
        ),
      ),
      <li class="my-2"], 
        H5Button(["btn d-inline-flex align-items-center collapsed" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#forms-collapse" aria-controls="forms-collapse">Forms)
        H5Ul(["list-unstyled ps-3 collapse" id="forms-collapse">
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#overview">Overview")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#disabled-forms">Disabled forms")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#sizing">Sizing")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#input-group">Input group")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#floating-labels">Floating labels")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#validation">Validation")),
        ),
      ),
      <li class="my-2"], 
        H5Button(["btn d-inline-flex align-items-center collapsed" data-bs-toggle="collapse" aria-expanded="false" data-bs-target="#components-collapse" aria-controls="components-collapse">Components)
        H5Ul(["list-unstyled ps-3 collapse" id="components-collapse"], 
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#accordion">Accordion")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#alerts">Alerts")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#badge">Badge")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#breadcrumb">Breadcrumb")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#buttons">Buttons")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#button-group">Button group")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#card">Card")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#carousel">Carousel")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#dropdowns">Dropdowns")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#list-group">List group")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#modal">Modal")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#navs">Navs")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#navbar">Navbar")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#pagination">Pagination")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#popovers">Popovers")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#progress">Progress")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#scrollspy">Scrollspy")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#spinners">Spinners")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#toasts">Toasts")),
          H5Li("H5A(["d-inline-flex align-items-center rounded" href="#tooltips">Tooltips")),
        ),
      ),
    ),
  ),
</aside>
H5Div(["bd-cheatsheet container-fluid bg-white"], 
  <section id="content"], 
    H5H2(["sticky-xl-top fw-bold pt-3 pt-xl-5 pb-2 pb-xl-3">Contents")

    H5A(["my-3" id="typography"], 
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2"], 
        H5H3("Typography"),
        H5A(["d-flex align-items-center" href="../content/typography/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example"], 
        H5P(["display-1">Display 1")
        H5P(["display-2">Display 2")
        H5P(["display-3 ">Display 3")
        H5P(["display-4">Display 4")
        H5P(["display-5">Display 5")
        H5P(["display-6">Display 6")
        ),

        H5Div(["bd-example"], 
        H5P(["h1">Heading 1")
        H5P(["h2">Heading 2")
        H5P(["h3">Heading 3")
        H5P(["h4">Heading 4")
        H5P(["h5">Heading 5")
        H5P(["h6">Heading 6")
        ),

        H5Div(["bd-example"], 
        H5P(["lead"], 
          Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.
        ")
        ),

        H5Div(["bd-example"], 
        H5P("You can use the mark tag to <mark>highlight</mark> text.")
        H5P("<del>This line of text is meant to be treated as deleted text.</del>")
        H5P("<s>This line of text is meant to be treated as no longer accurate.</s>")
        H5P("<ins>This line of text is meant to be treated as an addition to the document.</ins>")
        H5P("<u>This line of text will render as underlined.</u>")
        H5P("<small>This line of text is meant to be treated as fine print."),")
        H5P("<strong>This line rendered as bold text.")")
        H5P("<em>This line rendered as italicized text.</em>")
        ),

        H5Div(["bd-example"], 
        BS5Blockquote(
          H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.")
          H5Footer(["blockquote-footer">Someone famous in <cite title="Source Title">Source Title</cite>)
        )
        ),

        H5Div(["bd-example"], 
        H5Ul(["list-unstyled"], 
          H5Li("Lorem ipsum dolor sit amet),
          H5Li("Consectetur adipiscing elit),
          H5Li("Integer molestie lorem at massa),
          H5Li("Facilisis in pretium nisl aliquet),
          H5Li("Nulla volutpat aliquam velit
            <ul>
              H5Li("Phasellus iaculis neque),
              H5Li("Purus sodales ultricies),
              H5Li("Vestibulum laoreet porttitor sem),
              H5Li("Ac tristique libero volutpat at),
            ),
          ),
          H5Li("Faucibus porta lacus fringilla vel),
          H5Li("Aenean sit amet erat nunc),
          H5Li("Eget porttitor lorem),
        ),
        ),

        H5Div(["bd-example"], 
        H5Ul(["list-inline"], 
          <li class="list-inline-item">Lorem ipsum),
          <li class="list-inline-item">Phasellus iaculis),
          <li class="list-inline-item">Nulla volutpat),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="images"], 
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Images"),
        H5A(["d-flex align-items-center" href="../content/images/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Svg(["bd-placeholder-img bd-placeholder-img-lg img-fluid" "width":"100%" "height":"250" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Responsive image" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Responsive image</text></svg>

        ),

        H5Div(["bd-example">
        H5Svg(["bd-placeholder-img img-thumbnail" "width":"200" "height":"200" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera: 200x200" preserveAspectRatio="xMidYMid slice" focusable="false"><title>A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">200x200</text></svg>

        ),
      ),
    </article>
    H5A(["my-3" id="tables">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Tables"),
        H5A(["d-flex align-items-center" href="../content/tables/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Table(["table table-striped">
          H5Thead(
          H5Tr(
            <th scope="col">#"),
            <th scope="col">First"),
            <th scope="col">Last"),
            <th scope="col">Handle"),
          ),
          ),
          H5Tbody(
          H5Tr(
            <th scope="row">1"),
            H5Td("Mark"),
            H5Td("Otto"),
            H5Td("@mdo"),
          ),
          H5Tr(
            <th scope="row">2"),
            H5Td("Jacob"),
            H5Td("Thornton"),
            H5Td("@fat"),
          ),
          H5Tr(
            <th scope="row">3"),
            <td colspan="2">Larry the Bird"),
            H5Td("@twitter"),
          ),
          )
        )
        ),

        H5Div(["bd-example">
        H5Table(["table table-dark table-borderless">
          H5Thead(
          H5Tr(
            <th scope="col">#"),
            <th scope="col">First"),
            <th scope="col">Last"),
            <th scope="col">Handle"),
          ),
          ),
          H5Tbody(
          H5Tr(
            <th scope="row">1"),
            H5Td("Mark"),
            H5Td("Otto"),
            H5Td("@mdo"),
          ),
          H5Tr(
            <th scope="row">2"),
            H5Td("Jacob"),
            H5Td("Thornton"),
            H5Td("@fat"),
          ),
          H5Tr(
            <th scope="row">3"),
            <td colspan="2">Larry the Bird"),
            H5Td("@twitter"),
          ),
          )
        )
        ),

        H5Div(["bd-example">
        H5Table(["table table-hover">
          H5Thead(
          H5Tr(
            <th scope="col">Class"),
            <th scope="col">Heading"),
            <th scope="col">Heading"),
          ),
          ),
          H5Tbody(
          H5Tr(
            <th scope="row">Default"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          
          <tr class="table-primary">
            <th scope="row">Primary"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-secondary">
            <th scope="row">Secondary"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-success">
            <th scope="row">Success"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-danger">
            <th scope="row">Danger"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-warning">
            <th scope="row">Warning"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-info">
            <th scope="row">Info"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-light">
            <th scope="row">Light"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          <tr class="table-dark">
            <th scope="row">Dark"),
            H5Td("Cell"),
            H5Td("Cell"),
          ),
          )
        )
        ),

        H5Div(["bd-example">
        H5Table(["table table-sm table-bordered">
          H5Thead(
          H5Tr(
            <th scope="col">#"),
            <th scope="col">First"),
            <th scope="col">Last"),
            <th scope="col">Handle"),
          ),
          ),
          H5Tbody(
          H5Tr(
            <th scope="row">1"),
            H5Td("Mark"),
            H5Td("Otto"),
            H5Td("@mdo"),
          ),
          H5Tr(
            <th scope="row">2"),
            H5Td("Jacob"),
            H5Td("Thornton"),
            H5Td("@fat"),
          ),
          H5Tr(
            <th scope="row">3"),
            <td colspan="2">Larry the Bird"),
            H5Td("@twitter"),
          ),
          )
        )
        ),
      ),
    </article>
    H5A(["my-3" id="figures">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Figures"),
        H5A(["d-flex align-items-center" href="../content/figures/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        <figure class="figure">
          H5Svg(["bd-placeholder-img figure-img img-fluid rounded" "width":"400" "height":"300" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: 400x300" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">400x300</text></svg>

          H5Figcaption(["figure-caption">A caption for the above image.</figcaption>
        </figure>
        ),
      ),
    </article>
  </section>

  <section id="forms">
    H5H2(["sticky-xl-top fw-bold pt-3 pt-xl-5 pb-2 pb-xl-3">Forms")

    H5A(["my-3" id="overview">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Overview"),
        H5A(["d-flex align-items-center" href="../forms/overview/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        <form>
          H5Div(["mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            BS5InputEmail("exampleInputEmail1", ["aria-describedby";"emailHelp"]), 
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.),
          ),
          H5Div(["mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input "type":"password" class="form-control" id="exampleInputPassword1">
          ),
          H5Div(["mb-3 form-check">
            <input "type":"checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
          ),
          <fieldset class="mb-3">
            <legend>Radios buttons</legend>
            H5Div(["form-check">
              <input "type":"radio" name="radios" class="form-check-input" id="exampleRadio1">
              <label class="form-check-label" for="exampleRadio1">Default radio</label>
            ),
            H5Div(["mb-3 form-check">
              <input "type":"radio" name="radios" class="form-check-input" id="exampleRadio2">
              <label class="form-check-label" for="exampleRadio2">Another radio</label>
            ),
          </fieldset>
          H5Div(["mb-3">
            <label class="form-label" for="customFile">Upload</label>
            <input "type":"file" class="form-control" id="customFile">
          ),
          H5Div(["mb-3 form-check form-switch">
            <input class="form-check-input" "type":"checkbox" id="flexSwitchCheckChecked" checked>
            <label class="form-check-label" for="flexSwitchCheckChecked">Checked switch checkbox input</label>
          ),
          H5Div(["mb-3">
            <label for="customRange3" class="form-label">Example range</label>
            <input "type":"range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
          ),
          BS5ButtonSubmit(["btn-primary"], "Submit")
        )
        ),
      ),
    </article>
    H5A(["my-3" id="disabled-forms">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Disabled forms"),
        H5A(["d-flex align-items-center" href="../forms/overview/#disabled-forms">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        <form>
          <fieldset disabled "aria-label":"Disabled fieldset example">
            H5Div(["mb-3">
              <label for="disabledTextInput" class="form-label">Disabled input</label>
              <input "type":"text" id="disabledTextInput" class="form-control" "placeholder":"Disabled input">
            ),
            H5Div(["mb-3">
              <label for="disabledSelect" class="form-label">Disabled select menu</label>
              <select id="disabledSelect" class="form-select">
                <option>Disabled select</option>
              </select>
            ),
            H5Div(["mb-3">
              H5Div(["form-check">
                <input class="form-check-input" "type":"checkbox" id="disabledFieldsetCheck" disabled>
                <label class="form-check-label" for="disabledFieldsetCheck">
                  Can't check this
                </label>
              ),
            ),
            <fieldset class="mb-3">
              <legend>Disabled radios buttons</legend>
              H5Div(["form-check">
                <input "type":"radio" name="radios" class="form-check-input" id="disabledRadio1" disabled>
                <label class="form-check-label" for="disabledRadio1">Disabled radio</label>
              ),
              H5Div(["mb-3 form-check">
                <input "type":"radio" name="radios" class="form-check-input" id="disabledRadio2" disabled>
                <label class="form-check-label" for="disabledRadio2">Another radio</label>
              ),
            </fieldset>
            H5Div(["mb-3">
              <label class="form-label" for="disabledCustomFile">Upload</label>
              <input "type":"file" class="form-control" id="disabledCustomFile" disabled>
            ),
            H5Div(["mb-3 form-check form-switch">
              <input class="form-check-input" "type":"checkbox" id="disabledSwitchCheckChecked" checked disabled>
              <label class="form-check-label" for="disabledSwitchCheckChecked">Disabled checked switch checkbox input</label>
            ),
            H5Div(["mb-3">
              <label for="disabledRange" class="form-label">Disabled range</label>
              <input "type":"range" class="form-range" min="0" max="5" step="0.5" id="disabledRange">
            ),
            BS5ButtonSubmit(["btn-primary"], "Submit")
          )
          )
        )
      )
    ),
    H5A(["my-3" id="sizing">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Sizing"),
        H5A(["d-flex align-items-center" href="../forms/form-control/#sizing">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["mb-3">
          <input class="form-control form-control-lg" "type":"text" "placeholder":".form-control-lg", "aria-label":".form-control-lg example">
        ),
        H5Div(["mb-3">
          <select class="form-select form-select-lg mb-3", "aria-label":".form-select-lg example">
            <option selected>Open this select menu</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
        ),
        H5Div(["mb-3">
          <input "type":"file" class="form-control form-control-lg", "aria-label":"Large file input example">
        ),
        ),

        H5Div(["bd-example">
        H5Div(["mb-3">
          <input class="form-control form-control-sm" "type":"text" "placeholder":".form-control-sm", "aria-label":".form-control-sm example">
        ),
        H5Div(["mb-3">
          <select class="form-select form-select-sm", "aria-label":".form-select-sm example">
            <option selected>Open this select menu</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
        ),
        H5Div(["mb-3">
          <input "type":"file" class="form-control form-control-sm", "aria-label":"Small file input example">
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="input-group">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Input group"),
        H5A(["d-flex align-items-center" href="../forms/input-group/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example"],
        H5Div(["input-group mb-3"],
          <span class="input-group-text" id="basic-addon1">@"),
          <input "type":"text" class="form-control" "placeholder":"Username", "aria-label":"Username" aria-describedby="basic-addon1">
        ),
        H5Div(["input-group mb-3"],
          <input "type":"text" class="form-control" "placeholder":"Recipient's username", "aria-label":"Recipient's username" aria-describedby="basic-addon2">
          <span class="input-group-text" id="basic-addon2">@example.com"),
        ),
        <label for="basic-url" class="form-label">Your vanity URL</label>
        H5Div(["input-group mb-3"],
          <span class="input-group-text" id="basic-addon3">https://example.com/users/"),
          <input "type":"text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
        ),
        H5Div(["input-group mb-3"],
          <span class="input-group-text">$"),
          <input "type":"text" class="form-control", "aria-label":"Amount (to the nearest dollar)">
          <span class="input-group-text">.00"),
        ),
        H5Div(["input-group"],
          <span class="input-group-text">With textarea"),
          <textarea class="form-control", "aria-label":"With textarea"></textarea>
        ),
        ),
      ),
    </article],
    H5A(["my-3" id="floating-labels">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Floating labels"),
        H5A(["d-flex align-items-center" href="../forms/floating-labels/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example"],
        <form>
          H5Div(["form-floating mb-3"],
            BS5InputEmail("floatingInput", ["placeholder":"name@example.com"]),
            <label for="floatingInput">Email address</label>
          ),
          H5Div(["form-floating">
            <input "type":"password" class="form-control" id="floatingPassword" "placeholder":"Password">
            <label for="floatingPassword">Password</label>
          ),
        )
        ),
      ),
    </article>
    H5A(["my-3" id="validation">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Validation"),
        H5A(["d-flex align-items-center" href="../forms/validation/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Form(["row g-3">
          H5Div(["col-md-4">
            <label for="validationServer01" class="form-label">First name</label>
            <input "type":"text" class="form-control is-valid" id="validationServer01" value="Mark" required>
            H5Div(["valid-feedback">
              Looks good!
            ),
          ),
          H5Div(["col-md-4">
            <label for="validationServer02" class="form-label">Last name</label>
            <input "type":"text" class="form-control is-valid" id="validationServer02" value="Otto" required>
            H5Div(["valid-feedback">
              Looks good!
            ),
          ),
          H5Div(["col-md-4">
            <label for="validationServerUsername" class="form-label">Username</label>
            H5Div(["input-group has-validation">
              <span class="input-group-text" id="inputGroupPrepend3">@"),
              <input "type":"text" class="form-control is-invalid" id="validationServerUsername" aria-describedby="inputGroupPrepend3" required>
              H5Div(["invalid-feedback">
                Please choose a username.
              ),
            ),
          ),
          H5Div(["col-md-6">
            <label for="validationServer03" class="form-label">City</label>
            <input "type":"text" class="form-control is-invalid" id="validationServer03" required>
            H5Div(["invalid-feedback">
              Please provide a valid city.
            ),
          ),
          H5Div(["col-md-3">
            <label for="validationServer04" class="form-label">State</label>
            <select class="form-select is-invalid" id="validationServer04" required>
              <option selected disabled value="">Choose...</option>
              <option>...</option>
            </select>
            H5Div(["invalid-feedback">
              Please select a valid state.
            ),
          ),
          H5Div(["col-md-3">
            <label for="validationServer05" class="form-label">Zip</label>
            <input "type":"text" class="form-control is-invalid" id="validationServer05" required>
            H5Div(["invalid-feedback">
              Please provide a valid zip.
            ),
          ),
          H5Div(["col-12">
            H5Div(["form-check">
              <input class="form-check-input is-invalid" "type":"checkbox" value="" id="invalidCheck3" required>
              <label class="form-check-label" for="invalidCheck3">
                Agree to terms and conditions
              </label>
              H5Div(["invalid-feedback">
                You must agree before submitting.
              ),
            ),
          ),
          H5Div(["col-12">
            H5Button(["btn btn-primary" "type":"submit">Submit form)
          ),
        )
        ),
      ),
    </article>
  </section>

  <section id="components">
    H5H2(["sticky-xl-top fw-bold pt-3 pt-xl-5 pb-2 pb-xl-3">Components")

    H5A(["my-3" id="accordion">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Accordion"),
        H5A(["d-flex align-items-center" href="../components/accordion/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["accordion" id="accordionExample">
          H5Div(["accordion-item">
            H5H4(["accordion-header" id="headingOne">
              H5Button(["accordion-button" "type":"button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                Accordion Item #1
              )
            </h4>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
              H5Div(["accordion-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              ),
            ),
          ),
          H5Div(["accordion-item">
            H5H4(["accordion-header" id="headingTwo">
              H5Button(["accordion-button collapsed" "type":"button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Accordion Item #2
              )
            </h4>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
              H5Div(["accordion-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              ),
            ),
          ),
          H5Div(["accordion-item">
            H5H4(["accordion-header" id="headingThree">
              H5Button(["accordion-button collapsed" "type":"button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Accordion Item #3
              )
            </h4>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
              H5Div(["accordion-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
              ),
            ),
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="alerts">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Alerts"),
        H5A(["d-flex align-items-center" href="../components/alerts/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        
        H5Div(["alert alert-primary alert-dismissible fade show" "role":"alert">
          A simple primary alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-secondary alert-dismissible fade show" "role":"alert">
          A simple secondary alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-success alert-dismissible fade show" "role":"alert">
          A simple success alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-danger alert-dismissible fade show" "role":"alert">
          A simple danger alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-warning alert-dismissible fade show" "role":"alert">
          A simple warning alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-info alert-dismissible fade show" "role":"alert">
          A simple info alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-light alert-dismissible fade show" "role":"alert">
          A simple light alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        H5Div(["alert alert-dark alert-dismissible fade show" "role":"alert">
          A simple dark alert with <a "href":"#" class="alert-link">an example link"),. Give it a click if you like.
          <button "type":"button" class="btn-close" data-bs-dismiss="alert", "aria-label":"Close">)
        ),
        ),

        H5Div(["bd-example">
        H5Div(["alert alert-success" "role":"alert">
          H5H4(["alert-heading">Well done!</h4>
          H5P("Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.")
          H5Hr,
          H5P(["mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.")
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="badge">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Badge"),
        H5A(["d-flex align-items-center" href="../components/badge/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5P(["h1">Example heading <span class="badge bg-primary">New"),")
        H5P(["h2">Example heading <span class="badge bg-secondary">New"),")
        H5P(["h3">Example heading <span class="badge bg-success">New"),")
        H5P(["h4">Example heading <span class="badge bg-danger">New"),")
        H5P(["h5">Example heading <span class="badge bg-warning text-dark">New"),")
        H5P(["h6">Example heading <span class="badge bg-info text-dark">New"),")
        H5P(["h6">Example heading <span class="badge bg-light text-dark">New"),")
        H5P(["h6">Example heading <span class="badge bg-dark">New"),")
        ),

        H5Div(["bd-example">
        
        <span class="badge rounded-pill bg-primary">Primary"),
        <span class="badge rounded-pill bg-secondary">Secondary"),
        <span class="badge rounded-pill bg-success">Success"),
        <span class="badge rounded-pill bg-danger">Danger"),
        <span class="badge rounded-pill bg-warning text-dark">Warning"),
        <span class="badge rounded-pill bg-info text-dark">Info"),
        <span class="badge rounded-pill bg-light text-dark">Light"),
        <span class="badge rounded-pill bg-dark">Dark"),
        ),
      ),
    </article>
    H5A("breadcrumb", ["my-3"], 
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Breadcrumb"),
        H5A(["d-flex align-items-center" href="../components/breadcrumb/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example"], 
          H5Nav(["aria-label":"breadcrumb"],
            BS5Breadcrumb(
              BS5BreadcrumbItem(H5A(["href":"#"], Home")),
              BS5BreadcrumbItem(H5A(["href":"#"], Library")),
              BS5BreadcrumbItem(["active"], ["aria-current":"page"], "Data")
            )
          )
        )
      )
    </article>
    H5A(["my-3" id="buttons">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Buttons"),
        H5A(["d-flex align-items-center" href="../components/buttons/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        
        BS5Button(["btn-primary">Primary)
        BS5Button(["btn-secondary">Secondary)
        BS5Button(["btn-success">Success)
        BS5Button(["btn-danger">Danger)
        BS5Button(["btn-warning">Warning)
        BS5Button(["btn-info">Info)
        BS5Button(["btn-light">Light)
        BS5Button(["btn-dark">Dark)

        BS5Button(["btn-link">Link)
        ),

        H5Div(["bd-example">
        
        BS5Button(["btn-outline-primary">Primary)
        BS5Button(["btn-outline-secondary">Secondary)
        BS5Button(["btn-outline-success">Success)
        BS5Button(["btn-outline-danger">Danger)
        BS5Button(["btn-outline-warning">Warning)
        BS5Button(["btn-outline-info">Info)
        BS5Button(["btn-outline-light">Light)
        BS5Button(["btn-outline-dark">Dark)
        ),

        H5Div(["bd-example">
        BS5Button(["btn-primary btn-sm">Small button)
        BS5Button(["btn-primary">Standard button)
        BS5Button(["btn-primary btn-lg">Large button)
        ),
      ),
    </article>
    H5A(["my-3" id="button-group">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Button group"),
        H5A(["d-flex align-items-center" href="../components/button-group/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["btn-toolbar" "role":"toolbar", "aria-label":"Toolbar with button groups">
          H5Div(["btn-group me-2" "role":"group", "aria-label":"First group">
            BS5Button(["btn-secondary">1)
            BS5Button(["btn-secondary">2)
            BS5Button(["btn-secondary">3)
            BS5Button(["btn-secondary">4)
          ),
          H5Div(["btn-group me-2" "role":"group", "aria-label":"Second group">
            BS5Button(["btn-secondary">5)
            BS5Button(["btn-secondary">6)
            BS5Button(["btn-secondary">7)
          ),
          H5Div(["btn-group" "role":"group", "aria-label":"Third group">
            BS5Button(["btn-secondary">8)
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="card">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Card"),
        H5A(["d-flex align-items-center" href="../components/card/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["row  row-cols-1 row-cols-md-2 g-4">
          H5Div(["col">
            BS5Card(
              H5Svg(["bd-placeholder-img card-img-top" "width":"100%" "height":"180" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>

              BS5CardBody(
                BS5CardTitle("Card title"),
                BS5CardText("Some quick example text to build on the card title and make up the bulk of the card's content.")
                <a "href":"#" class="btn btn-primary">Go somewhere"),
              ),
            ),
          ),
          H5Div(["col">
            BS5Card(
              H5Div(["card-header">
                Featured
              ),
              BS5CardBody(
                BS5CardTitle("Card title"),
                BS5CardText("Some quick example text to build on the card title and make up the bulk of the card's content.")
                <a "href":"#" class="btn btn-primary">Go somewhere"),
              ),
              H5Div(["card-footer text-muted">
                2 days ago
              ),
            ),
          ),
          H5Div(["col">
            BS5Card(
              BS5CardBody(
                BS5CardTitle("Card title"),
                BS5CardText("Some quick example text to build on the card title and make up the bulk of the card's content.")
              ),
              H5Ul(["list-group list-group-flush">
                <li class="list-group-item">Cras justo odio),
                <li class="list-group-item">Dapibus ac facilisis in),
                <li class="list-group-item">Vestibulum at eros),
              ),
              BS5CardBody(
                <a "href":"#" class="card-link">Card link"),
                <a "href":"#" class="card-link">Another link"),
              ),
            ),
          ),
          H5Div(["col">
            BS5Card(
              H5Div(["row g-0">
                H5Div(["col-md-4">
                  H5Svg(["bd-placeholder-img" "width":"100%" "height":"250" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Image" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#868e96"/><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image</text></svg>

                ),
                H5Div(["col-md-8">
                  BS5CardBody(
                    BS5CardTitle("Card title"),
                    BS5CardText("This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.")
                    BS5CardText("<small class="text-muted">Last updated 3 mins ago"),")
                  ),
                ),
              ),
            ),
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="carousel">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Carousel"),
        H5A(["d-flex align-items-center" href="../components/carousel/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
          <ol class="carousel-indicators">
            <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active">),
            <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1">),
            <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2">),
          ),
          H5Div(["carousel-inner">
            H5Div(["carousel-item active">
              H5Svg(["bd-placeholder-img bd-placeholder-img-lg d-block w-100" "width":"800" "height":"400" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#777"/><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text></svg>

              H5Div(["carousel-caption d-none d-md-block">
                <h5>First slide label"),
                H5P("Nulla vitae elit libero, a pharetra augue mollis interdum.")
              ),
            ),
            H5Div(["carousel-item">
              H5Svg(["bd-placeholder-img bd-placeholder-img-lg d-block w-100" "width":"800" "height":"400" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#666"/><text x="50%" y="50%" fill="#444" dy=".3em">Second slide</text></svg>

              H5Div(["carousel-caption d-none d-md-block">
                <h5>Second slide label"),
                H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
              ),
            ),
            H5Div(["carousel-item">
              H5Svg(["bd-placeholder-img bd-placeholder-img-lg d-block w-100" "width":"800" "height":"400" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#555"/><text x="50%" y="50%" fill="#333" dy=".3em">Third slide</text></svg>

              H5Div(["carousel-caption d-none d-md-block">
                <h5>Third slide label"),
                H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur.")
              ),
            ),
          ),
          H5A(["carousel-control-prev" href="#carouselExampleCaptions" "role":"button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true">"),
            <span class="visually-hidden">Previous"),
          "),
          H5A(["carousel-control-next" href="#carouselExampleCaptions" "role":"button" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true">"),
            <span class="visually-hidden">Next"),
          "),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="dropdowns">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Dropdowns"),
        H5A(["d-flex align-items-center" href="../components/dropdowns/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["btn-group w-100 align-items-center justify-content-between flex-wrap">
          H5Div(["dropdown">
            H5Button(["btn btn-secondary btn-sm dropdown-toggle" "type":"button" id="dropdownMenuButtonSM" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown button
            )
            H5Ul(["dropdown-menu" aria-labelledby="dropdownMenuButtonSM">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
          H5Div(["dropdown">
            H5Button(["btn btn-secondary dropdown-toggle" "type":"button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown button
            )
            H5Ul(["dropdown-menu" aria-labelledby="dropdownMenuButton">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
          H5Div(["dropdown">
            H5Button(["btn btn-secondary btn-lg dropdown-toggle" "type":"button" id="dropdownMenuButtonLG" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown button
            )
            H5Ul(["dropdown-menu" aria-labelledby="dropdownMenuButtonLG">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
        ),
        ),

        H5Div(["bd-example">
        H5Div(["btn-group">
          BS5Button(["btn-primary">Primary)
          BS5Button(["btn-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown"),
          )
          H5Ul(["dropdown-menu">
            H5Li("BS5DropdownItem(["href":"#"], Action")),
            H5Li("BS5DropdownItem(["href":"#"], Another action")),
            H5Li("BS5DropdownItem(["href":"#"], Something else here")),
          ),
        ),<!-- /btn-group -->
        H5Div(["btn-group">
          BS5Button(["btn-secondary">Secondary)
          BS5Button(["btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown"),
          )
          H5Ul(["dropdown-menu">
            H5Li("BS5DropdownItem(["href":"#"], Action")),
            H5Li("BS5DropdownItem(["href":"#"], Another action")),
            H5Li("BS5DropdownItem(["href":"#"], Something else here")),
          ),
        ),<!-- /btn-group -->
        H5Div(["btn-group">
          BS5Button(["btn-success">Success)
          BS5Button(["btn-success dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown"),
          )
          H5Ul(["dropdown-menu">
            H5Li("BS5DropdownItem(["href":"#"], Action")),
            H5Li("BS5DropdownItem(["href":"#"], Another action")),
            H5Li("BS5DropdownItem(["href":"#"], Something else here")),
          ),
        ),<!-- /btn-group -->
        H5Div(["btn-group">
          BS5Button(["btn-info">Info)
          BS5Button(["btn-info dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown"),
          )
          H5Ul(["dropdown-menu">
            H5Li("BS5DropdownItem(["href":"#"], Action")),
            H5Li("BS5DropdownItem(["href":"#"], Another action")),
            H5Li("BS5DropdownItem(["href":"#"], Something else here")),
          ),
        ),<!-- /btn-group -->
        H5Div(["btn-group">
          BS5Button(["btn-warning">Warning)
          BS5Button(["btn-warning dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown"),
          )
          H5Ul(["dropdown-menu">
            H5Li("BS5DropdownItem(["href":"#"], Action")),
            H5Li("BS5DropdownItem(["href":"#"], Another action")),
            H5Li("BS5DropdownItem(["href":"#"], Something else here")),
          ),
        ),<!-- /btn-group -->
        H5Div(["btn-group">
          BS5Button(["btn-danger">Danger)
          BS5Button(["btn-danger dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown"),
          )
          H5Ul(["dropdown-menu">
            H5Li("BS5DropdownItem(["href":"#"], Action")),
            H5Li("BS5DropdownItem(["href":"#"], Another action")),
            H5Li("BS5DropdownItem(["href":"#"], Something else here")),
          ),
        ),<!-- /btn-group -->
        ),

        H5Div(["bd-example">
        H5Div(["btn-group w-100 align-items-center justify-content-between flex-wrap">
          H5Div(["dropend">
            H5Button(["btn btn-secondary dropdown-toggle" "type":"button" id="dropendMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
              Dropend button
            )
            H5Ul(["dropdown-menu" aria-labelledby="dropendMenuButton">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
          H5Div(["dropup">
            H5Button(["btn btn-secondary dropdown-toggle" "type":"button" id="dropupMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
              Dropup button
            )
            H5Ul(["dropdown-menu" aria-labelledby="dropupMenuButton">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
          H5Div(["dropstart">
            H5Button(["btn btn-secondary dropdown-toggle" "type":"button" id="dropstartMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
              Dropstart button
            )
            H5Ul(["dropdown-menu" aria-labelledby="dropstartMenuButton">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("BS5DropdownItem(["href":"#"], Something else here")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
        ),
        ),

        H5Div(["bd-example">
        H5Div(["btn-group">
          H5Div(["dropdown">
            H5Button(["btn btn-secondary dropdown-toggle" "type":"button" id="dropdownRightMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
              End-aligned menu
            )
            H5Ul(["dropdown-menu dropdown-menu-end" aria-labelledby="dropdownRightMenuButton">
              H5Li("<h6 class="dropdown-header">Dropdown header</h6>),
              H5Li("BS5DropdownItem(["href":"#"], Action")),
              H5Li("BS5DropdownItem(["href":"#"], Another action")),
              H5Li("<hr class="dropdown-divider">),
              H5Li("BS5DropdownItem(["href":"#"], Separated link")),
            ),
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="list-group">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("List group"),
        H5A(["d-flex align-items-center" href="../components/list-group/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Ul(["list-group">
          <li class="list-group-item active" aria-current="true">Cras justo odio),
          <li class="list-group-item disabled" aria-disabled="true">Dapibus ac facilisis in),
          <li class="list-group-item">Morbi leo risus),
          <li class="list-group-item">Porta ac consectetur ac),
          <li class="list-group-item">Vestibulum at eros),
        ),
        ),

        H5Div(["bd-example">
        H5Ul(["list-group list-group-flush">
          <li class="list-group-item">Cras justo odio),
          <li class="list-group-item">Dapibus ac facilisis in),
          <li class="list-group-item">Morbi leo risus),
          <li class="list-group-item">Porta ac consectetur ac),
          <li class="list-group-item">Vestibulum at eros),
        ),
        ),

        H5Div(["bd-example">
        H5Div(["list-group">
          <a "href":"#" class="list-group-item list-group-item-action">Dapibus ac facilisis in"),
          
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-primary">A simple primary list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-secondary">A simple secondary list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-success">A simple success list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-danger">A simple danger list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-warning">A simple warning list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-info">A simple info list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-light">A simple light list group item"),
          <a "href":"#" class="list-group-item list-group-item-action list-group-item-dark">A simple dark list group item"),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="modal">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Modal"),
        H5A(["d-flex align-items-center" href="../components/modal/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["d-flex justify-content-between flex-wrap">
          BS5Button(["btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalDefault">
            Launch demo modal
          )
          BS5Button(["btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdropLive">
            Launch static backdrop modal
          )
          BS5Button(["btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalCenteredScrollable">
            Vertically centered scrollable modal
          )
          BS5Button(["btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreen">
            Full screen
          )
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="navs">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Navs"),
        H5A(["d-flex align-items-center" href="../components/navs-tabs/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Nav(["nav">
          BS5NavLink(["active" aria-current="page"], ["href":"#"], Active"),
          BS5NavLink( "href":"#"], Link"),
          BS5NavLink( "href":"#"], Link"),
          BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
        ),
        ),

        H5Div(["bd-example">
        <nav>
          H5Div(["nav nav-tabs mb-3" id="nav-tab" "role":"tablist">
            BS5NavLink(["active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home" "role":"tab" aria-controls="nav-home" aria-selected="true">Home"),
            BS5NavLink( id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile" "role":"tab" aria-controls="nav-profile" aria-selected="false">Profile"),
            BS5NavLink( id="nav-contact-tab" data-bs-toggle="tab" href="#nav-contact" "role":"tab" aria-controls="nav-contact" aria-selected="false">Contact"),
          ),
        ),
        H5Div(["tab-content" id="nav-tabContent">
          H5Div(["tab-pane fade show active" id="nav-home" "role":"tabpanel" aria-labelledby="nav-home-tab">
            H5P(["px-3">Consequat occaecat ullamco amet non eiusmod nostrud dolore irure incididunt est duis anim sunt officia. Fugiat velit proident aliquip nisi incididunt nostrud exercitation proident est nisi. Irure magna elit commodo anim ex veniam culpa eiusmod id nostrud sit cupidatat in veniam ad. Eiusmod consequat eu adipisicing minim anim aliquip cupidatat culpa excepteur quis. Occaecat sit eu exercitation irure Lorem incididunt nostrud.")
          ),
          H5Div(["tab-pane fade" id="nav-profile" "role":"tabpanel" aria-labelledby="nav-profile-tab">
            H5P(["px-3">Ad pariatur nostrud pariatur exercitation ipsum ipsum culpa mollit commodo mollit ex. Aute sunt incididunt amet commodo est sint nisi deserunt pariatur do. Aliquip ex eiusmod voluptate exercitation cillum id incididunt elit sunt. Qui minim sit magna Lorem id et dolore velit Lorem amet exercitation duis deserunt. Anim id labore elit adipisicing ut in id occaecat pariatur ut ullamco ea tempor duis.")
          ),
          H5Div(["tab-pane fade" id="nav-contact" "role":"tabpanel" aria-labelledby="nav-contact-tab">
            H5P(["px-3">Est quis nulla laborum officia ad nisi ex nostrud culpa Lorem excepteur aliquip dolor aliqua irure ex. Nulla ut duis ipsum nisi elit fugiat commodo sunt reprehenderit laborum veniam eu veniam. Eiusmod minim exercitation fugiat irure ex labore incididunt do fugiat commodo aliquip sit id deserunt reprehenderit aliquip nostrud. Amet ex cupidatat excepteur aute veniam incididunt mollit cupidatat esse irure officia elit do ipsum ullamco Lorem. Ullamco ut ad minim do mollit labore ipsum laboris ipsum commodo sunt tempor enim incididunt. Commodo quis sunt dolore aliquip aute tempor irure magna enim minim reprehenderit. Ullamco consectetur culpa veniam sint cillum aliqua incididunt velit ullamco sunt ullamco quis quis commodo voluptate. Mollit nulla nostrud adipisicing aliqua cupidatat aliqua pariatur mollit voluptate voluptate consequat non.")
          ),
        ),
        ),

        H5Div(["bd-example">
        H5Ul(["nav nav-pills">
          BS5NavItem(
            BS5NavLink(["active" aria-current="page"], ["href":"#"], Active"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink( "href":"#"], Link"),
          ),
          BS5NavItem(
            BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="navbar">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Navbar"),
        H5A(["d-flex align-items-center" href="../components/navbar/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Nav(["navbar navbar-expand-lg navbar-light bg-light">
          H5Div(["container-fluid">
            H5A(["navbar-brand"], ["href":"#"], 
              <img src="../assets/brand/bootstrap-logo-white.svg" "width":"38" "height":"30" class="d-inline-block align-top" alt="Bootstrap" loading="lazy"
                   style="filter: invert(1) grayscale(100%) brightness(200%);">
            "),
            H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false", "aria-label":"Toggle navigation">
              H5Span(["navbar-toggler-icon"])
            )
            H5Div(["collapse navbar-collapse" id="navbarSupportedContent">
              BS5NavbarNav(["me-auto mb-2 mb-lg-0">
                BS5NavItem(
                  BS5NavLink(["active" aria-current="page"], ["href":"#"], Home"),
                ),
                BS5NavItem(
                  BS5NavLink( "href":"#"], Link"),
                ),
                BS5NavItem(["dropdown">
                  BS5NavLink(["dropdown-toggle"], ["href":"#" id="navbarDropdown" "role":"button" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown
                  "),
                  H5Ul(["dropdown-menu" aria-labelledby="navbarDropdown">
                    H5Li("BS5DropdownItem(["href":"#"], Action")),
                    H5Li("BS5DropdownItem(["href":"#"], Another action")),
                    H5Li("<hr class="dropdown-divider">),
                    H5Li("BS5DropdownItem(["href":"#"], Something else here")),
                  ),
                ),
                BS5NavItem(
                  BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
                ),
              ),
              H5Form(["d-flex">
                <input class="form-control me-2" "type":"search" "placeholder":"Search", "aria-label":"Search">
                BS5ButtonSubmit(["btn-outline-dark"], "Search")
              )
            ),
          ),
        ),

        H5Nav(["navbar navbar-expand-lg navbar-dark bg-primary mt-5">
          H5Div(["container-fluid">
            H5A(["navbar-brand"], ["href":"#"], 
              <img src="../assets/brand/bootstrap-logo-white.svg" "width":"38" "height":"30" class="d-inline-block align-top" alt="Bootstrap" loading="lazy">
            "),
            H5Button(["navbar-toggler" "type":"button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2" aria-expanded="false", "aria-label":"Toggle navigation">
              H5Span(["navbar-toggler-icon"])
            )
            H5Div(["collapse navbar-collapse" id="navbarSupportedContent2">
              BS5NavbarNav(["me-auto mb-2 mb-lg-0">
                BS5NavItem(
                  BS5NavLink(["active" aria-current="page"], ["href":"#"], Home"),
                ),
                BS5NavItem(
                  BS5NavLink( "href":"#"], Link"),
                ),
                BS5NavItem(["dropdown">
                  BS5NavLink(["dropdown-toggle"], ["href":"#" id="navbarDropdown2" "role":"button" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown
                  "),
                  H5Ul(["dropdown-menu" aria-labelledby="navbarDropdown2">
                    H5Li("BS5DropdownItem(["href":"#"], Action")),
                    H5Li("BS5DropdownItem(["href":"#"], Another action")),
                    H5Li("<hr class="dropdown-divider">),
                    H5Li("BS5DropdownItem(["href":"#"], Something else here")),
                  ),
                ),
                BS5NavItem(
                  BS5NavLink(["disabled"], ["href":"#" tabindex="-1" aria-disabled="true">Disabled"),
                ),
              ),
              H5Form(["d-flex">
                <input class="form-control me-2" "type":"search" "placeholder":"Search", "aria-label":"Search">
                H5Button(["btn btn-outline-light" "type":"submit">Search)
              )
            ),
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="pagination">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Pagination"),
        H5A(["d-flex align-items-center" href="../components/pagination/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        <nav "aria-label":"Pagination example">
          H5Ul(["pagination pagination-sm">
            <li class="page-item">H5A(["page-link"], ["href":"#"], 1")),
            <li class="page-item active" aria-current="page">
              H5A(["page-link"], ["href":"#"], 2 <span class="visually-hidden">(current)"),"),
            ),
            <li class="page-item">H5A(["page-link"], ["href":"#"], 3")),
          ),
        ),
        ),

        H5Div(["bd-example">
        <nav "aria-label":"Standard pagination example">
          H5Ul(["pagination">
            <li class="page-item">
              H5A(["page-link"], ["href":"#", "aria-label":"Previous">
                <span aria-hidden="true">&laquo;"),
              "),
            ),
            <li class="page-item">H5A(["page-link"], ["href":"#"], 1")),
            <li class="page-item">H5A(["page-link"], ["href":"#"], 2")),
            <li class="page-item">H5A(["page-link"], ["href":"#"], 3")),
            <li class="page-item">
              H5A(["page-link"], ["href":"#", "aria-label":"Next">
                <span aria-hidden="true">&raquo;"),
              "),
            ),
          ),
        ),
        ),

        H5Div(["bd-example">
        <nav "aria-label":"Another pagination example">
          H5Ul(["pagination pagination-lg flex-wrap">
            <li class="page-item disabled">
              H5A(["page-link"], ["href":"#" tabindex="-1" aria-disabled="true">Previous"),
            ),
            <li class="page-item">H5A(["page-link"], ["href":"#"], 1")),
            <li class="page-item active" aria-current="page">
              H5A(["page-link"], ["href":"#"], 2 <span class="visually-hidden">(current)"),"),
            ),
            <li class="page-item">H5A(["page-link"], ["href":"#"], 3")),
            <li class="page-item">
              H5A(["page-link"], ["href":"#"], Next"),
            ),
          ),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="popovers">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Popovers"),
        H5A(["d-flex align-items-center" href="../components/popovers/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        BS5Button(["btn-lg btn-danger" data-bs-toggle="popover" title="Popover title" data-bs-content="And here's some amazing content. It's very engaging. Right?">Click to toggle popover)
        ),

        H5Div(["bd-example">
        BS5Button(["btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on top
        )
        BS5Button(["btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="right" data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on end
        )
        BS5Button(["btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="bottom" data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on bottom
        )
        BS5Button(["btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="left" data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          Popover on start
        )
        ),
      ),
    </article>
    H5A(["my-3" id="progress">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Progress"),
        H5A(["d-flex align-items-center" href="../components/progress/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        H5Div(["progress mb-3">
          H5Div(["progress-bar" "role":"progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0%),
        ),
        H5Div(["progress mb-3">
          H5Div(["progress-bar bg-success w-25" "role":"progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%),
        ),
        H5Div(["progress mb-3">
          H5Div(["progress-bar bg-info text-dark w-50" "role":"progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%),
        ),
        H5Div(["progress mb-3">
          H5Div(["progress-bar bg-warning text-dark w-75" "role":"progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%),
        ),
        H5Div(["progress">
          H5Div(["progress-bar bg-danger w-100" "role":"progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%),
        ),
        ),

        H5Div(["bd-example">
        H5Div(["progress">
          H5Div(["progress-bar" "role":"progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">),
          H5Div(["progress-bar progress-bar-striped progress-bar-animated bg-success" "role":"progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="scrollspy">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Scrollspy"),
        H5A(["d-flex align-items-center" href="../components/scrollspy/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
          <nav id="navbar-example2" class="navbar navbar-light bg-light px-3">
            H5A(["navbar-brand"], ["href":"#"], Navbar"),
            H5Ul(["nav nav-pills">
              BS5NavItem(
                BS5NavLink( href="#fat">@fat"),
              ),
              BS5NavItem(
                BS5NavLink( href="#mdo">@mdo"),
              ),
              BS5NavItem(["dropdown">
                BS5NavLink(["dropdown-toggle" data-bs-toggle="dropdown"], ["href":"#" "role":"button" aria-expanded="false">Dropdown"),
                H5Ul(["dropdown-menu">
                  H5Li("H5A(["dropdown-item" href="#one">one")),
                  H5Li("H5A(["dropdown-item" href="#two">two")),
                  H5Li("<hr class="dropdown-divider">),
                  H5Li("H5A(["dropdown-item" href="#three">three")),
                ),
              ),
            ),
          ),
          <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" class="scrollspy-example">
            <h4 id="fat">@fat</h4>
            H5P("Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.")
            <h4 id="mdo">@mdo</h4>
            H5P("Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard aliqua cupidatat mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles. Tattooed cosby sweater food truck, mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non aesthetic exercitation quis gentrify. Brooklyn adipisicing craft beer vice keytar deserunt.")
            <h4 id="one">one</h4>
            H5P("Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights adipisicing banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam. High life id vinyl, echo park consequat quis aliquip banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi DIY minim messenger bag. Cred ex in, sustainable delectus consectetur fanny pack iphone.")
            <h4 id="two">two</h4>
            H5P("In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats sapiente veniam. Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer. Single-origin coffee wayfarers irure four loko, cupidatat terry richardson master cleanse. Assumenda you probably haven't heard of them art party fanny pack, tattooed nulla cardigan tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable. Elit wolf voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk brooklyn nesciunt.")
            <h4 id="three">three</h4>
            H5P("Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.")
            H5P("Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id assumenda. Locavore sed helvetica cliche irony, thundercats you probably haven't heard of them consequat hoodie gluten-free lo-fi fap aliquip. Labore elit placeat before they sold out, terry richardson proident brunch nesciunt quis cosby sweater pariatur keffiyeh ut helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray laboris tempor veniam. Anim mollit minim commodo ullamco thundercats.
            ")
          ),
        ),
      ),
    </article>
    H5A(["my-3" id="spinners">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Spinners"),
        H5A(["d-flex align-items-center" href="../components/spinners/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example">
        
        H5Div(["spinner-border text-primary" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-secondary" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-success" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-danger" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-warning" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-info" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-light" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-border text-dark" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        ),

        H5Div(["bd-example">
        
        H5Div(["spinner-grow text-primary" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-secondary" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-success" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-danger" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-warning" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-info" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-light" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        H5Div(["spinner-grow text-dark" "role":"status">
          <span class="visually-hidden">Loading..."),
        ),
        ),
      ),
    </article>
    H5A(["my-3" id="toasts">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Toasts"),
        H5A(["d-flex align-items-center" href="../components/toasts/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example bg-dark p-5 align-items-center">
        H5Div(["toast" "role":"alert" aria-live="assertive" aria-atomic="true">
          H5Div(["toast-header">
            H5Svg(["bd-placeholder-img rounded me-2" "width":"20" "height":"20" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect "width":"100%" "height":"100%" fill="#007aff"/></svg>

            H5Strong(["me-auto">Bootstrap")
            <small class="text-muted">11 mins ago"),
            <button "type":"button" class="btn-close" data-bs-dismiss="toast", "aria-label":"Close">)
          ),
          H5Div(["toast-body">
            Hello, world! This is a toast message.
          ),
        ),
        ),
      ),
    </article>
    H5A(["mt-3 mb-5 pb-5" id="tooltips">
      H5Div(["bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
        H5H3("Tooltips"),
        H5A(["d-flex align-items-center" href="../components/tooltips/">Documentation"),
      ),

      H5Div(
        H5Div(["bd-example tooltip-demo">
        BS5Button(["btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Tooltip on top">Tooltip on top)
        BS5Button(["btn-secondary" data-bs-toggle="tooltip" data-bs-placement="right" title="Tooltip on end">Tooltip on end)
        BS5Button(["btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tooltip on bottom">Tooltip on bottom)
        BS5Button(["btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="Tooltip on start">Tooltip on start)
        BS5Button(["btn-secondary" data-bs-toggle="tooltip" data-bs-html="true" title="<em>Tooltip</em> <u>with</u> <b>HTML</b>">Tooltip with HTML)
        ),
      ),
    </article>
  </section>
),

H5Div(["modal fade" id="exampleModalDefault" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  H5Div(["modal-dialog">
    H5Div(["modal-content">
      H5Div(["modal-header">
        H5H5(["modal-title" id="exampleModalLabel">Modal title"),
        <button "type":"button" class="btn-close" data-bs-dismiss="modal", "aria-label":"Close">)
      ),
      H5Div(["modal-body">
        ...
      ),
      H5Div(["modal-footer">
        BS5Button(["btn-secondary" data-bs-dismiss="modal">Close)
        BS5Button(["btn-primary">Save changes)
      ),
    ),
  ),
),
H5Div(["modal fade" id="staticBackdropLive" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLiveLabel" aria-hidden="true">
  H5Div(["modal-dialog">
    H5Div(["modal-content">
      H5Div(["modal-header">
        H5H5(["modal-title" id="staticBackdropLiveLabel">Modal title"),
        <button "type":"button" class="btn-close" data-bs-dismiss="modal", "aria-label":"Close">)
      ),
      H5Div(["modal-body">
        H5P("I will not close if you click outside me. Don't even try to press escape key.")
      ),
      H5Div(["modal-footer">
        BS5Button(["btn-secondary" data-bs-dismiss="modal">Close)
        BS5Button(["btn-primary">Understood)
      ),
    ),
  ),
),
H5Div(["modal fade" id="exampleModalCenteredScrollable" tabindex="-1" aria-labelledby="exampleModalCenteredScrollableTitle" aria-hidden="true">
  H5Div(["modal-dialog modal-sm modal-dialog-centered modal-dialog-scrollable">
    H5Div(["modal-content">
      H5Div(["modal-header">
        H5H5(["modal-title" id="exampleModalCenteredScrollableTitle">Modal title"),
        <button "type":"button" class="btn-close" data-bs-dismiss="modal", "aria-label":"Close">)
      ),
      H5Div(["modal-body">
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
      ),
      H5Div(["modal-footer">
        BS5Button(["btn-secondary" data-bs-dismiss="modal">Close)
        BS5Button(["btn-primary">Save changes)
      ),
    ),
  ),
),
H5Div(["modal fade" id="exampleModalFullscreen" tabindex="-1" aria-labelledby="exampleModalFullscreenLabel" aria-hidden="true">
  H5Div(["modal-dialog modal-fullscreen">
    H5Div(["modal-content">
      H5Div(["modal-header">
        H5H5(["modal-title h4" id="exampleModalFullscreenLabel">Full screen modal"),
        <button "type":"button" class="btn-close" data-bs-dismiss="modal", "aria-label":"Close">)
      ),
      H5Div(["modal-body">
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
        H5P("Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        H5P("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
        H5P("Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.")
      ),
      H5Div(["modal-footer">
        BS5Button(["btn-secondary" data-bs-dismiss="modal">Close)
      ),
    ),
  ),
),
<script>
/* global bootstrap: false */

(function () {
  'use strict'

  // Tooltip and popover demos
  document.querySelectorAll('.tooltip-demo')
    .forEach(function (tooltip) {
      new bootstrap.Tooltip(tooltip, {
        selector: '[data-bs-toggle="tooltip"]'
      })
    })

  document.querySelectorAll('[data-bs-toggle="popover"]')
    .forEach(function (popover) {
      new bootstrap.Popover(popover)
    })

  document.querySelectorAll('.toast')
    .forEach(function (toastNode) {
      var toast = new bootstrap.Toast(toastNode, {
        autohide: false
      })

      toast.show()
    })

  // Disable empty links
  document.querySelectorAll('["href":"#"]')
    .forEach(function (link) {
      link.addEventListener('click', function (event) {
        event.preventDefault()
      })
    })

  function setActiveItem() {
    var hash = window.location.hash

    if (hash === '') {
      return
    }

    var link = document.querySelector('.bd-aside a[href="' + hash + '"]')
    var active = document.querySelector('.bd-aside .active')
    var parent = link.parentNode.parentNode.previousElementSibling

    link.classList.add('active')

    if (parent.classList.contains('collapsed')) {
      parent.click()
    }

    if (!active) {
      return
    }

    var expanded = active.parentNode.parentNode.previousElementSibling

    active.classList.remove('active')

    if (expanded && parent !== expanded) {
      expanded.click()
    }
  }

  setActiveItem()
  window.addEventListener('hashchange', setActiveItem)
})()

</script>
`;

    }
  });
}
 
