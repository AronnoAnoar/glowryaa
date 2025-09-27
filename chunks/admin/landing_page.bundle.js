(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/landing_page"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
/* harmony default export */ __webpack_exports__["default"] = ({
  created: function created() {
    this.getLandingPages();
  },
  data: function data() {
    return {
      landing_pages: ""
    };
  },
  methods: {
    getLandingPages: function getLandingPages() {
      var _this = this;

      axios.get("/api/get/landing/pages").then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this.landing_pages = resp.data.landing_pages;
        }
      });
    },
    status: function status(page) {
      var _this2 = this;

      axios.get("/api/page/status/" + page).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this2.getLandingPages();

          _this2.$toasted.show(resp.data.message, {
            type: "success",
            position: "top-center",
            duration: 3000
          });
        }
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=template&id=cba6e5b2&":
/*!***********************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=template&id=cba6e5b2& ***!
  \***********************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    [
      _c("admin-main"),
      _vm._v(" "),
      _c("div", { staticClass: "content-wrapper" }, [
        _c("section", { staticClass: "content-header" }, [
          _c(
            "h1",
            [
              _c(
                "router-link",
                {
                  staticClass: "btn btn-primary",
                  attrs: { to: { name: "landing_page_add" } }
                },
                [_c("i", { staticClass: "fa fa-plus" })]
              )
            ],
            1
          ),
          _vm._v(" "),
          _vm._m(0)
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "container" }, [
          _c("div", { staticClass: "row" }, [
            _c("div", { staticClass: "col-lg-12 col-md-12 col-sm-12" }, [
              _c("div", { staticClass: "box box-primary" }, [
                _vm._m(1),
                _vm._v(" "),
                _c("div", { staticClass: "box-body" }, [
                  _c(
                    "table",
                    {
                      staticClass:
                        "table table-bordered table-hover table-centered table-striped"
                    },
                    [
                      _vm._m(2),
                      _vm._v(" "),
                      _c(
                        "tbody",
                        _vm._l(_vm.landing_pages, function(page, index) {
                          return _c("tr", { key: index }, [
                            _c("td", { attrs: { scope: "row" } }, [
                              _vm._v(_vm._s(index + 1))
                            ]),
                            _vm._v(" "),
                            _c(
                              "td",
                              [
                                _c(
                                  "router-link",
                                  {
                                    attrs: {
                                      to: {
                                        name: "landing_page_others_section",
                                        params: { slug: page.page_slug }
                                      }
                                    }
                                  },
                                  [
                                    _vm._v(
                                      "\n                          " +
                                        _vm._s(page.page_name) +
                                        "\n                        "
                                    )
                                  ]
                                )
                              ],
                              1
                            ),
                            _vm._v(" "),
                            _c("td", [
                              page.status == 1
                                ? _c(
                                    "span",
                                    { staticClass: "badge badge-success" },
                                    [
                                      _vm._v(
                                        "\n                          Active\n                        "
                                      )
                                    ]
                                  )
                                : _c(
                                    "span",
                                    { staticClass: "badge badge-success" },
                                    [
                                      _vm._v(
                                        "\n                          De-Active\n                        "
                                      )
                                    ]
                                  )
                            ]),
                            _vm._v(" "),
                            _c("td", [
                              _c(
                                "a",
                                {
                                  attrs: {
                                    href: "/pages/" + page.page_slug,
                                    target: "__blank"
                                  }
                                },
                                [_vm._v(" " + _vm._s(page.page_slug) + "  ")]
                              )
                            ]),
                            _vm._v(" "),
                            _c(
                              "td",
                              [
                                _c(
                                  "router-link",
                                  {
                                    staticClass: "btn btn-success btn-sm",
                                    attrs: {
                                      to: {
                                        name: "landing_page_edit",
                                        params: { id: page.id }
                                      }
                                    }
                                  },
                                  [_c("i", { staticClass: "fa fa-edit" })]
                                ),
                                _vm._v(" "),
                                page.status == 1
                                  ? _c(
                                      "a",
                                      {
                                        staticClass: "btn btn-warning",
                                        attrs: { title: "De-active" },
                                        on: {
                                          click: function($event) {
                                            $event.preventDefault()
                                            return _vm.status(page.id)
                                          }
                                        }
                                      },
                                      [_c("i", { staticClass: "fa fa-ban" })]
                                    )
                                  : _c(
                                      "a",
                                      {
                                        staticClass: "btn btn-primary",
                                        attrs: { title: "active" },
                                        on: {
                                          click: function($event) {
                                            $event.preventDefault()
                                            return _vm.status(page.id)
                                          }
                                        }
                                      },
                                      [_c("i", { staticClass: "fa fa-check" })]
                                    )
                              ],
                              1
                            )
                          ])
                        }),
                        0
                      )
                    ]
                  )
                ])
              ])
            ])
          ])
        ])
      ])
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("ol", { staticClass: "breadcrumb" }, [
      _c("li", [
        _c("a", { attrs: { href: "#" } }, [
          _c("i", { staticClass: "fa fa-dashboard" }),
          _vm._v("Dashboard")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("Landing Page ")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [_vm._v("Landing page Table")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { attrs: { scope: "col" } }, [_vm._v("#")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Name")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Status")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Link")]),
        _vm._v(" "),
        _c("th", { attrs: { scope: "col" } }, [_vm._v("Action")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Index.vue":
/*!**********************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Index.vue ***!
  \**********************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Index_vue_vue_type_template_id_cba6e5b2___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Index.vue?vue&type=template&id=cba6e5b2& */ "./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=template&id=cba6e5b2&");
/* harmony import */ var _Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Index.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Index_vue_vue_type_template_id_cba6e5b2___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Index_vue_vue_type_template_id_cba6e5b2___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/landing_page/Index.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=script&lang=js&":
/*!***********************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Index.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=template&id=cba6e5b2&":
/*!*****************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=template&id=cba6e5b2& ***!
  \*****************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_cba6e5b2___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Index.vue?vue&type=template&id=cba6e5b2& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/landing_page/Index.vue?vue&type=template&id=cba6e5b2&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_cba6e5b2___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Index_vue_vue_type_template_id_cba6e5b2___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);