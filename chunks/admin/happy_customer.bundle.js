(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/happy-customer"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony default export */ __webpack_exports__["default"] = ({
  created: function created() {
    this.getCustomers();
  },
  data: function data() {
    return {
      customers: {},
      loading: true,
      basePath: this.$store.state.image_base_link
    };
  },
  methods: {
    getCustomers: function getCustomers() {
      var _this = this;
      axios.get('/list/happy-customer').then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          _this.customers = resp.data.customers;
          _this.loading = false;
        }
      });
    },
    active: function active(customer) {
      var _this2 = this;
      axios.get('/active/happy-customer/' + customer.id).then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          _this2.getCustomers();
          _this2.$toasted.show(resp.data.message, { type: 'success' });
        }
      });
    },
    deActive: function deActive(customer) {
        var _this3 = this;
        axios.get('/deActive/happy-customer/' + customer.id).then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
            _this3.getCustomers();
            _this3.$toasted.show(resp.data.message, { type: 'success' });
        }
        });
    },
    destroy: function destroy(customer) {
      var _this4 = this;
       Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then(function (result) {
        if (result.value) {
            axios.get('/delete/happy-customer/' + customer.id).then(function (resp) {
                if (resp.data.status == 'SUCCESS') {
                _this4.getCustomers();
                _this4.$toasted.show(resp.data.message, { type: 'success' });
                }
            });
        }
      });
    },
    getPagination: function getPagination() {
      var _this5 = this;
      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;
      axios.get('/list/happy-customer?page=' + page).then(function (response) {
        _this5.customers = response.data.customers;
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=template&id=1b2c3d4e&":
/*!***************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=template&id=1b2c3d4e& ***!
  \***************************************************************************************************************************************************************************************************************************************/
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
  return _c( "div", [ _c("admin-main"), _vm._v(" "), _c("div", { staticClass: "content-wrapper" }, [ _c("section", { staticClass: "content-header" }, [ _c( "h1", [ _c( "router-link", { staticClass: "btn btn-primary", attrs: { to: { name: "happyCustomerAdd" } } }, [ _c("i", { staticClass: "fa fa-plus" }), _vm._v(" Add Customer") ] ) ], 1 ), _vm._v(" "), _vm._m(0) ]), _vm._v(" "), _c("section", { staticClass: "content" }, [ _c("div", { staticClass: "row justify-content-center" }, [ _c("div", { staticClass: "col-lg-8 col-lg-offset-2" }, [ _c("div", { staticClass: "box box-primary" }, [ _vm._m(1), _vm._v(" "), _c("div", { staticClass: "box-body" }, [ _c( "table", { staticClass: "table table-striped table-bordered" }, [ _vm._m(2), _vm._v(" "), _c( "tbody", [ _vm.loading ? _c("h1", [ _c("i", { staticClass: "fa fa-spin fa-spinner" }) ]) : _vm._l(_vm.customers.data, function( customer, index ) { return _c("tr", { key: index }, [ _c("td", [_vm._v(_vm._s(index + 1))]), _vm._v(" "), _c("td", [ _c("img", { staticStyle: { width: "80px", height: "80px" }, attrs: { src: _vm.basePath + customer.image } }) ]), _vm._v(" "), _c("td", [_vm._v(_vm._s(customer.alt_text))]), _vm._v(" "), _c("td", [ customer.status == 1 ? _c("span", { staticClass: "badge" }, [_vm._v("Active")]) : _c( "span", { staticClass: "badge" }, [_vm._v("De-active")] ) ]), _vm._v(" "), _c("td", [_vm._v(_vm._s(customer.order))]), _vm._v(" "), _c( "td", [ _c( "router-link", { staticClass: "btn btn-sm btn-success", attrs: { to: { name: "happyCustomerEdit", params: { id: customer.id } } } }, [_c("i", { staticClass: "fa fa-edit" })] ), _vm._v(" "), _c( "a", { staticClass: "btn btn-sm btn-danger", on: { click: function($event) { return _vm.destroy(customer) } } }, [_c("i", { staticClass: "fa fa-trash" })] ), _vm._v(" "), customer.status == 1 ? _c( "a", { staticClass: "btn btn-sm btn-warning", on: { click: function($event) { return _vm.deActive( customer ) } } }, [_c("i", { staticClass: "fa fa-ban" })] ) : _c( "a", { staticClass: "btn btn-sm btn-primary", on: { click: function($event) { return _vm.active(customer) } } }, [_c("i", { staticClass: "fa fa-check" })] ) ], 1 ) ]) }) ], 2 ) ] ) ]), _vm._v(" "), _c("div", { staticClass: "box-footer" }, [ _c( "div", { staticClass: "row" }, [ _c( "div", { staticClass: "col-lg-6" }, [ _c("pagination", { attrs: { data: _vm.customers }, on: { "pagination-change-page": _vm.getPagination } }) ], 1 ), _vm._v(" "), _c( "div", { staticClass: "col-lg-6 mt-1", staticStyle: { "margin-top": "25px", "text-align": "right" } }, [ _c("p", [ _vm._v("Showing "), _c("strong", [_vm._v(_vm._s(_vm.customers.from))]), _vm._v(" to "), _c("strong", [_vm._v(_vm._s(_vm.customers.to))]), _vm._v(" of total "), _c("strong", [_vm._v(_vm._s(_vm.customers.total))]), _vm._v(" entries") ]) ] ) ]) ]) ]) ]) ]) ]) ]) ], 1 ) }
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("ol", { staticClass: "breadcrumb" }, [
      _c("li", [
        _c("a", { attrs: { href: "#" } }, [
          _c("i", { staticClass: "fa fa-dashboard" }),
          _vm._v(" Dashboard")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("Happy Customers")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border text-center" }, [
      _c("h3", { staticClass: "box-title" }, [_vm._v("Happy Customers")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("#")]),
        _c("th", [_vm._v("Image")]),
        _c("th", [_vm._v("Alt Text")]),
        _c("th", [_vm._v("Status")]),
        _c("th", [_vm._v("Order")]),
        _c("th", [_vm._v("Action")]),
      ])
    ])
  }
]
render._withStripped = true
/***/ }),

/***/ "./resources/microadmin/components/admin/customer/HappyCustomer.vue":
/*!**************************************************************************!*\
!*** ./resources/microadmin/components/admin/customer/HappyCustomer.vue ***!
\**************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {
"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _HappyCustomer_vue_vue_type_template_id_1b2c3d4e___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./HappyCustomer.vue?vue&type=template&id=1b2c3d4e& */ "./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=template&id=1b2c3d4e&");
/* harmony import */ var _HappyCustomer_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./HappyCustomer.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");
var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(_HappyCustomer_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],_HappyCustomer_vue_vue_type_template_id_1b2c3d4e___WEBPACK_IMPORTED_MODULE_0__["render"],_HappyCustomer_vue_vue_type_template_id_1b2c3d4e___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],false,null,null,null)
component.options.__file = "resources/microadmin/components/admin/customer/HappyCustomer.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);
/***/ }),

/***/ "./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************!*\
!*** ./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=script&lang=js& ***!
\***************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {
"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_HappyCustomer_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./HappyCustomer.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_HappyCustomer_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]);
/***/ }),

/***/ "./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=template&id=1b2c3d4e&":
/*!*********************************************************************************************************!*\
!*** ./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=template&id=1b2c3d4e& ***!
\*********************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {
"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HappyCustomer_vue_vue_type_template_id_1b2c3d4e___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./HappyCustomer.vue?vue&type=template&id=1b2c3d4e& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/customer/HappyCustomer.vue?vue&type=template&id=1b2c3d4e&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HappyCustomer_vue_vue_type_template_id_1b2c3d4e___WEBPACK_IMPORTED_MODULE_0__["render"]; });
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_HappyCustomer_vue_vue_type_template_id_1b2c3d4e___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });
/***/ })
}]);