module uim.bootstrap.bs5.demos.demo;

import uim.bootstrap;

auto demoBs5Example(string id, string title, DH5Obj tabResult, string tabUim = "", string tabHTML = "", string tabCSS = "") {
  return 
  H5Div(["mt-4 mb-4"],
    H5H3(["text-muted"], title),
    BS5Card(
      BS5CardHeader(
        BS5NavTabs(["card-header-tabs"],
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-1", ["active"], ["href":"#tab"~id~"-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-1", "aria-selected":"true"], "Result")).toString~
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-2", ["href":"#tab"~id~"-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-2", "aria-selected":"true"], "Code")).toString~
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tab"~id~"-3", ["href":"#tab"~id~"-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tab"~id~"-pane-3", "aria-selected":"true"], "HTML")).toString
      )),
      BS5CardBody(
        H5Div(["tab-content"], 
          H5Div("tab"~id~"-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-1"], tabResult),
          H5Div("tab"~id~"-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-2"], 
            `<pre><code>`~tabUim.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace(">", "&gt;")~`</code></pre>`),
          H5Div("tab"~id~"-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tab"~id~"-3"], 
            `<pre><code>`~tabHTML.replace(`&`, "&amp;").replace(`"`, "&quot;").replace("<", "&lt;").replace(">", "&gt;")~`</code></pre>`)
  ))));
}


auto listLevels(string selected = "") {
  string items;

  items ~= (selected != "basic" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic"], "Basic")).toString : H5Li(["list-group-item active"], "Basic").toString);
  items ~= (selected != "complex" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex"], "Complex")).toString : H5Li(["list-group-item active"], "Complex").toString);
  items ~= (selected != "examples" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples"], "Examples")).toString : H5Li(["list-group-item active"], "Examples").toString);

  return 
    H5Div(["mb-5"],
      H5H3(["text-muted"], "Levels"), 
      BS5List(["list-group"], items));
} 

auto listAreas(string level, string selected = "") {
  string items;

  switch(level) {
    case "basic":
      items ~= (selected != "components" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components"], "Components")).toString : H5Li(["list-group-item active"], "Components").toString);
      items ~= (selected != "contents" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents"], "Contents")).toString : H5Li(["list-group-item active"], "Contents").toString);
      items ~= (selected != "forms" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms"], "Forms")).toString : H5Li(["list-group-item active"], "Forms").toString);
      items ~= (selected != "helpers" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers"], "Helpers")).toString : H5Li(["list-group-item active"], "Helpers").toString);
      items ~= (selected != "layouts" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts"], "Layouts")).toString : H5Li(["list-group-item active"], "Layouts").toString);
      items ~= (selected != "utilities" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities"], "Utilities")).toString : H5Li(["list-group-item active"], "Utilities").toString);
      break;
    case "complex":
      items ~= (selected != "ecommercecards" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/ecommercecards"], "eCommerce Cards")).toString : H5Li(["list-group-item active"], "eCommerce Cards").toString);
      items ~= (selected != "ecommercecardsanimation" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/ecommercecardsanimation"], "eCommerce Cards with Animation")).toString : H5Li(["list-group-item active"], "eCommerce Cards with Animation").toString);
      items ~= (selected != "flightbooking" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/flightbooking"], "Flight Booking")).toString : H5Li(["list-group-item active"], "Flight Booking").toString);
      items ~= (selected != "jobcards" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/jobcards"], "Job cards")).toString : H5Li(["list-group-item active"], "Job cards").toString);
      items ~= (selected != "pricingtable" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/pricingtable"], "Pricing Table")).toString : H5Li(["list-group-item active"], "Pricing Table").toString);
      items ~= (selected != "socialpost" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/socialpost"], "Social Post")).toString : H5Li(["list-group-item active"], "Social Post").toString);
      items ~= (selected != "responsivecontact" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/responsivecontact"], "Responsive Contact")).toString : H5Li(["list-group-item active"], "Responsive Contact").toString);
      items ~= (selected != "userprofile" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/userprofile"], "User Profile")).toString : H5Li(["list-group-item active"], "User Profile").toString);
      items ~= (selected != "userprofilestats" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/complex/userprofilestats"], "User Profile with Statitics")).toString : H5Li(["list-group-item active"], "User Profile with Statitics").toString);
      break;
    case "examples":
      items ~= (selected != "album" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/album"], "Album")).toString : H5Li(["list-group-item active"], "Album").toString);
      items ~= (selected != "blog" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/blog"], "Blog")).toString : H5Li(["list-group-item active"], "Blog").toString);
      items ~= (selected != "carousel" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/carousel"], "Carousel")).toString : H5Li(["list-group-item active"], "Carousel").toString);
      items ~= (selected != "cheatsheet" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/cheatsheet"], "Cheat Sheet")).toString : H5Li(["list-group-item active"], "Cheat Sheet").toString);
      items ~= (selected != "checkout" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/checkout"], "Checkout")).toString : H5Li(["list-group-item active"], "Checkout").toString);
      items ~= (selected != "cover" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/cover"], "Cover")).toString : H5Li(["list-group-item active"], "Cover").toString);
      items ~= (selected != "dashboard" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/dashboard"], "Dashboard")).toString : H5Li(["list-group-item active"], "Dashboard").toString);
      items ~= (selected != "grid" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/grid"], "Grid")).toString : H5Li(["list-group-item active"], "Grid").toString);
      items ~= (selected != "masonary" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/masonary"], "Masonary")).toString : H5Li(["list-group-item active"], "Masonary").toString);
      items ~= (selected != "navbarbottom" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/navbarbottom"], "Navbar bottom")).toString : H5Li(["list-group-item active"], "Navbar bottom").toString);
      items ~= (selected != "navbars" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/navbars"], "Navbars")).toString : H5Li(["list-group-item active"], "Navbars").toString);
      items ~= (selected != "navbarstatic" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/navbarstatic"], "Navbar static")).toString : H5Li(["list-group-item active"], "Navbar static").toString);
      items ~= (selected != "navbartopfixed" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/navbartopfixed"], "Navbar Top Fixed")).toString : H5Li(["list-group-item active"], "Navbar Top Fixed").toString);
      items ~= (selected != "offcanvas" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/offcanvas"], "Offcanvas")).toString : H5Li(["list-group-item active"], "Offcanvas").toString);
      items ~= (selected != "pricing" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/pricing"], "Pricing")).toString : H5Li(["list-group-item active"], "Pricing").toString);
      items ~= (selected != "product" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/product"], "Product")).toString : H5Li(["list-group-item active"], "Product").toString);
      items ~= (selected != "signin" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/signin"], "Signin")).toString : H5Li(["list-group-item active"], "Signin").toString);
      items ~= (selected != "starter" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/examples/starter"], "Starter")).toString : H5Li(["list-group-item active"], "Starter").toString);
      break;
    default: break;
  }

  return 
    H5Div(["mb-5"],
      H5H3(["text-muted"], "Areas"), 
      BS5List(items));
} 

auto listSections(string level, string area, string selected = "") {
  string items;

  switch(level) {
    case "basic":
      switch(area) {
        case "layouts":
          items ~= (selected != "columns" ? H5Li(["list-group-item"],  H5A(["href":"/demos/uim-bootstrap/5/basic/layouts/columns"], "Columns")).toString : H5Li(["list-group-item active"], "Columns").toString);
          items ~= (selected != "container" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts/container"], "Container")).toString : H5Li(["list-group-item active"], "Container").toString);
          items ~= (selected != "grid" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts/grid"], "Grid")).toString : H5Li(["list-group-item active"], "Grid").toString);
          items ~= (selected != "components" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/layouts/gutters"], "Gutters")).toString : H5Li(["list-group-item active"], "Gutters").toString);
          break;
        case "contents":
            items ~= (selected != "figures" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/figures"], "Figures")).toString : H5Li(["list-group-item active"], "Figures").toString);
            items ~= (selected != "images" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/images"], "Images")).toString : H5Li(["list-group-item active"], "Images").toString);
            items ~= (selected != "tables" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/tables"], "Tables")).toString : H5Li(["list-group-item active"], "Tables").toString);
            items ~= (selected != "typography" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/contents/typography"], "Typography")).toString : H5Li(["list-group-item active"], "Typography").toString);
          break;
        case "components":
          items ~= (selected != "accordions" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/accordions"], "Accordions")).toString : H5Li(["list-group-item active"], "Accordions").toString);
          items ~= (selected != "alerts" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/alerts"], "Alerts")).toString : H5Li(["list-group-item active"], "Alerts").toString);
          items ~= (selected != "badges" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/badges"], "Badges")).toString : H5Li(["list-group-item active"], "Badges").toString);
          items ~= (selected != "breadcrumbs" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/breadcrumbs"], "Breadcrumbs")).toString : H5Li(["list-group-item active"], "Breadcrumbs").toString);
          items ~= (selected != "buttongroups" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/buttongroups"], "Button Groups")).toString : H5Li(["list-group-item active"], "Button Groups").toString);
          items ~= (selected != "buttons" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/buttons"], "Buttons")).toString : H5Li(["list-group-item active"], "Buttons").toString);
          items ~= (selected != "cards" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/cards"], "Cards")).toString : H5Li(["list-group-item active"], "Cards").toString);
          items ~= (selected != "carousels" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/carousels"], "Carousels")).toString : H5Li(["list-group-item active"], "Carousels").toString);
          items ~= (selected != "closebuttons" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/closebuttons"], "Close Buttons")).toString : H5Li(["list-group-item active"], "Close Buttons").toString);
          items ~= (selected != "collapses" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/collapses"], "Collapses")).toString : H5Li(["list-group-item active"], "Collapses").toString);
          items ~= (selected != "dropdowns" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/dropdowns"], "Dropdowns")).toString : H5Li(["list-group-item active"], "Dropdowns").toString);
          items ~= (selected != "listgroups" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/listgroups"], "List Groups")).toString : H5Li(["list-group-item active"], "List Groups").toString);
          items ~= (selected != "modals" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/modals"], "Modals")).toString : H5Li(["list-group-item active"], "Modals").toString);
          items ~= (selected != "navbars" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/navbars"], "Navbars")).toString : H5Li(["list-group-item active"], "Navbars").toString);
          items ~= (selected != "navs" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/navs"], "Navs")).toString : H5Li(["list-group-item active"], "Navs").toString);
          items ~= (selected != "paginations" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/paginations"], "Paginations")).toString : H5Li(["list-group-item active"], "Paginations").toString);
          items ~= (selected != "popovers" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/popovers"], "Popovers")).toString : H5Li(["list-group-item active"], "Popovers").toString);
          items ~= (selected != "progresses" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/progresses"], "Progresses")).toString : H5Li(["list-group-item active"], "Progresses").toString);
          items ~= (selected != "scrollspies" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/scrollspies"], "Scrollspies")).toString : H5Li(["list-group-item active"], "Scrollspies").toString);
          items ~= (selected != "spinners" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/spinners"], "Spinners")).toString : H5Li(["list-group-item active"], "Spinners").toString);
          items ~= (selected != "toasts" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/toasts"], "Toasts")).toString : H5Li(["list-group-item active"], "Toasts").toString);
          items ~= (selected != "tooltips" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/components/tooltips"], "Tooltips")).toString : H5Li(["list-group-item active"], "Tooltips").toString);
          break;
        case "helpers":
          items ~= (selected != "clearfix" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/clearfix"], "Clearfix")).toString : H5Li(["list-group-item active"], "Clearfix").toString);
          items ~= (selected != "coloredlinks" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/coloredlinks"], "Colored Links")).toString : H5Li(["list-group-item active"], "Colored Links").toString);
          items ~= (selected != "positionhelpers" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/positionhelpers"], "Position Helpers")).toString : H5Li(["list-group-item active"], "Position Helpers").toString);
          items ~= (selected != "ratio" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/ratio"], "Ratio")).toString : H5Li(["list-group-item active"], "Ratio").toString);
          items ~= (selected != "stretchedlink" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/stretchedlink"], "Stretched Link")).toString : H5Li(["list-group-item active"], "Stretched Link").toString);
          items ~= (selected != "texttruncation" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/texttruncation"], "Text Truncation")).toString : H5Li(["list-group-item active"], "Text Truncation").toString);
          items ~= (selected != "visuallyhidden" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/helpers/visuallyhidden"], "Visually Hidden")).toString : H5Li(["list-group-item active"], "Visually Hidden").toString);
          break;
        case "utilities":
          items ~= (selected != "borders" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/borders"], "Borders")).toString : H5Li(["list-group-item active"], "Borders").toString);
          items ~= (selected != "colors" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/colors"], "Colors")).toString : H5Li(["list-group-item active"], "Colors").toString);
          items ~= (selected != "display" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/display"], "Display")).toString : H5Li(["list-group-item active"], "Display").toString);
          items ~= (selected != "flex" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/flex"], "Flex")).toString : H5Li(["list-group-item active"], "Flex").toString);
          items ~= (selected != "float" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/float"], "Float")).toString : H5Li(["list-group-item active"], "Float").toString);
          items ~= (selected != "interactions" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/interactions"], "Interactions")).toString : H5Li(["list-group-item active"], "Interactions").toString);
          items ~= (selected != "overflow" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/overflow"], "Overflow")).toString : H5Li(["list-group-item active"], "Overflow").toString);
          items ~= (selected != "positionutilities" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/positionutilities"], "Position Utilities")).toString : H5Li(["list-group-item active"], "Position Utilities").toString);
          items ~= (selected != "shadows" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/shadows"], "Shadows")).toString : H5Li(["list-group-item active"], "Shadows").toString);
          items ~= (selected != "colsizingumns" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/sizing"], "Sizing")).toString : H5Li(["list-group-item active"], "Sizing").toString);
          items ~= (selected != "text" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/text"], "Text")).toString : H5Li(["list-group-item active"], "Text").toString);
          items ~= (selected != "verticalalign" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/verticalalign"], "Vertical Align")).toString : H5Li(["list-group-item active"], "Vertical Align").toString);
          items ~= (selected != "visibility" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/utilities/visibility"], "Visibility")).toString : H5Li(["list-group-item active"], "Visibility").toString);
          break;
        case "forms":
          items ~= (selected != "checks_radios" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/checks_radios"], "Checkboxes and Radios")).toString : H5Li(["list-group-item active"], "Checkboxes and Radios").toString);
          items ~= (selected != "floatinglabels" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/floatinglabels"], "Floating Labels")).toString : H5Li(["list-group-item active"], "Floating Labels").toString);
          items ~= (selected != "formcontrol" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/formcontrol"], "Form Control")).toString : H5Li(["list-group-item active"], "Form Control").toString);
          items ~= (selected != "inputgroup" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/inputgroup"], "Input Group")).toString : H5Li(["list-group-item active"], "Input Group").toString);
          items ~= (selected != "layout" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/layout"], "Layout")).toString : H5Li(["list-group-item active"], "Layout").toString);
          items ~= (selected != "overview" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/overview"], "Overview")).toString : H5Li(["list-group-item active"], "Overview").toString);
          items ~= (selected != "overflow" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/overflow"], "Overflow")).toString : H5Li(["list-group-item active"], "Overflow").toString);
          items ~= (selected != "range" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/range"], "Range")).toString : H5Li(["list-group-item active"], "Range").toString);
          items ~= (selected != "select" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/select"], "Select")).toString : H5Li(["list-group-item active"], "Select").toString);
          items ~= (selected != "validation" ? H5Li(["list-group-item"], H5A(["href":"/demos/uim-bootstrap/5/basic/forms/validation"], "Validation")).toString : H5Li(["list-group-item active"], "Validation").toString);
          break;
        default: break;
      }
      break;
    case "complex":
      break;
    case "examples":
      break;
    default: break;
  }

  return 
    H5Div(["mb-5"],
      H5H3(["text-muted"], "Sections"), 
      H5Ul(["list-group"], items));
} 
