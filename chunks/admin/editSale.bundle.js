(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/editSale"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vform */ "./node_modules/vform/dist/vform.common.js");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vform__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! vue-bootstrap-datetimepicker */ "./node_modules/vue-bootstrap-datetimepicker/dist/vue-bootstrap-datetimepicker.js");
/* harmony import */ var vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_2__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//



vue__WEBPACK_IMPORTED_MODULE_0___default.a.component(vform__WEBPACK_IMPORTED_MODULE_1__["HasError"].name, vform__WEBPACK_IMPORTED_MODULE_1__["HasError"]);
/* harmony default export */ __webpack_exports__["default"] = ({
  name: 'Add',
  created: function created() {
    this.others();
    this.edit();
    this.balanceList();
  },
  data: function data() {
    return {
      form: new vform__WEBPACK_IMPORTED_MODULE_1__["Form"]({
        sale_type: 1,
        mobile_no: '',
        name: '',
        address: '',
        courier: '',
        products: [],
        courier_id: '',
        total: 0,
        discount: 0,
        paid: 0,
        paid_by: 'Cash',
        due: 0,
        order_type: ''
      }),
      balance: '',
      attribute_id: '',
      variant_id: '',
      product_code: '',
      courier_id: '',
      products: [],
      product_attributes: null,
      product_variants: null,
      cities: null,
      couriers: null,
      product_quantity: 1,
      error: '',
      loading: true,
      sub_cities: ''
    };
  },
  methods: {
    redirectBack: function redirectBack() {
      window.history.back();
    },
    balanceList: function balanceList() {
      var _this = this;

      axios.get('/api/balance/list').then(function (resp) {
        _this.balance = resp.data.balance;
      });
    },
    //method initial for get data
    edit: function edit() {
      var _this2 = this;

      axios.get('/api/get/sale/details/' + this.$route.params.id).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          var order = resp.data.sale;
          _this2.form.mobile_no = order.mobile_no;
          _this2.form.name = order.name;
          _this2.form.address = order.address;
          _this2.form.city_id = order.city_id;
          _this2.form.courier_id = order.courier_id;
          _this2.form.paid = order.paid;
          _this2.form.discount = order.discount;
          _this2.form.total = order.total;
          _this2.form.paid_by = order.paid_by;
          _this2.form.order_type = order.order_type;
          _this2.form.due = parseInt(order.total) - (parseInt(order.paid) + parseInt(order.discount)); //problem is there product attribute

          var products = [];

          for (var i = 0; i < resp.data.items.length; i++) {
            products[i] = {
              product_id: resp.data.items[i].product.id,
              name: resp.data.items[i].product.name,
              //product name
              product_code: resp.data.items[i].product.product_code,
              quantity: resp.data.items[i].qty,
              price: resp.data.items[i].price,
              variants: resp.data.items[i].product.product_variant
            };

            _this2.products.push(products[i]);

            _this2.form.products.push(products[i]);

            _this2.form.products[i].total = resp.data.items[i].total;
            _this2.form.products[i].variant_id = resp.data.items[i].variant_id;
            _this2.form.products[i].attribute_id = resp.data.items[i].attribute_id;
          }

          _this2.form.sub_city_id = order.sub_city_id;
          _this2.loading = false;
        }
      });
    },
    //method initial for submit data
    add: function add() {
      var _this3 = this;

      if (this.form.paid > 0 && (this.form.paid_by == '' || this.form.paid_by == null)) {
        return this.$toastr.e('please select the Balance    ');
      }

      this.form.post('/api/update/sale/' + this.$route.params.id).then(function (resp) {
        console.log(resp);

        if (resp.data.success == true) {
          _this3.redirectBack();

          _this3.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          }); //other wise success, show a error

        } else {
          _this3.$toasted.show(resp.data.message, {
            type: 'error',
            position: 'top-center',
            duration: 4000
          });
        }
      })["catch"](function (error) {
        _this3.error = 'Missing submit information. please check all field below and try again';
      });
    },
    //method  for get other data to create order, like cit, courier and other.......
    others: function others() {
      var _this4 = this;

      axios.get('/others') //success resp only
      .then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          _this4.cities = resp.data.cities;
          _this4.couriers = resp.data.couriers;
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    //method initial for search product
    searchProduct: function searchProduct() {
      var _this5 = this;

      var length = this.product_code.length; //  alert(length)

      if (length == 4) {
        axios.get('/api/search/product/with/code/' + this.product_code).then(function (resp) {
          //when resp success
          if (resp.data.status == 'SUCCESS') {
            var product = {
              product_id: '',
              price: '',
              quantity: 1,
              attribute_id: '',
              variant_id: '',
              total: ''
            };

            for (var i = 0; i < resp.data.product.length; i++) {
              //check the product stock
              _this5.products.push(resp.data.product[i]);

              product.product_id = resp.data.product[i].id;
              product.price = resp.data.product[i].sale_price;
              product.total = resp.data.product[i].sale_price;
            }

            _this5.form.products.push(product);

            _this5.totalCalculation();
          } //when not resp success
          else {
            _this5.$toasted.show('Product not found with ' + _this5.product_code, {
              position: 'top-center',
              type: 'danger',
              duration: 2000
            });
          }
        })["catch"](function (error) {
          console.log(error);
        });
      }
    },
    //method initial search customer
    searchCustomer: function searchCustomer() {
      var _this6 = this;

      if (this.form.mobile_no.length == 11) {
        axios.get('/api/search/customer/with/phone/number/' + this.form.mobile_no).then(function (resp) {
          //when com data from t resp
          if (resp.data) {
            if (resp.data.customer) {
              _this6.form.name = resp.data.customer.name, _this6.form.address = resp.data.customer.address;
              _this6.form.city_id = resp.data.customer.city_id;
            }

            _this6.$toasted.show(resp.data.message, {
              type: 'error',
              position: 'top-center',
              duration: 4000
            });
          }
        })["catch"](function (error) {//console.log(error);
        });
      }
    },
    //set product attribute
    attribute: function attribute(index) {
      this.form.products[index].attribute_id = this.attribute_id;
    },
    //set product variant
    variant: function variant(index) {
      this.form.products[index].variant_id = this.variant_id;
    },
    //when chage qauntity
    quantity: function quantity(index) {
      this.form.products[index].total = this.form.products[index].price * this.form.products[index].quantity;
      this.totalCalculation();
    },
    //total amount calculation
    totalCalculation: function totalCalculation() {
      var products = this.form.products;
      var total = 0;

      for (var i = 0; i < products.length; i++) {
        total += parseInt(products[i].price) * parseInt(products[i].quantity);
      }

      this.form.total = parseInt(total);
      this.form.due = parseInt(this.form.total) - parseInt(this.form.discount) - parseInt(this.form.paid);
    },
    //select city
    remove: function remove(index) {
      // console.log(index);
      console.log(this.form.products[index]);
      this.form.products.splice(index, 1);
      this.products.splice(index, 1);
      this.totalCalculation();
    }
  },
  computed: {},
  components: {
    datePicker: vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_2___default.a
  }
}); //Date picker

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\ninput[data-v-f3d4ac96] {\r\n    height: 40px !important;\n}\n.mb-2[data-v-f3d4ac96] {\r\n    margin-bottom: 5px !important;\n}\n.autocomplete[data-v-f3d4ac96] {\r\n    max-height: 120px;\r\n    overflow-y: scroll;\r\n    position: absolute;\r\n    width: 100%;\r\n    z-index: 454;\n}\n.autocomplete li[data-v-f3d4ac96]:hover {\r\n    background: #222d32;\r\n    color: #ffffff;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css&":
/*!*********************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css& ***!
  \*********************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=template&id=f3d4ac96&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=template&id=f3d4ac96&scoped=true& ***!
  \**************************************************************************************************************************************************************************************************************************************/
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
          _c("h1", [
            _c(
              "a",
              {
                staticClass: "btn btn-primary",
                on: { click: _vm.redirectBack }
              },
              [_c("i", { staticClass: "fa fa-arrow-left" })]
            )
          ]),
          _vm._v(" "),
          _vm._m(0)
        ]),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("form", {
            attrs: { id: "ProductSearch" },
            on: {
              submit: function($event) {
                $event.preventDefault()
                return _vm.searchProduct($event)
              }
            }
          }),
          _vm._v(" "),
          _vm.loading
            ? _c("h1", [_c("i", { staticClass: "fa fa-spin fa-spinner" })])
            : _c(
                "form",
                {
                  on: {
                    submit: function($event) {
                      $event.preventDefault()
                      return _vm.add($event)
                    },
                    keydown: function($event) {
                      return _vm.form.onKeydown($event)
                    }
                  }
                },
                [
                  _c("div", { staticClass: "row justify-content-center" }, [
                    _vm.error
                      ? _c(
                          "div",
                          {
                            staticClass: "alert alert-danger alert-dismissible",
                            attrs: { role: "alert" }
                          },
                          [
                            _vm._v(
                              "\n                        " +
                                _vm._s(_vm.error) +
                                "\n                        "
                            ),
                            _c(
                              "span",
                              {
                                staticClass: "close",
                                staticStyle: { color: "#fff" },
                                attrs: {
                                  "aria-hidden": "true",
                                  "data-dismiss": "alert",
                                  "aria-label": "Close"
                                }
                              },
                              [_vm._v("×")]
                            )
                          ]
                        )
                      : _vm._e(),
                    _vm._v(" "),
                    _c("div", { staticClass: "col-lg-4" }, [
                      _c("div", { staticClass: "box box-primary" }, [
                        _vm._m(1),
                        _vm._v(" "),
                        _c("div", { staticClass: "box-body" }, [
                          _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _c("label", [_vm._v("Customer Phone")]),
                              _vm._v(" "),
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.mobile_no,
                                    expression: "form.mobile_no"
                                  }
                                ],
                                staticClass: "form-control",
                                class: {
                                  "is-invalid": _vm.form.errors.has("mobile_no")
                                },
                                attrs: {
                                  type: "text",
                                  name: "mobile_no",
                                  placeholder:
                                    "Enter customer 11 digit mobile number"
                                },
                                domProps: { value: _vm.form.mobile_no },
                                on: {
                                  keyup: _vm.searchCustomer,
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "mobile_no",
                                      $event.target.value
                                    )
                                  }
                                }
                              }),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: { form: _vm.form, field: "mobile_no" }
                              })
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _c("label", [_vm._v("Name")]),
                              _vm._v(" "),
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.name,
                                    expression: "form.name"
                                  }
                                ],
                                staticClass: "form-control",
                                class: {
                                  "is-invalid": _vm.form.errors.has("name")
                                },
                                attrs: {
                                  type: "text",
                                  name: "name",
                                  placeholder: "Name"
                                },
                                domProps: { value: _vm.form.name },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "name",
                                      $event.target.value
                                    )
                                  }
                                }
                              }),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: { form: _vm.form, field: "name" }
                              })
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _c("label", [_vm._v("Address")]),
                              _vm._v(" "),
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.form.address,
                                    expression: "form.address"
                                  }
                                ],
                                staticClass: "form-control",
                                class: {
                                  "is-invalid": _vm.form.errors.has("address")
                                },
                                attrs: {
                                  type: "text",
                                  name: "address",
                                  placeholder: "address"
                                },
                                domProps: { value: _vm.form.address },
                                on: {
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.form,
                                      "address",
                                      $event.target.value
                                    )
                                  }
                                }
                              }),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: { form: _vm.form, field: "address" }
                              })
                            ],
                            1
                          )
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "col-lg-8" }, [
                      _c("div", { staticClass: "box box-success" }, [
                        _vm._m(2),
                        _vm._v(" "),
                        _c("div", { staticClass: "box-body" }, [
                          _c("div", { staticClass: "form-group" }, [
                            _c("label", [_vm._v("Product")]),
                            _vm._v(" "),
                            _c("input", {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.product_code,
                                  expression: "product_code"
                                }
                              ],
                              staticClass: "form-control",
                              attrs: {
                                type: "text",
                                name: "name",
                                autofocus: "",
                                autocomplete: "off",
                                placeholder: "Enter Product Code",
                                form: "ProductSearch"
                              },
                              domProps: { value: _vm.product_code },
                              on: {
                                input: function($event) {
                                  if ($event.target.composing) {
                                    return
                                  }
                                  _vm.product_code = $event.target.value
                                }
                              }
                            })
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "row" }, [
                            _c("div", { staticClass: "col-lg-12" }, [
                              _c(
                                "table",
                                {
                                  staticClass:
                                    "table table-hover table-bordered table-striped table-centered "
                                },
                                [
                                  _vm._m(3),
                                  _vm._v(" "),
                                  _vm.products.length > 0
                                    ? _c(
                                        "tbody",
                                        [
                                          _vm._l(_vm.products, function(
                                            product,
                                            index
                                          ) {
                                            return _c("tr", { key: index }, [
                                              _c("td", [
                                                _vm._v(_vm._s(index + 1))
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _vm._v(
                                                  "\n                                                        " +
                                                    _vm._s(
                                                      product.name +
                                                        "-" +
                                                        product.product_code
                                                    ) +
                                                    "\n                                                        "
                                                ),
                                                _c("input", {
                                                  attrs: { type: "hidden" },
                                                  domProps: {
                                                    value: product.id
                                                  }
                                                })
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _c(
                                                  "select",
                                                  {
                                                    directives: [
                                                      {
                                                        name: "model",
                                                        rawName: "v-model",
                                                        value:
                                                          _vm.form.products[
                                                            index
                                                          ].variant_id,
                                                        expression:
                                                          "\n                                                                form.products[index].variant_id\n                                                            "
                                                      }
                                                    ],
                                                    staticClass: "form-control",
                                                    on: {
                                                      change: function($event) {
                                                        var $$selectedVal = Array.prototype.filter
                                                          .call(
                                                            $event.target
                                                              .options,
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
                                                          _vm.form.products[
                                                            index
                                                          ],
                                                          "variant_id",
                                                          $event.target.multiple
                                                            ? $$selectedVal
                                                            : $$selectedVal[0]
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _c(
                                                      "option",
                                                      { attrs: { value: "" } },
                                                      [
                                                        _vm._v(
                                                          "\n                                                                select attribute\n                                                            "
                                                        )
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _vm._l(
                                                      product.variants,
                                                      function(
                                                        product_variant,
                                                        index
                                                      ) {
                                                        return product.variants
                                                          ? _c(
                                                              "option",
                                                              {
                                                                key: index,
                                                                domProps: {
                                                                  value:
                                                                    product_variant
                                                                      .variant
                                                                      .id
                                                                }
                                                              },
                                                              [
                                                                _vm._v(
                                                                  "\n                                                                " +
                                                                    _vm._s(
                                                                      product_variant
                                                                        .variant
                                                                        .name
                                                                    ) +
                                                                    "\n                                                            "
                                                                )
                                                              ]
                                                            )
                                                          : _vm._e()
                                                      }
                                                    )
                                                  ],
                                                  2
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _c("input", {
                                                  directives: [
                                                    {
                                                      name: "model",
                                                      rawName: "v-model",
                                                      value:
                                                        _vm.form.products[index]
                                                          .quantity,
                                                      expression:
                                                        "\n                                                                form.products[index].quantity\n                                                            "
                                                    }
                                                  ],
                                                  staticStyle: {
                                                    width: "50px"
                                                  },
                                                  attrs: { type: "number" },
                                                  domProps: {
                                                    value:
                                                      _vm.form.products[index]
                                                        .quantity
                                                  },
                                                  on: {
                                                    keyup: function($event) {
                                                      return _vm.quantity(index)
                                                    },
                                                    change: function($event) {
                                                      return _vm.quantity(index)
                                                    },
                                                    input: function($event) {
                                                      if (
                                                        $event.target.composing
                                                      ) {
                                                        return
                                                      }
                                                      _vm.$set(
                                                        _vm.form.products[
                                                          index
                                                        ],
                                                        "quantity",
                                                        $event.target.value
                                                      )
                                                    }
                                                  }
                                                }),
                                                _vm._v(" "),
                                                _c(
                                                  "span",
                                                  {
                                                    staticClass:
                                                      "badge badge-danger"
                                                  },
                                                  [
                                                    _vm._v(
                                                      _vm._s(product.stock)
                                                    )
                                                  ]
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _vm.form.order_type == 3
                                                  ? _c("input", {
                                                      directives: [
                                                        {
                                                          name: "model",
                                                          rawName: "v-model",
                                                          value:
                                                            _vm.form.products[
                                                              index
                                                            ].price,
                                                          expression:
                                                            "form.products[index].price"
                                                        }
                                                      ],
                                                      domProps: {
                                                        value:
                                                          _vm.form.products[
                                                            index
                                                          ].price
                                                      },
                                                      on: {
                                                        keyup: function(
                                                          $event
                                                        ) {
                                                          _vm.totalCalculation &&
                                                            _vm.quantity(index)
                                                        },
                                                        input: function(
                                                          $event
                                                        ) {
                                                          if (
                                                            $event.target
                                                              .composing
                                                          ) {
                                                            return
                                                          }
                                                          _vm.$set(
                                                            _vm.form.products[
                                                              index
                                                            ],
                                                            "price",
                                                            $event.target.value
                                                          )
                                                        }
                                                      }
                                                    })
                                                  : _c("strong", [
                                                      _vm._v(
                                                        _vm._s(product.price)
                                                      )
                                                    ])
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _vm._v(
                                                  _vm._s(
                                                    _vm.form.products[index]
                                                      .total
                                                  )
                                                )
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _c(
                                                  "a",
                                                  {
                                                    staticClass:
                                                      "btn btn-danger btn-sm",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.remove(index)
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _c("i", {
                                                      staticClass: "fa fa-trash"
                                                    })
                                                  ]
                                                )
                                              ])
                                            ])
                                          }),
                                          _vm._v(" "),
                                          _vm.products.length > 0
                                            ? _c("tr", [
                                                _c("td", {
                                                  attrs: { colspan: "4" }
                                                }),
                                                _vm._v(" "),
                                                _c("td", [
                                                  _vm._v("Total Amount")
                                                ]),
                                                _vm._v(" "),
                                                _c(
                                                  "td",
                                                  { attrs: { colspan: "2" } },
                                                  [
                                                    _vm._v(
                                                      _vm._s(_vm.form.total)
                                                    )
                                                  ]
                                                )
                                              ])
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _vm.products.length > 0
                                            ? _c("tr", [
                                                _c("td", {
                                                  attrs: { colspan: "4" }
                                                }),
                                                _vm._v(" "),
                                                _c("td", [_vm._v("Discount")]),
                                                _vm._v(" "),
                                                _c(
                                                  "td",
                                                  { attrs: { colspan: "2" } },
                                                  [
                                                    _c("input", {
                                                      directives: [
                                                        {
                                                          name: "model",
                                                          rawName: "v-model",
                                                          value:
                                                            _vm.form.discount,
                                                          expression:
                                                            "form.discount"
                                                        }
                                                      ],
                                                      staticClass:
                                                        "form-control",
                                                      domProps: {
                                                        value: _vm.form.discount
                                                      },
                                                      on: {
                                                        keyup:
                                                          _vm.totalCalculation,
                                                        input: function(
                                                          $event
                                                        ) {
                                                          if (
                                                            $event.target
                                                              .composing
                                                          ) {
                                                            return
                                                          }
                                                          _vm.$set(
                                                            _vm.form,
                                                            "discount",
                                                            $event.target.value
                                                          )
                                                        }
                                                      }
                                                    })
                                                  ]
                                                )
                                              ])
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _vm.products.length > 0
                                            ? _c("tr", [
                                                _c("td", {
                                                  attrs: { colspan: "4" }
                                                }),
                                                _vm._v(" "),
                                                _c("td", [_vm._v("Paid")]),
                                                _vm._v(" "),
                                                _c(
                                                  "td",
                                                  { attrs: { colspan: "2" } },
                                                  [
                                                    _c("input", {
                                                      directives: [
                                                        {
                                                          name: "model",
                                                          rawName: "v-model",
                                                          value: _vm.form.paid,
                                                          expression:
                                                            "form.paid"
                                                        }
                                                      ],
                                                      staticClass:
                                                        "form-control",
                                                      domProps: {
                                                        value: _vm.form.paid
                                                      },
                                                      on: {
                                                        keyup:
                                                          _vm.totalCalculation,
                                                        input: function(
                                                          $event
                                                        ) {
                                                          if (
                                                            $event.target
                                                              .composing
                                                          ) {
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
                                                  ]
                                                )
                                              ])
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _c("tr", [
                                            _c("td", {
                                              attrs: { colspan: "4" }
                                            }),
                                            _vm._v(" "),
                                            _c("td", [_vm._v("Paid By")]),
                                            _vm._v(" "),
                                            _c(
                                              "td",
                                              { attrs: { colspan: "2" } },
                                              [
                                                _c(
                                                  "div",
                                                  { staticClass: "form-group" },
                                                  [
                                                    _c(
                                                      "select",
                                                      {
                                                        directives: [
                                                          {
                                                            name: "model",
                                                            rawName: "v-model",
                                                            value:
                                                              _vm.form.paid_by,
                                                            expression:
                                                              "form.paid_by"
                                                          }
                                                        ],
                                                        staticClass:
                                                          "form-control",
                                                        on: {
                                                          change: function(
                                                            $event
                                                          ) {
                                                            var $$selectedVal = Array.prototype.filter
                                                              .call(
                                                                $event.target
                                                                  .options,
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
                                                              $event.target
                                                                .multiple
                                                                ? $$selectedVal
                                                                : $$selectedVal[0]
                                                            )
                                                          }
                                                        }
                                                      },
                                                      [
                                                        _c(
                                                          "option",
                                                          {
                                                            attrs: {
                                                              value:
                                                                "select one",
                                                              disabled: ""
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                                                    select one\n                                                                "
                                                            )
                                                          ]
                                                        ),
                                                        _vm._v(" "),
                                                        _vm._l(
                                                          _vm.balance,
                                                          function(
                                                            balance,
                                                            index
                                                          ) {
                                                            return _c(
                                                              "option",
                                                              {
                                                                key: index,
                                                                domProps: {
                                                                  value:
                                                                    balance.name
                                                                }
                                                              },
                                                              [
                                                                _vm._v(
                                                                  "\n                                                                    " +
                                                                    _vm._s(
                                                                      balance.name
                                                                    ) +
                                                                    "\n                                                                "
                                                                )
                                                              ]
                                                            )
                                                          }
                                                        )
                                                      ],
                                                      2
                                                    ),
                                                    _vm._v(" "),
                                                    _c("has-error", {
                                                      attrs: {
                                                        form: _vm.form,
                                                        field: "paid_by"
                                                      }
                                                    })
                                                  ],
                                                  1
                                                )
                                              ]
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _vm.products.length > 0
                                            ? _c("tr", [
                                                _c("td", {
                                                  attrs: { colspan: "4" }
                                                }),
                                                _vm._v(" "),
                                                _c("td", [
                                                  _vm._v("Amount due")
                                                ]),
                                                _vm._v(" "),
                                                _c(
                                                  "td",
                                                  { attrs: { colspan: "2" } },
                                                  [_vm._v(_vm._s(_vm.form.due))]
                                                )
                                              ])
                                            : _vm._e(),
                                          _vm._v(" "),
                                          _c(
                                            "button",
                                            {
                                              staticClass: "btn btn-success",
                                              staticStyle: {
                                                "margin-top": "12px"
                                              },
                                              attrs: { type: "submit" }
                                            },
                                            [
                                              _vm._v(
                                                "\n                                                    Submit\n                                                "
                                              )
                                            ]
                                          )
                                        ],
                                        2
                                      )
                                    : _vm._e()
                                ]
                              )
                            ])
                          ])
                        ])
                      ])
                    ])
                  ])
                ]
              )
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
          _vm._v("Dashboard ")
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
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("h3", { staticClass: "box-title" }, [_vm._v("Customer information")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "box-header with-border" }, [
      _c("h3", { staticClass: "box-title" }, [_vm._v("Product information")])
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
        _c("th", [_vm._v("Variant")]),
        _vm._v(" "),
        _c("th", [_vm._v("Quantity")]),
        _vm._v(" "),
        _c("th", [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", [_vm._v("total")]),
        _vm._v(" "),
        _c("th", [_vm._v("Remove")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/sale/Edit.vue":
/*!*************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/Edit.vue ***!
  \*************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Edit_vue_vue_type_template_id_f3d4ac96_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Edit.vue?vue&type=template&id=f3d4ac96&scoped=true& */ "./resources/microadmin/components/admin/sale/Edit.vue?vue&type=template&id=f3d4ac96&scoped=true&");
/* harmony import */ var _Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Edit.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/sale/Edit.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css& */ "./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Edit_vue_vue_type_template_id_f3d4ac96_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Edit_vue_vue_type_template_id_f3d4ac96_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "f3d4ac96",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/sale/Edit.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/Edit.vue?vue&type=script&lang=js&":
/*!**************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/Edit.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css&":
/*!**********************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css& ***!
  \**********************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=style&index=0&id=f3d4ac96&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_f3d4ac96_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/sale/Edit.vue?vue&type=template&id=f3d4ac96&scoped=true&":
/*!********************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/sale/Edit.vue?vue&type=template&id=f3d4ac96&scoped=true& ***!
  \********************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_f3d4ac96_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=template&id=f3d4ac96&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/sale/Edit.vue?vue&type=template&id=f3d4ac96&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_f3d4ac96_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_f3d4ac96_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);