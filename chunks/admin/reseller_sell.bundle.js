(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/reseller_sell"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/regenerator */ "./node_modules/@babel/runtime/regenerator/index.js");
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! vform */ "./node_modules/vform/dist/vform.common.js");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(vform__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! vue-bootstrap-datetimepicker */ "./node_modules/vue-bootstrap-datetimepicker/dist/vue-bootstrap-datetimepicker.js");
/* harmony import */ var vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_3__);


function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }

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



vue__WEBPACK_IMPORTED_MODULE_1___default.a.component(vform__WEBPACK_IMPORTED_MODULE_2__["HasError"].name, vform__WEBPACK_IMPORTED_MODULE_2__["HasError"]);
/* harmony default export */ __webpack_exports__["default"] = ({
  created: function created() {
    this.getResellerList();
    this.balanceList();
  },
  data: function data() {
    return {
      //form submit data
      form: new vform__WEBPACK_IMPORTED_MODULE_2__["Form"]({
        sale_type: 1,
        name: '',
        mobile_no: '',
        address: '',
        //multiple product data
        products: [],
        total: 0,
        paid: 0,
        discount: 0,
        due: 0,
        reseller_id: '',
        paid_by: 'Cash',
        partials_paid_by: '',
        partials_payment_amount: 0
      }),
      balance: '',
      resellers: '',
      error: '',
      productItems: '',
      autoComplete: false,
      search: '',
      search_reseller: '',
      submitValidation: true,
      preview_products: {
        product_name: '',
        product_id: '',
        product_code: '',
        price: '',
        quantity: '',
        total: ''
      }
    };
  },
  methods: {
    balanceList: function balanceList() {
      var _this = this;

      axios.get('/api/balance/list').then(function (resp) {
        _this.balance = resp.data.balance;
      });
    },
    partialsPayment: function partialsPayment() {
      var _this2 = this;

      var inputOptions = {};
      this.balance.forEach(function (ele) {
        if (ele.name != _this2.form.paid_by) {
          inputOptions[ele.name] = ele.name;
        }
      });
      Swal.fire({
        title: 'Partials Payment',
        input: 'select',
        inputOptions: inputOptions,
        showCancelButton: true
      }).then(function (result) {
        if (result.value) {
          Swal.fire({
            title: 'Amount',
            input: 'number',
            showCancelButton: false
          }).then(function (amount) {
            if (amount.value) {
              _this2.$toasted.show("partials payment.".concat(result.value, " : ").concat(amount.value), {
                type: 'info',
                position: 'top-center',
                duration: 4000
              });

              _this2.form.partials_paid_by = result.value;
              _this2.form.partials_payment_amount = amount.value;
              console.log(_typeof(amount.value));
              _this2.form.paid = parseInt(amount.value) + parseInt(_this2.form.paid);
              _this2.form.due = parseInt(_this2.form.total) - (parseInt(_this2.form.paid) + parseInt(_this2.form.discount));
            }
          });
        }
      });
    },
    //method initial for add sale
    addResellerSale: function addResellerSale() {
      var _this3 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                if (!(_this3.form.paid <= _this3.form.total)) {
                  _context.next = 4;
                  break;
                }

                _this3.$Progress.start();

                _context.next = 4;
                return _this3.form.post('/api/reseller/sale/store').then(function (resp) {
                  console.log(resp);

                  if (resp.data.status == 'SUCCESS') {
                    // this.$router.push({
                    //     name: 'ViewSale',
                    //     params: { id: resp.data.sale_id },
                    // });
                    window.history.back();

                    _this3.$toasted.show(resp.data.message, {
                      type: 'success',
                      position: 'top-center',
                      duration: 4000
                    });
                  }

                  _this3.$Progress.finish();
                })["catch"](function (error) {
                  _this3.$toasted.show(error.response.data.message, {
                    type: 'success',
                    position: 'top-center',
                    duration: 4000
                  });
                });

              case 4:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    searchReseller: function searchReseller() {
      if (this.search_reseller.length > 2) {
        this.getResellerList();
      } else {
        this.getResellerList();
      }
    },
    getResellerList: function getResellerList() {
      var _this4 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee2() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _context2.next = 2;
                return axios.get('/api/get/all/resellers', {
                  params: {
                    search: _this4.search_reseller
                  }
                }).then(function (resp) {
                  if (resp.data.success == true) {
                    _this4.resellers = resp.data.resellers;
                  }
                });

              case 2:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2);
      }))();
    },
    //method initial for get product data when admin type product code or name
    autocompleteSearch: function autocompleteSearch() {
      var _this5 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee3() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee3$(_context3) {
          while (1) {
            switch (_context3.prev = _context3.next) {
              case 0:
                if (!(_this5.search.length >= 3)) {
                  _context3.next = 3;
                  break;
                }

                _context3.next = 3;
                return axios.get('/search/product/' + _this5.search).then(function (resp) {
                  console.log(resp);

                  if (resp.data.status == 'SUCCESS') {
                    if (resp.data.products.data.length) {
                      _this5.productItems = resp.data.products.data;
                      _this5.autoComplete = true;
                    } else {
                      _this5.$toasted.show('no product found', {
                        type: 'error',
                        position: 'top-center',
                        duration: 4000
                      });

                      _this5.productItems = '';
                    }
                  }
                });

              case 3:
              case "end":
                return _context3.stop();
            }
          }
        }, _callee3);
      }))();
    },
    //method initial for set product item when admin select specific product item
    selectedProduct: function selectedProduct(productItem) {
      this.autoComplete = false;
      this.preview_products.product_name = productItem.name;
      this.preview_products.price = productItem.reselling_price;
      this.preview_products.quantity = 1;
      this.preview_products.product_id = productItem.id;
      this.preview_products.product_code = productItem.product_code;
      this.search = productItem.product_code + '-' + productItem.name;
      this.total();
    },
    //method initial for calculate sub total  amount, product  price*quantity
    total: function total() {
      if (this.preview_products.price.length <= 0) {
        this.$toasted.show('sorry! price filed fille up first', {
          type: 'error',
          position: 'top-center',
          duration: 3000
        });
        this.$refs.price.focus();
        return;
      } else {
        var price = this.preview_products.price;
        var quantity = this.preview_products.quantity;

        if (quantity <= 1) {
          quantity = 1;
        }

        var total = price * quantity;
        this.preview_products.total = total;
      }
    },
    //method initial for product add on form
    productAdd: function productAdd() {
      if (this.preview_products.price.length <= 0) {
        alert('price is empty');
        return;
      }

      if (this.preview_products.product_id.length <= 0) {
        alert('product id is empty');
        return;
      }

      if (this.preview_products.product_code.length <= 0) {
        alert('product code is empty');
        return;
      }

      this.form.products.push(this.preview_products);
      this.preview_products = {
        product_id: '',
        product_code: '',
        product_name: '',
        price: '',
        total: '',
        quantity: ''
      };
      this.search = '';
      this.totalAmount();
      this.amountDue();
      this.finalValidation();
    },
    //method initial for validation product data
    finalValidation: function finalValidation() {
      if (this.form.products.length <= 0) {
        this.submitValidation = true;
        return;
      }

      if (this.form.reseller_id.length <= 0) {
        this.submitValidation = true;
        return;
      }

      this.submitValidation = false;
    },
    totalAmount: function totalAmount() {
      var i = 0;
      var total = 0;
      var products = this.form.products;

      for (i; i < products.length; i++) {
        total += products[i].price * products[i].quantity;
      }

      this.form.total = total;
      this.form.paid = total;
      this.form.due = total - (parseInt(this.form.paid) + parseInt(this.form.discount));
    },
    amountDue: function amountDue() {
      var paid = this.form.paid;
      var total = this.form.total;
      var due = parseInt(total) - (parseInt(paid) + parseInt(this.form.discount));
      this.form.due = due;
    },
    cancel: function cancel(index) {
      this.form.products.splice(index, 1);
      this.totalAmount();
      this.amountDue();
      this.finalValidation();
    },
    pDate: function pDate() {
      var d = new Date();
      var month = d.getMonth() + 1;
      var day = d.getDate();
      var output = d.getFullYear() + '-' + (('' + month).length < 2 ? '0' : '') + month + '-' + (('' + day).length < 2 ? '0' : '') + day;
      this.purchase_date = output;
    }
  },
  components: {
    datePicker: vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_3___default.a
  }
}); //Date picker

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.mb-2[data-v-c6542042] {\r\n    margin-bottom: 5px !important;\n}\n.autocomplete[data-v-c6542042] {\r\n    max-height: 120px;\r\n    overflow-y: scroll;\r\n    position: absolute;\r\n    width: 100%;\r\n    z-index: 454;\n}\n.autocomplete li[data-v-c6542042]:hover {\r\n    background: #222d32;\r\n    color: #ffffff;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=template&id=c6542042&scoped=true&":
/*!*************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=template&id=c6542042&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************/
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
                  attrs: { to: { name: "officeSale" } }
                },
                [_c("i", { staticClass: "fa fa-arrow-left" })]
              )
            ],
            1
          ),
          _vm._v(" "),
          _vm._m(0)
        ]),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "row justify-content-center" }, [
            _c("div", { staticClass: "col-lg-12" }, [
              _c("div", { staticClass: "box box-primary" }, [
                _c(
                  "div",
                  { staticClass: "box-header with-border text-center" },
                  [
                    _c("h3", { staticClass: "box-title" }, [
                      _vm._v("Add Reseller Sale")
                    ]),
                    _vm._v(" "),
                    _c(
                      "router-link",
                      {
                        staticClass: "btn btn-success",
                        staticStyle: { "margin-left": "25px" },
                        attrs: { to: { name: "resellerAdd" } }
                      },
                      [_vm._v("add new Reseller\n                            ")]
                    )
                  ],
                  1
                ),
                _vm._v(" "),
                _c("div", { staticClass: "box-body" }, [
                  _vm.error
                    ? _c("div", { staticClass: "alert-danger alert" }, [
                        _vm._v(_vm._s(_vm.error))
                      ])
                    : _vm._e(),
                  _vm._v(" "),
                  _c("div", { staticClass: "product_information" }, [
                    _c("div", { staticClass: "row" }, [
                      _c("div", { staticClass: "col-lg-6" }, [
                        _c("div", { staticClass: "form-group" }, [
                          _c("label", [_vm._v("Reseller")]),
                          _vm._v(" "),
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.form.reseller_id,
                                  expression: "form.reseller_id"
                                }
                              ],
                              staticClass: "form-control",
                              on: {
                                change: [
                                  function($event) {
                                    var $$selectedVal = Array.prototype.filter
                                      .call($event.target.options, function(o) {
                                        return o.selected
                                      })
                                      .map(function(o) {
                                        var val =
                                          "_value" in o ? o._value : o.value
                                        return val
                                      })
                                    _vm.$set(
                                      _vm.form,
                                      "reseller_id",
                                      $event.target.multiple
                                        ? $$selectedVal
                                        : $$selectedVal[0]
                                    )
                                  },
                                  _vm.finalValidation
                                ]
                              }
                            },
                            [
                              _c(
                                "option",
                                {
                                  attrs: {
                                    value: "",
                                    selected: "",
                                    disabled: ""
                                  }
                                },
                                [
                                  _vm._v(
                                    "\n                                                    Select Reseller\n                                                "
                                  )
                                ]
                              ),
                              _vm._v(" "),
                              _vm._l(_vm.resellers, function(reseller) {
                                return _c(
                                  "option",
                                  {
                                    key: reseller.id,
                                    domProps: { value: reseller.id }
                                  },
                                  [
                                    _vm._v(
                                      "\n                                                    " +
                                        _vm._s(reseller.name) +
                                        " - " +
                                        _vm._s(reseller.phone) +
                                        "\n                                                "
                                    )
                                  ]
                                )
                              })
                            ],
                            2
                          )
                        ])
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "col-lg-6" }, [
                        _c(
                          "div",
                          {
                            staticClass: "form-group",
                            staticStyle: { "margin-top": "25px" }
                          },
                          [
                            _c("input", {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.search_reseller,
                                  expression: "search_reseller"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: {
                                type: "text",
                                placeholder: "search reseller by name or phone "
                              },
                              domProps: { value: _vm.search_reseller },
                              on: {
                                keyup: _vm.searchReseller,
                                input: function($event) {
                                  if ($event.target.composing) {
                                    return
                                  }
                                  _vm.search_reseller = $event.target.value
                                }
                              }
                            })
                          ]
                        )
                      ])
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "row" }, [
                      _c("div", { staticClass: "col-lg-3" }, [
                        _c("div", { staticClass: "form-group" }, [
                          _c("label", [_vm._v("Product Code")]),
                          _vm._v(" "),
                          _c("input", {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.search,
                                expression: "search"
                              }
                            ],
                            staticClass: "form-control",
                            attrs: {
                              type: "text",
                              autocomplete: "off",
                              placeholder: " product code"
                            },
                            domProps: { value: _vm.search },
                            on: {
                              keyup: _vm.autocompleteSearch,
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.search = $event.target.value
                              }
                            }
                          }),
                          _vm._v(" "),
                          _c(
                            "div",
                            {
                              directives: [
                                {
                                  name: "show",
                                  rawName: "v-show",
                                  value: _vm.autoComplete,
                                  expression: "autoComplete"
                                }
                              ],
                              staticClass: "autocomplete"
                            },
                            [
                              _c(
                                "ul",
                                { staticClass: "list-group" },
                                _vm._l(_vm.productItems, function(item) {
                                  return _c(
                                    "li",
                                    {
                                      key: item.id,
                                      staticClass: "list-group-item",
                                      on: {
                                        click: function($event) {
                                          return _vm.selectedProduct(item)
                                        }
                                      }
                                    },
                                    [
                                      _vm._v(
                                        "\n                                                        " +
                                          _vm._s(
                                            item.product_code + "-" + item.name
                                          ) +
                                          "\n                                                    "
                                      )
                                    ]
                                  )
                                }),
                                0
                              )
                            ]
                          )
                        ])
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "col-lg-2" }, [
                        _c("div", { staticClass: "form-group" }, [
                          _c("label", [_vm._v("Price")]),
                          _vm._v(" "),
                          _c("input", {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.preview_products.price,
                                expression: "preview_products.price"
                              }
                            ],
                            staticClass: "form-control",
                            attrs: {
                              type: "number",
                              name: "price",
                              readonly: "",
                              placeholder: "price"
                            },
                            domProps: { value: _vm.preview_products.price },
                            on: {
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.$set(
                                  _vm.preview_products,
                                  "price",
                                  $event.target.value
                                )
                              }
                            }
                          })
                        ])
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "col-lg-2" }, [
                        _c("div", { staticClass: "form-group" }, [
                          _c("label", [_vm._v("Quantity")]),
                          _vm._v(" "),
                          _c("input", {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.preview_products.quantity,
                                expression: "preview_products.quantity"
                              }
                            ],
                            staticClass: "form-control",
                            attrs: {
                              type: "text",
                              name: "quantity",
                              autocomplete: "off",
                              placeholder: "quantity"
                            },
                            domProps: { value: _vm.preview_products.quantity },
                            on: {
                              keyup: _vm.total,
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.$set(
                                  _vm.preview_products,
                                  "quantity",
                                  $event.target.value
                                )
                              }
                            }
                          })
                        ])
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "col-lg-3" }, [
                        _c("div", { staticClass: "form-group" }, [
                          _c("label", [_vm._v("Total")]),
                          _vm._v(" "),
                          _c("input", {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.preview_products.total,
                                expression: "preview_products.total"
                              }
                            ],
                            staticClass: "form-control",
                            attrs: {
                              type: "number",
                              name: "total",
                              placeholder: "total",
                              readonly: ""
                            },
                            domProps: { value: _vm.preview_products.total },
                            on: {
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.$set(
                                  _vm.preview_products,
                                  "total",
                                  $event.target.value
                                )
                              }
                            }
                          })
                        ])
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "col-lg-1" }, [
                        _c(
                          "button",
                          {
                            staticClass: "btn btn-success btn-sm",
                            staticStyle: { "margin-top": "25px" },
                            on: { click: _vm.productAdd }
                          },
                          [
                            _vm._v(
                              "\n                                            Add\n                                        "
                            )
                          ]
                        )
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _vm.form.products.length > 0
                    ? _c("div", { staticClass: "product_preview" }, [
                        _c(
                          "table",
                          {
                            staticClass:
                              "table table-hover table-striped table-bordered"
                          },
                          [
                            _vm._m(1),
                            _vm._v(" "),
                            _c(
                              "tbody",
                              [
                                _vm._l(_vm.form.products, function(
                                  product,
                                  index
                                ) {
                                  return _c("tr", { key: index }, [
                                    _c("td", [_vm._v(_vm._s(index))]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _vm._v(
                                        "\n                                                " +
                                          _vm._s(
                                            product.product_code +
                                              "-" +
                                              product.product_name
                                          ) +
                                          "\n                                            "
                                      )
                                    ]),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(product.price))]),
                                    _vm._v(" "),
                                    _c("td", [
                                      _vm._v(_vm._s(product.quantity))
                                    ]),
                                    _vm._v(" "),
                                    _c("td", [_vm._v(_vm._s(product.total))]),
                                    _vm._v(" "),
                                    _c(
                                      "td",
                                      {
                                        staticClass: "text-danger",
                                        on: {
                                          click: function($event) {
                                            return _vm.cancel(index)
                                          }
                                        }
                                      },
                                      [_c("i", { staticClass: "fa fa-trash" })]
                                    )
                                  ])
                                }),
                                _vm._v(" "),
                                _c("tr", [
                                  _c("td", { attrs: { colspan: "3" } }),
                                  _vm._v(" "),
                                  _c("td", [_vm._v("Total Amount")]),
                                  _vm._v(" "),
                                  _c("td", [_vm._v(_vm._s(this.form.total))])
                                ]),
                                _vm._v(" "),
                                _c("tr", [
                                  _c("td", { attrs: { colspan: "3" } }),
                                  _vm._v(" "),
                                  _c("td", [_vm._v("Paid")]),
                                  _vm._v(" "),
                                  _c("td", [
                                    _c("input", {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.paid,
                                          expression: "form.paid"
                                        }
                                      ],
                                      staticClass: "form-control",
                                      attrs: {
                                        placeholder: "Paid",
                                        readonly: ""
                                      },
                                      domProps: { value: _vm.form.paid },
                                      on: {
                                        keyup: _vm.amountDue,
                                        input: function($event) {
                                          if ($event.target.composing) {
                                            return
                                          }
                                          _vm.$set(
                                            _vm.form,
                                            "paid",
                                            $event.target.value
                                          )
                                        }
                                      }
                                    })
                                  ])
                                ]),
                                _vm._v(" "),
                                _c("tr", [
                                  _c("td", { attrs: { colspan: "3" } }),
                                  _vm._v(" "),
                                  _c("td", [_vm._v("Paid By")]),
                                  _vm._v(" "),
                                  _c("td", [
                                    _c(
                                      "div",
                                      { staticStyle: { display: "flex" } },
                                      [
                                        _c(
                                          "select",
                                          {
                                            directives: [
                                              {
                                                name: "model",
                                                rawName: "v-model",
                                                value: _vm.form.paid_by,
                                                expression: "form.paid_by"
                                              }
                                            ],
                                            staticClass: "form-control",
                                            on: {
                                              change: function($event) {
                                                var $$selectedVal = Array.prototype.filter
                                                  .call(
                                                    $event.target.options,
                                                    function(o) {
                                                      return o.selected
                                                    }
                                                  )
                                                  .map(function(o) {
                                                    var val =
                                                      "_value" in o
                                                        ? o._value
                                                        : o.value
                                                    return val
                                                  })
                                                _vm.$set(
                                                  _vm.form,
                                                  "paid_by",
                                                  $event.target.multiple
                                                    ? $$selectedVal
                                                    : $$selectedVal[0]
                                                )
                                              }
                                            }
                                          },
                                          _vm._l(_vm.balance, function(
                                            balance,
                                            index
                                          ) {
                                            return _c(
                                              "option",
                                              {
                                                key: index,
                                                domProps: {
                                                  value: balance.name
                                                }
                                              },
                                              [
                                                _vm._v(
                                                  "\n                                                            " +
                                                    _vm._s(balance.name) +
                                                    "\n                                                        "
                                                )
                                              ]
                                            )
                                          }),
                                          0
                                        )
                                      ]
                                    )
                                  ])
                                ]),
                                _vm._v(" "),
                                _c("tr", [
                                  _c("td", { attrs: { colspan: "3" } }),
                                  _vm._v(" "),
                                  _c("td", [_vm._v("Amount Due")]),
                                  _vm._v(" "),
                                  _c("td", [_vm._v(_vm._s(_vm.form.due))])
                                ])
                              ],
                              2
                            )
                          ]
                        )
                      ])
                    : _vm._e(),
                  _vm._v(" "),
                  _c("div", { staticClass: "form-group text-center" }, [
                    _c(
                      "button",
                      {
                        staticClass: "btn btn-primary",
                        attrs: {
                          disabled: _vm.submitValidation,
                          type: "submit"
                        },
                        on: { click: _vm.addResellerSale }
                      },
                      [
                        _vm._v(
                          "\n                                    Submit\n                                "
                        )
                      ]
                    )
                  ])
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
          _vm._v("reseller ")
        ])
      ]),
      _vm._v(" "),
      _c("li", { staticClass: "active" }, [_vm._v("Sale")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", [_vm._v("#")]),
        _vm._v(" "),
        _c("th", [_vm._v("Product")]),
        _vm._v(" "),
        _c("th", [_vm._v("price")]),
        _vm._v(" "),
        _c("th", [_vm._v("quantity")]),
        _vm._v(" "),
        _c("th", [_vm._v("total")]),
        _vm._v(" "),
        _c("th", [_vm._v("X")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/sale/addResellerSale.vue":
/*!************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/addResellerSale.vue ***!
  \************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _addResellerSale_vue_vue_type_template_id_c6542042_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./addResellerSale.vue?vue&type=template&id=c6542042&scoped=true& */ "./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=template&id=c6542042&scoped=true&");
/* harmony import */ var _addResellerSale_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./addResellerSale.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css& */ "./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _addResellerSale_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _addResellerSale_vue_vue_type_template_id_c6542042_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _addResellerSale_vue_vue_type_template_id_c6542042_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "c6542042",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/sale/addResellerSale.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./addResellerSale.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css&":
/*!*********************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css& ***!
  \*********************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=style&index=0&id=c6542042&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_style_index_0_id_c6542042_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=template&id=c6542042&scoped=true&":
/*!*******************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=template&id=c6542042&scoped=true& ***!
  \*******************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_template_id_c6542042_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./addResellerSale.vue?vue&type=template&id=c6542042&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/addResellerSale.vue?vue&type=template&id=c6542042&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_template_id_c6542042_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_addResellerSale_vue_vue_type_template_id_c6542042_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);