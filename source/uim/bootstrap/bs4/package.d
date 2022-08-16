module uim.bootstrap.bs4;

@safe: 
import uim.bootstrap;

public import uim.bootstrap.bs4.apps;
public import uim.bootstrap.bs4.obj;
public import uim.bootstrap.bs4.mixins;
public import uim.bootstrap.bs4.layout;
public import uim.bootstrap.bs4.components;
public import uim.bootstrap.bs4.utilities;
public import uim.bootstrap.bs4.content;
public import uim.bootstrap.bs4.css;
public import uim.bootstrap.bs4.tables;

class DBS4 : DH5 {
  this() {
      super();
  }

  /// Adding an alert component
  mixin(BS4Def!"alert");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.alert, `<div class="alert" role="alert"></div>`);
  }

  /// Adding a badge component
  mixin(BS4Def!"badge");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.badge, `<span class="badge"></span>`);
  }

  /// Adding a breadcrumb
  mixin(BS4Def!"breadcrumb");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.breadcrumb, `<nav aria-label="breadcrumb"></nav>`);
  }

  mixin(BS4Def!"button");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.button, `<button class="btn" type="button"></button>`);
  }

  mixin(BS4Def!"buttonGroup");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.buttonGroup, `<div class="btn-group" role="group"></div>`);
  }

  mixin(BS4Def!"card");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.card, `<div class="card"></div>`);
  }

  mixin(BS4Def!"cardBlock");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.cardBlock, `<div class="card-block"></div>`);
  }

  mixin(BS4Def!"cardBody");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.cardBody, `<div class="card-body"></div>`);
  }

  mixin(BS4Def!"cardFooter");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.cardFooter, `<div class="card-footer"></div>`);
  }

  mixin(BS4Def!"cardHeader");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.cardHeader, `<div class="card-header"></div>`);
  }

  mixin(BS4Def!"cardLink");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.cardLink, `<a class="card-link" href="#"></a>`);
  }

  mixin(BS4Def!"cardText");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.cardText, `<p class="card-text"></p>`);
  }

  mixin(BS4Def!"carousel");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.carousel, `<div class="carousel" data-ride="carousel"></div>`);
  }

  mixin(BS4Def!"carouselInner");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.carouselInner, `<div class="carousel-inner"></div>`);
  }

  mixin(BS4Def!"carouselItem");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.carouselItem, `<div class="carousel-item"></div>`);
  }

  mixin(BS4Def!"dropdown");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.dropdown, `<div class="dropdown"></div>`);
  }

  mixin(BS4Def!"form");
  version(test_uim_bootstrap) { unittest {
    assert(BS4.form == "<form></form>");
  }

  mixin(BS4Def!"formGroup");
  version(test_uim_bootstrap) { unittest {
    assert(BS4.formGroup, `<div class="form-group"></div>`);
  }

  mixin(BS4Def!"inputGroup");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.inputGroup, `<div class="input-group"></div>`);
  }

  mixin(BS4Def!"jumbotron");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.jumbotron, `<div class="jumbotron"></div>`);
  }

  mixin(BS4Def!"list");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.list, `<ul class="list-group"></ul>`);
  }

  mixin(BS4Def!"modal");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.modal, `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
  }

  mixin(BS4Def!"modalBody");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.modalBody, `<div class="modal-body"></div>`);
  }

  mixin(BS4Def!"modalContent");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.modalContent, `<div class="modal-content"></div>`);
  }

  mixin(BS4Def!"modalDialog");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.modalDialog, `<div class="modal-dialog" role="document"></div>`);
  }

  mixin(BS4Def!"modalFooter");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.modalFooter, `<div class="modal-footer"></div>`);
  }

  mixin(BS4Def!"modalHeader");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.modalHeader, `<div class="modal-header"></div>`);
  }

  mixin(BS4Def!"nav");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.nav, `<ul class="nav"></ul>`);
  }

  mixin(BS4Def!"navbar");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.navbar, `<nav class="navbar"></nav>`);
  }

  mixin(BS4Def!"pagination");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.pagination, `<ul class="pagination"></ul>`);
  }

  mixin(BS4Def!"pageItem");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.pageItem, `<li class="page-item"></li>`);
  }

  mixin(BS4Def!"pageLink");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.pageLink, `<a class="page-link" href="#"></a>`);
  }

  mixin(BS4Def!"progress");
  version(test_uim_bootstrap) { unittest {
      assert(BS4.progress, `<div class="progress"></div>`);
  }

  mixin(BS4Def!"progressBar");
  unittest{
      assert(BS4.progressBar, `<div class="progress-bar" role="progressbar"></div>`);
  }
}

auto BS4() {
    return new DBS4();
}

template BS4Def(string name) {
    const char[] leftName = (name.length == 1 ? name.toLower : name.toLower[0] ~ name[1 .. $]);
    const char[] rightName = (name.length == 1 ? name.capitalize : name.capitalize[0] ~ name[1 .. $]);

    const char[] BS4Def = "
O " ~ leftName ~ "(this O)(string content) { this._objs ~=  BS4"
        ~ rightName ~ "(content); return cast(O)this; }
O " ~ leftName
        ~ "(this O)(DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName
        ~ "(content); return cast(O)this; }
O " ~ leftName ~ "(this O)(DH5 content) { this._objs ~=  BS4"
        ~ rightName ~ "(content); return cast(O)this; }

O " ~ leftName
        ~ "(this O)(string id, string content) { this._objs ~=  BS4" ~ rightName ~ "(id, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(id, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(id, content); return cast(O)this; }

O " ~ leftName ~ "(this O)(string id, string[] classes) { this._objs ~=  BS4" ~ rightName ~ "(id, classes); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[] classes, string content) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[] classes, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[] classes, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, content); return cast(O)this; }

O " ~ leftName ~ "(this O)(string[] classes) { this._objs ~=  BS4" ~ rightName ~ "(classes); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[] classes, string content) { this._objs ~=  BS4" ~ rightName ~ "(classes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[] classes, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(classes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[] classes, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(classes, content); return cast(O)this; }

O " ~ leftName ~ "(this O)(string[string] attributes) { this._objs ~=  BS4" ~ rightName ~ "(attributes); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[string] attributes, string content) { this._objs ~=  BS4" ~ rightName ~ "(attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[string] attributes, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(attributes, content); return cast(O)this; }

O " ~ leftName ~ "(this O)(string id, string[string] attributes) { this._objs ~=  BS4" ~ rightName ~ "(id, attributes); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[string] attributes, string content) { this._objs ~=  BS4" ~ rightName ~ "(id, attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(id, attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[string] attributes, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(id, attributes, content); return cast(O)this; }

O " ~ leftName ~ "(this O)(string id, string[] classes, string[string] attributes) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, attributes); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[] classes, string[string] attributes, string content) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[] classes, string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string id, string[] classes, string[string] attributes, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(id, classes, attributes, content); return cast(O)this; }

O " ~ leftName ~ "(this O)(string[] classes, string[string] attributes) { this._objs ~=  BS4" ~ rightName ~ "(classes, attributes); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[] classes, string[string] attributes, string content) { this._objs ~=  BS4" ~ rightName ~ "(classes, attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[] classes, string[string] attributes, DH5Obj[] content...) { this._objs ~=  BS4" ~ rightName ~ "(classes, attributes, content); return cast(O)this; }
O " ~ leftName ~ "(this O)(string[] classes, string[string] attributes, DH5 content) { this._objs ~=  BS4" ~ rightName ~ "(classes, attributes, content); return cast(O)this; }
 ";
}
