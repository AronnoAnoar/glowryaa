(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/addOrder"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Add.vue?vue&type=script&lang=js& ***!
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
/* harmony import */ var vue_loading_overlay__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! vue-loading-overlay */ "./node_modules/vue-loading-overlay/dist/vue-loading.min.js");
/* harmony import */ var vue_loading_overlay__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(vue_loading_overlay__WEBPACK_IMPORTED_MODULE_3__);
/* harmony import */ var vue_loading_overlay_dist_vue_loading_css__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! vue-loading-overlay/dist/vue-loading.css */ "./node_modules/vue-loading-overlay/dist/vue-loading.css");
/* harmony import */ var vue_loading_overlay_dist_vue_loading_css__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(vue_loading_overlay_dist_vue_loading_css__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var lodash__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! lodash */ "./node_modules/lodash/lodash.js");
/* harmony import */ var lodash__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(lodash__WEBPACK_IMPORTED_MODULE_5__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//






vue__WEBPACK_IMPORTED_MODULE_0___default.a.use(vue_loading_overlay__WEBPACK_IMPORTED_MODULE_3___default.a);
vue__WEBPACK_IMPORTED_MODULE_0___default.a.component(vform__WEBPACK_IMPORTED_MODULE_1__["HasError"].name, vform__WEBPACK_IMPORTED_MODULE_1__["HasError"]);
/* harmony default export */ __webpack_exports__["default"] = ({
  created: function created() {
    this.others();
    this.balanceList();
  },
  data: function data() {
    return {
      form: new vform__WEBPACK_IMPORTED_MODULE_1__["Form"]({
        customer_phone: '',
        name: '',
        address: '',
        city_id: '',
        courier: '',
        products: [],
        shipping_cost: 0,
        paid_by: '',
        status: 2,
        courier_id: '',
        total: 0,
        discount: 0,
        paid: 0,
        due: 0,
        order_type: 2,
        sub_city_id: '',
        note: "",
        redx_delivery_area_id: ''
      }),
      balance: '',
      search_product_code: '',
      size: '',
      color: '',
      weight: '',
      product_code: '',
      city_id: '',
      courier_id: '',
      shipping_cost: '',
      products: [],
      product_attributes: null,
      product_variants: null,
      cities: null,
      couriers: null,
      product_quantity: 1,
      errors: [],
      suggested_products: {},
      product_per_page: 10,
      base_link: this.$store.state.image_base_link,
      thumbnail_base_link: this.$store.state.thumbnail_img_base_link,
      sub_cities: '',
      search_products: '',
      redx_delivery_areas: []
    };
  },
  //method initial for submit data
  methods: {
    back: function back() {
      return window.history.back();
    },
    balanceList: function balanceList() {
      var _this = this;

      axios.get('/api/balance/list').then(function (resp) {
        _this.balance = resp.data.balance;
      });
    },
    add: function add() {
      var _this2 = this;

      if (this.form.paid > 0 && (this.form.paid_by == '' || this.form.paid_by == null)) {
        return this.$toastr.e('please select the Balance    ');
      } //start progress bar when submit


      this.$Progress.start();
      this.form.post('/create/order').then(function (resp) {
        console.log(resp);

        if (resp.data.status == 'SUCCESS') {
          _this2.$Progress.finish();

          _this2.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          return _this2.back();
        } else {
          _this2.$toasted.show(resp.data, {
            type: 'error',
            position: 'top-center',
            duration: 5000
          });
        }
      })["catch"](function (error) {
        _this2.errors = [];

        _this2.errors.push(error.response.data.errors);

        _this2.$Progress.finish();
      });
    },
    //method initial for get other data to create order, like cit, courier and other.......
    others: function others() {
      var _this3 = this;

      axios.get('/others').then(function (resp) {
        if (resp.data.status == 'SUCCESS') {
          _this3.cities = resp.data.cities;
          _this3.couriers = resp.data.couriers;
          _this3.redx_delivery_areas = resp.data.redx_delivery_area;
          _this3.loading = false;
        }
      });
    },
    searchProduct: function searchProduct() {
      var _this4 = this;

      if (this.product_code.length > 0) {
        this.$Progress.start();
        axios.get('/search/product/' + this.product_code).then(function (resp) {
          // console.log(resp);
          if (resp.data.products.data.length) {
            _this4.search_products = resp.data.products.data;
            document.getElementById('search_p_o_add').style.display = 'block';
          }

          _this4.$Progress.finish();
        });
      }
    },
    selectProduct: function selectProduct(item) {
      var product = {
        id: item.id,
        price: item.sale_price,
        quantity: 1,
        size: '',
        color: '',
        weight: '',
        total: item.sale_price,
        stock: item.stock
      };
      this.products.push(item);
      this.form.products.push(product);
      document.getElementById('search_p_o_add').style.display = 'none';
      this.search_products = '';
      this.totalCalculation();
    },
    //method initial search customer
    searchCustomer: function searchCustomer() {
      var _this5 = this;

      if (this.form.customer_phone.length == 11) {
        axios.get('/api/search/customer/with/phone/number/' + this.form.customer_phone).then(function (resp) {
          // console.log(resp);
          //when com data from t resp
          if (resp.data) {
            if (resp.data.customer) {
              _this5.form.name = resp.data.customer.name, _this5.form.address = resp.data.customer.address;
              _this5.form.city_id = resp.data.customer.city_id ? resp.data.customer.city_id : "";

              _this5.selectCity();

              if (resp.data.customer.city_id) {
                _this5.cityWiseSubCity(resp.data.customer.city_id);
              }
            }

            _this5.$toasted.show(resp.data.message, {
              type: 'success',
              position: 'top-center',
              duration: 4000
            });
          }
        });
      }
    },
    //set product attribute
    attribute: function attribute(index) {
      this.form.products[index].attribute_id = this.attribute_id;
    },
    //set product variant
    // variant(index) {
    //   this.form.products[index].variant_id = this.variant_id;
    // },
    //when chage qauntity
    quantity: function quantity(index) {
      // if(parseInt(this.products[index].stock ) < parseInt(this.form.products[index].quantity)){
      //   alert(`max quantity ${this.form.products[index].stock}`)
      //   this.form.products[index].quantity=this.form.products[index].stock;
      //   return;
      // }
      this.form.products[index].total = parseInt(this.form.products[index].price) * parseInt(this.form.products[index].quantity);
      this.totalCalculation();
    },
    //total amount calculation
    totalCalculation: function totalCalculation() {
      var products = this.form.products;
      var total = 0;

      for (var i = 0; i < products.length; i++) {
        total += parseInt(products[i].price) * parseInt(products[i].quantity);
      }

      if (parseInt(this.form.paid) > parseInt(total) + parseInt(this.form.shipping_cost)) {
        Swal.fire({
          type: 'warning',
          text: ". why paid amount ".concat(this.form.paid, " bigger this total amount ").concat(total, " ?????")
        });
        this.form.paid = total;
        return;
      }

      if (parseInt(this.form.discount) > parseInt(total) + parseInt(this.form.discount)) {
        Swal.fire({
          type: 'warning',
          text: "why discount amount ".concat(this.form.discount, " bigger this total amount ").concat(total, " ?????")
        });
        this.form.discount = total;
        return;
      }

      this.form.total = parseInt(total);
      this.form.due = this.form.total - parseInt(this.form.discount) - parseInt(this.form.paid) + parseInt(this.form.shipping_cost);
    },
    //select city
    selectCity: function selectCity() {
      var id = this.form.city_id;
      this.cityWiseSubCity(id);
      var cities = this.cities;

      for (var i = 0; i < cities.length; i++) {
        if (cities[i].id == id) {
          this.form.shipping_cost = cities[i].delivery_charge;
        }
      }

      if (id == 1) {
        this.form.courier_id = 5;
      }

      this.totalCalculation();
    },
    cityWiseSubCity: function cityWiseSubCity(city_id) {
      var _this6 = this;

      var loader = this.$loading.show({
        // Optional parameters
        container: this.fullPage ? null : this.$refs.formContainer,
        canCancel: true,
        onCancel: this.onCancel,
        loader: 'bars',
        color: '#FF4D03',
        backgroundColor: '#222',
        width: 100,
        height: 100
      }); // console.log(city_id);

      axios.get('/city/wise/sub/city/' + city_id).then(function (resp) {
        if (resp.data.length) {
          _this6.sub_cities = resp.data;
        } else {
          _this6.form.sub_city_id = '';
          _this6.sub_cities = '';
          alert('No sub city under selected city');
        }

        loader.hide();
      })["catch"](function (e) {
        console.log(e);
        loader.hide();
      });
    },
    remove: function remove(index) {
      // console.log(index);
      // console.log(this.form.products[index]);
      this.form.products.splice(index, 1);
      this.products.splice(index, 1);
      this.totalCalculation();
    }
  },
  components: {
    datePicker: vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_2___default.a
  }
}); //Date picker

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css&":
/*!*****************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css& ***!
  \*****************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\ninput[data-v-435b5a03] {\r\n    height: 40px !important;\n}\n.mb-2[data-v-435b5a03] {\r\n    margin-bottom: 5px !important;\n}\n.autocomplete[data-v-435b5a03] {\r\n    max-height: 120px;\r\n    overflow-y: scroll;\r\n    position: absolute;\r\n    width: 100%;\r\n    z-index: 454;\n}\n.fa-search[data-v-435b5a03] {\r\n    height: 33px;\r\n    width: 60px;\r\n    margin-left: -25px;\n}\n.autocomplete li[data-v-435b5a03]:hover {\r\n    background: #222d32;\r\n    color: #ffffff;\n}\n.suggest-product img[data-v-435b5a03] {\r\n    width: 120px;\r\n    height: 120px;\n}\n.suggest-product[data-v-435b5a03] {\r\n    background: #ecf0f5;\r\n    text-align: center;\r\n    padding: 20px;\r\n    box-shadow: 0px 0px 1px 2px #ddd;\n}\n.add-item.text-center[data-v-435b5a03] {\r\n    background: #fff;\r\n    width: block;\r\n    padding: 6px 5px;\r\n    border-radius: 6px;\r\n    cursor: pointer;\r\n    margin-bottom: 18px;\n}\n.form-group.product-search[data-v-435b5a03] {\r\n    width: 80%;\r\n    left: 10%;\r\n    position: relative;\n}\n.search_product_list[data-v-435b5a03] {\r\n    display: none;\r\n    margin-left: -40px;\r\n    max-height: 200px;\r\n    overflow-y: auto;\n}\n.quantity_no_stock[data-v-435b5a03] {\r\n    display: flex;\r\n    justify-content: center;\r\n    align-items: center;\r\n    gap: 5px;\n}\n.quantity_no_stock input[data-v-435b5a03] {\r\n    width: 50px;\n}\n.product_price input[data-v-435b5a03] {\r\n    width: 60px;\n}\r\n\r\n\r\n/* Chrome, Safari, Edge, Opera */\ninput[data-v-435b5a03]::-webkit-outer-spin-button,\r\ninput[data-v-435b5a03]::-webkit-inner-spin-button {\r\n  -webkit-appearance: none;\r\n  margin: 0;\n}\r\n\r\n/* Firefox */\ninput[type=number][data-v-435b5a03] {\r\n  -moz-appearance: textfield;\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css&":
/*!*********************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css& ***!
  \*********************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=template&id=435b5a03&scoped=true&":
/*!**************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Add.vue?vue&type=template&id=435b5a03&scoped=true& ***!
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
                staticClass: "btn btn-primary btn-sm",
                on: { click: _vm.back }
              },
              [_c("i", { staticClass: "fa fa-arrow-left" })]
            ),
            _vm._v(" "),
            _vm._m(0)
          ]),
          _vm._v(" "),
          _vm._m(1)
        ]),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c(
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
                _vm.errors.length
                  ? _c(
                      "div",
                      {
                        staticClass: "alert alert-danger alert-dismissible",
                        attrs: { role: "alert" }
                      },
                      [
                        _c(
                          "ul",
                          _vm._l(_vm.errors, function(error) {
                            return _c("div", [
                              _c("li", [_vm._v(_vm._s(error))]),
                              _vm._v(" "),
                              _c("br")
                            ])
                          }),
                          0
                        )
                      ]
                    )
                  : _vm._e(),
                _vm._v(" "),
                _c("div", { staticClass: "col-lg-4" }, [
                  _c("div", { staticClass: "box box-primary" }, [
                    _vm._m(2),
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
                                value: _vm.form.customer_phone,
                                expression: "form.customer_phone"
                              }
                            ],
                            staticClass: "form-control",
                            class: {
                              "is-invalid": _vm.form.errors.has(
                                "customer_phone"
                              )
                            },
                            attrs: {
                              type: "text",
                              name: "customer_phone",
                              placeholder:
                                "Enter customer 11 digit mobile number"
                            },
                            domProps: { value: _vm.form.customer_phone },
                            on: {
                              keyup: _vm.searchCustomer,
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.$set(
                                  _vm.form,
                                  "customer_phone",
                                  $event.target.value
                                )
                              }
                            }
                          }),
                          _vm._v(" "),
                          _c("has-error", {
                            attrs: { form: _vm.form, field: "customer_phone" }
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
                                _vm.$set(_vm.form, "name", $event.target.value)
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
                      ),
                      _vm._v(" "),
                      _c(
                        "div",
                        { staticClass: "form-group" },
                        [
                          _c("label", [_vm._v("Courier")]),
                          _vm._v(" "),
                          _c(
                            "select",
                            {
                              directives: [
                                {
                                  name: "model",
                                  rawName: "v-model",
                                  value: _vm.form.courier_id,
                                  expression: "form.courier_id"
                                }
                              ],
                              staticClass: "form-control",
                              class: {
                                "is-invalid": _vm.form.errors.has("courier_id")
                              },
                              attrs: { name: "courier" },
                              on: {
                                change: function($event) {
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
                                    "courier_id",
                                    $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  )
                                }
                              }
                            },
                            [
                              _c("option", { attrs: { value: "" } }, [
                                _vm._v("select courier")
                              ]),
                              _vm._v(" "),
                              _vm._l(_vm.couriers, function(courier, index) {
                                return _c(
                                  "option",
                                  {
                                    key: index,
                                    domProps: { value: courier.id }
                                  },
                                  [
                                    _vm._v(
                                      "\n                                            " +
                                        _vm._s(courier.name) +
                                        "\n                                        "
                                    )
                                  ]
                                )
                              })
                            ],
                            2
                          ),
                          _vm._v(" "),
                          _c("has-error", {
                            attrs: { form: _vm.form, field: "courier_id" }
                          })
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _vm.form.courier_id == 11
                        ? _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _vm._m(3),
                              _vm._v(" "),
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.redx_delivery_area_id,
                                      expression: "form.redx_delivery_area_id"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  class: {
                                    "is-invalid": _vm.form.errors.has(
                                      "redx_delivery_area_id"
                                    )
                                  },
                                  attrs: { name: "courier" },
                                  on: {
                                    change: function($event) {
                                      var $$selectedVal = Array.prototype.filter
                                        .call($event.target.options, function(
                                          o
                                        ) {
                                          return o.selected
                                        })
                                        .map(function(o) {
                                          var val =
                                            "_value" in o ? o._value : o.value
                                          return val
                                        })
                                      _vm.$set(
                                        _vm.form,
                                        "redx_delivery_area_id",
                                        $event.target.multiple
                                          ? $$selectedVal
                                          : $$selectedVal[0]
                                      )
                                    }
                                  }
                                },
                                [
                                  _c("option", { attrs: { value: "" } }, [
                                    _vm._v("Select RedX Delivery Area")
                                  ]),
                                  _vm._v(" "),
                                  _vm._l(_vm.redx_delivery_areas, function(
                                    redx_area,
                                    index
                                  ) {
                                    return _c(
                                      "option",
                                      {
                                        key: index,
                                        domProps: { value: redx_area.id }
                                      },
                                      [
                                        _vm._v(
                                          "\n                                            " +
                                            _vm._s(redx_area.area_name) +
                                            "\n                                        "
                                        )
                                      ]
                                    )
                                  })
                                ],
                                2
                              ),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: {
                                  form: _vm.form,
                                  field: "redx_delivery_area_id"
                                }
                              })
                            ],
                            1
                          )
                        : _vm._e(),
                      _vm._v(" "),
                      _vm.form.courier_id != 11
                        ? _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _c("label", [_vm._v("City")]),
                              _vm._v(" "),
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.city_id,
                                      expression: "form.city_id"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  class: {
                                    "is-invalid": _vm.form.errors.has("city")
                                  },
                                  attrs: { name: "city", id: "" },
                                  on: {
                                    change: [
                                      function($event) {
                                        var $$selectedVal = Array.prototype.filter
                                          .call($event.target.options, function(
                                            o
                                          ) {
                                            return o.selected
                                          })
                                          .map(function(o) {
                                            var val =
                                              "_value" in o ? o._value : o.value
                                            return val
                                          })
                                        _vm.$set(
                                          _vm.form,
                                          "city_id",
                                          $event.target.multiple
                                            ? $$selectedVal
                                            : $$selectedVal[0]
                                        )
                                      },
                                      _vm.selectCity
                                    ]
                                  }
                                },
                                [
                                  _c("option", { attrs: { value: "" } }, [
                                    _vm._v("select city")
                                  ]),
                                  _vm._v(" "),
                                  _vm._l(_vm.cities, function(city) {
                                    return _c(
                                      "option",
                                      { domProps: { value: city.id } },
                                      [
                                        _vm._v(
                                          "\n                                            " +
                                            _vm._s(city.name) +
                                            "\n                                        "
                                        )
                                      ]
                                    )
                                  })
                                ],
                                2
                              ),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: { form: _vm.form, field: "city" }
                              })
                            ],
                            1
                          )
                        : _vm._e(),
                      _vm._v(" "),
                      _vm.form.courier_id != 11
                        ? _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _c("label", [_vm._v("Sub City")]),
                              _vm._v(" "),
                              _c(
                                "select",
                                {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.form.sub_city_id,
                                      expression: "form.sub_city_id"
                                    }
                                  ],
                                  staticClass: "form-control",
                                  class: {
                                    "is-invalid": _vm.form.errors.has(
                                      "sub_city_id"
                                    )
                                  },
                                  attrs: { name: "sub_city", required: "" },
                                  on: {
                                    change: function($event) {
                                      var $$selectedVal = Array.prototype.filter
                                        .call($event.target.options, function(
                                          o
                                        ) {
                                          return o.selected
                                        })
                                        .map(function(o) {
                                          var val =
                                            "_value" in o ? o._value : o.value
                                          return val
                                        })
                                      _vm.$set(
                                        _vm.form,
                                        "sub_city_id",
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
                                    { attrs: { disabled: "", value: "" } },
                                    [_vm._v("select sub city")]
                                  ),
                                  _vm._v(" "),
                                  _vm._l(_vm.sub_cities, function(sub_city) {
                                    return _vm.sub_cities.length > 0
                                      ? _c(
                                          "option",
                                          {
                                            key: sub_city.id,
                                            domProps: { value: sub_city.id }
                                          },
                                          [
                                            _vm._v(
                                              "\n                                            " +
                                                _vm._s(sub_city.name) +
                                                "\n                                        "
                                            )
                                          ]
                                        )
                                      : _vm._e()
                                  })
                                ],
                                2
                              ),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: { form: _vm.form, field: "sub_city_id" }
                              })
                            ],
                            1
                          )
                        : _vm._e(),
                      _vm._v(" "),
                      _c(
                        "div",
                        { staticClass: "form-group" },
                        [
                          _c("label", [_vm._v("Shipping Charge ")]),
                          _vm._v(" "),
                          _c("input", {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.form.shipping_cost,
                                expression: "form.shipping_cost"
                              }
                            ],
                            staticClass: "form-control",
                            class: {
                              "is-invalid": _vm.form.errors.has("shipping_cost")
                            },
                            attrs: { type: "text", name: "shipping_cost" },
                            domProps: { value: _vm.form.shipping_cost },
                            on: {
                              input: function($event) {
                                if ($event.target.composing) {
                                  return
                                }
                                _vm.$set(
                                  _vm.form,
                                  "shipping_cost",
                                  $event.target.value
                                )
                              }
                            }
                          }),
                          _vm._v(" "),
                          _c("has-error", {
                            attrs: { form: _vm.form, field: "shipping_cost" }
                          })
                        ],
                        1
                      ),
                      _vm._v(" "),
                      _c("div", { staticClass: "form-group" }, [
                        _c("label", [_vm._v("Status")]),
                        _vm._v(" "),
                        _c(
                          "select",
                          {
                            directives: [
                              {
                                name: "model",
                                rawName: "v-model",
                                value: _vm.form.status,
                                expression: "form.status"
                              }
                            ],
                            staticClass: "form-control",
                            attrs: { name: "status" },
                            on: {
                              change: function($event) {
                                var $$selectedVal = Array.prototype.filter
                                  .call($event.target.options, function(o) {
                                    return o.selected
                                  })
                                  .map(function(o) {
                                    var val = "_value" in o ? o._value : o.value
                                    return val
                                  })
                                _vm.$set(
                                  _vm.form,
                                  "status",
                                  $event.target.multiple
                                    ? $$selectedVal
                                    : $$selectedVal[0]
                                )
                              }
                            }
                          },
                          [
                            _c("option", { attrs: { value: "3" } }, [
                              _vm._v("Confirmed")
                            ]),
                            _vm._v(" "),
                            _c("option", { attrs: { value: "2" } }, [
                              _vm._v("Pending")
                            ]),
                            _vm._v(" "),
                            _c("option", { attrs: { value: "1" } }, [
                              _vm._v("New")
                            ])
                          ]
                        )
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "form-group" }, [
                        _c("label", [_vm._v("Note")]),
                        _vm._v(" "),
                        _c("textarea", {
                          directives: [
                            {
                              name: "model",
                              rawName: "v-model",
                              value: _vm.form.note,
                              expression: "form.note"
                            }
                          ],
                          staticClass: "form-control",
                          attrs: {
                            name: "note",
                            id: "note",
                            cols: "30",
                            rows: "5",
                            placeholder: "note"
                          },
                          domProps: { value: _vm.form.note },
                          on: {
                            input: function($event) {
                              if ($event.target.composing) {
                                return
                              }
                              _vm.$set(_vm.form, "note", $event.target.value)
                            }
                          }
                        })
                      ])
                    ])
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "col-lg-8" }, [
                  _c("div", { staticClass: "box box-success" }, [
                    _vm._m(4),
                    _vm._v(" "),
                    _c("div", { staticClass: "box-body" }, [
                      _c("div", { staticClass: "form-group" }, [
                        _c("label", [_vm._v("Scan Barcode || product code")]),
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
                            autocomplete: "off",
                            placeholder: "type product code or name"
                          },
                          domProps: { value: _vm.product_code },
                          on: {
                            keyup: _vm.searchProduct,
                            input: function($event) {
                              if ($event.target.composing) {
                                return
                              }
                              _vm.product_code = $event.target.value
                            }
                          }
                        }),
                        _vm._v(" "),
                        _c(
                          "ul",
                          {
                            staticClass: "search_product_list",
                            attrs: { id: "search_p_o_add" }
                          },
                          _vm._l(_vm.search_products, function(item) {
                            return _c(
                              "li",
                              {
                                key: item.id,
                                staticClass: "list-group-item",
                                staticStyle: { cursor: "pointer" },
                                on: {
                                  click: function($event) {
                                    return _vm.selectProduct(item)
                                  }
                                }
                              },
                              [
                                _c(
                                  "div",
                                  { staticStyle: { display: "flex" } },
                                  [
                                    _c("img", {
                                      attrs: {
                                        width: "40px",
                                        height: "40px",
                                        src: _vm.base_link + item.thumbnail_img
                                      }
                                    }),
                                    _vm._v(" "),
                                    _c(
                                      "p",
                                      { staticStyle: { margin: "10px" } },
                                      [
                                        _vm._v(
                                          "\n                                                    " +
                                            _vm._s(item.name) +
                                            "- " +
                                            _vm._s(item.product_code) +
                                            "\n                                                "
                                        )
                                      ]
                                    )
                                  ]
                                )
                              ]
                            )
                          }),
                          0
                        )
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "row" }, [
                        _c("div", { staticClass: "col-lg-12" }, [
                          _c(
                            "table",
                            {
                              staticClass:
                                "\n                                                table\n                                                table-hover\n                                                table-bordered\n                                                table-striped\n                                                table-centered\n                                            "
                            },
                            [
                              _vm._m(5),
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
                                          _c(
                                            "td",
                                            { staticStyle: { width: "10px" } },
                                            [_vm._v(_vm._s(index))]
                                          ),
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
                                              domProps: { value: product.id }
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
                                                      _vm.form.products[index]
                                                        .size,
                                                    expression:
                                                      "\n                                                                form.products[index].size\n                                                            "
                                                  }
                                                ],
                                                staticClass: "form-control",
                                                staticStyle: { width: "80px" },
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
                                                      _vm.form.products[index],
                                                      "size",
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
                                                  {
                                                    attrs: {
                                                      disabled: "",
                                                      value: ""
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                                select size\n                                                            "
                                                    )
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _vm._l(
                                                  product.product_variant,
                                                  function(item, index) {
                                                    return item.variant
                                                      .attribute_id == 1
                                                      ? _c(
                                                          "option",
                                                          {
                                                            key: index,
                                                            domProps: {
                                                              value:
                                                                item.variant
                                                                  .name
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                                                " +
                                                                _vm._s(
                                                                  item.variant
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
                                            _c(
                                              "select",
                                              {
                                                directives: [
                                                  {
                                                    name: "model",
                                                    rawName: "v-model",
                                                    value:
                                                      _vm.form.products[index]
                                                        .color,
                                                    expression:
                                                      "\n                                                                form.products[index].color\n                                                            "
                                                  }
                                                ],
                                                staticClass:
                                                  "form-control custom_select",
                                                staticStyle: { width: "80px" },
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
                                                      _vm.form.products[index],
                                                      "color",
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
                                                  {
                                                    attrs: {
                                                      disabled: "",
                                                      value: ""
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                                select color\n                                                            "
                                                    )
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _vm._l(
                                                  product.product_variant,
                                                  function(item, index) {
                                                    return item.variant
                                                      .attribute_id == 2
                                                      ? _c(
                                                          "option",
                                                          {
                                                            key: index,
                                                            domProps: {
                                                              value:
                                                                item.variant
                                                                  .name
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                                                " +
                                                                _vm._s(
                                                                  item.variant
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
                                            _c(
                                              "select",
                                              {
                                                directives: [
                                                  {
                                                    name: "model",
                                                    rawName: "v-model",
                                                    value:
                                                      _vm.form.products[index]
                                                        .weight,
                                                    expression:
                                                      "\n                                                                form.products[index].weight\n                                                            "
                                                  }
                                                ],
                                                staticClass: "form-control",
                                                staticStyle: { width: "80px" },
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
                                                      _vm.form.products[index],
                                                      "weight",
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
                                                  {
                                                    attrs: {
                                                      disabled: "",
                                                      value: ""
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                                select Weight\n                                                            "
                                                    )
                                                  ]
                                                ),
                                                _vm._v(" "),
                                                _vm._l(
                                                  product.product_variant,
                                                  function(item, index) {
                                                    return item.variant
                                                      .attribute_id == 3
                                                      ? _c(
                                                          "option",
                                                          {
                                                            key: index,
                                                            domProps: {
                                                              value:
                                                                item.variant
                                                                  .name
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "\n                                                                " +
                                                                _vm._s(
                                                                  item.variant
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
                                            _c(
                                              "div",
                                              {
                                                staticClass: "quantity_no_stock"
                                              },
                                              [
                                                _c("input", {
                                                  directives: [
                                                    {
                                                      name: "model",
                                                      rawName: "v-model",
                                                      value:
                                                        _vm.form.products[index]
                                                          .quantity,
                                                      expression:
                                                        "\n                                                                    form.products[index].quantity\n                                                                "
                                                    }
                                                  ],
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
                                              ]
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _c(
                                              "div",
                                              { staticClass: "product_price" },
                                              [
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
                                                  : _c("input", {
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
                                              ]
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("td", [
                                            _vm._v(
                                              _vm._s(
                                                _vm.form.products[index].total
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
                                              attrs: { colspan: "6" }
                                            }),
                                            _vm._v(" "),
                                            _c("td", [_vm._v("Total Amount")]),
                                            _vm._v(" "),
                                            _c(
                                              "td",
                                              { attrs: { colspan: "2" } },
                                              [_vm._v(_vm._s(_vm.form.total))]
                                            )
                                          ])
                                        : _vm._e(),
                                      _vm._v(" "),
                                      _vm.products.length > 0
                                        ? _c("tr", [
                                            _c("td", {
                                              attrs: { colspan: "6" }
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
                                                      value: _vm.form.discount,
                                                      expression:
                                                        "form.discount"
                                                    }
                                                  ],
                                                  staticClass: "form-control",
                                                  attrs: { placeholder: "0" },
                                                  domProps: {
                                                    value: _vm.form.discount
                                                  },
                                                  on: {
                                                    keyup: _vm.totalCalculation,
                                                    input: function($event) {
                                                      if (
                                                        $event.target.composing
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
                                              attrs: { colspan: "6" }
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
                                                      expression: "form.paid"
                                                    }
                                                  ],
                                                  staticClass: "form-control",
                                                  attrs: { placeholder: "0" },
                                                  domProps: {
                                                    value: _vm.form.paid
                                                  },
                                                  on: {
                                                    keyup: _vm.totalCalculation,
                                                    input: function($event) {
                                                      if (
                                                        $event.target.composing
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
                                        _c("td", { attrs: { colspan: "6" } }),
                                        _vm._v(" "),
                                        _c("td", [_vm._v("Paid By")]),
                                        _vm._v(" "),
                                        _c("td", { attrs: { colspan: "2" } }, [
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
                                                        "\n                                                                    Select Balance\n                                                                "
                                                      )
                                                    ]
                                                  ),
                                                  _vm._v(" "),
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
                                                          "\n                                                                    " +
                                                            _vm._s(
                                                              balance.name
                                                            ) +
                                                            "\n                                                                "
                                                        )
                                                      ]
                                                    )
                                                  })
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
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _vm.products.length > 0
                                        ? _c("tr", [
                                            _c("td", {
                                              attrs: { colspan: "6" }
                                            }),
                                            _vm._v(" "),
                                            _c("td", [
                                              _vm._v("Shipping charge")
                                            ]),
                                            _vm._v(" "),
                                            _c(
                                              "td",
                                              { attrs: { colspan: "2" } },
                                              [
                                                _vm._v(
                                                  "\n                                                        " +
                                                    _vm._s(
                                                      _vm.form.shipping_cost
                                                    ) +
                                                    "\n                                                    "
                                                )
                                              ]
                                            )
                                          ])
                                        : _vm._e(),
                                      _vm._v(" "),
                                      _vm.products.length > 0
                                        ? _c("tr", [
                                            _c("td", {
                                              attrs: { colspan: "6" }
                                            }),
                                            _vm._v(" "),
                                            _c("td", [_vm._v("Amount due")]),
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
                                          staticStyle: { "margin-top": "12px" },
                                          attrs: {
                                            type: "submit",
                                            disabled: _vm.form.busy
                                          }
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
    return _c(
      "a",
      { staticClass: "btn btn-success btn-sm", attrs: { href: "#sg-product" } },
      [_c("i", { staticClass: "fa fa-arrow-down" })]
    )
  },
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
      _c("li", { staticClass: "active" }, [_vm._v("Order")])
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
    return _c("label", [
      _vm._v("RedX Delivery Area "),
      _c("b", { staticStyle: { color: "red" } }, [
        _vm._v("* (Please Select Area)")
      ])
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
        _c("th", [_vm._v("Size")]),
        _vm._v(" "),
        _c("th", [_vm._v("Color")]),
        _vm._v(" "),
        _c("th", [_vm._v("Weight")]),
        _vm._v(" "),
        _c("th", [_vm._v("Quantity")]),
        _vm._v(" "),
        _c("th", [_vm._v("Price")]),
        _vm._v(" "),
        _c("th", [_vm._v("Total")]),
        _vm._v(" "),
        _c("th", [_vm._v("Remove")])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/order/Add.vue":
/*!*************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Add.vue ***!
  \*************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Add_vue_vue_type_template_id_435b5a03_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Add.vue?vue&type=template&id=435b5a03&scoped=true& */ "./resources/microadmin/components/admin/order/Add.vue?vue&type=template&id=435b5a03&scoped=true&");
/* harmony import */ var _Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Add.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/order/Add.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css& */ "./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Add_vue_vue_type_template_id_435b5a03_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Add_vue_vue_type_template_id_435b5a03_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "435b5a03",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/order/Add.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Add.vue?vue&type=script&lang=js&":
/*!**************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Add.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css&":
/*!**********************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css& ***!
  \**********************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=style&index=0&id=435b5a03&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_style_index_0_id_435b5a03_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Add.vue?vue&type=template&id=435b5a03&scoped=true&":
/*!********************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Add.vue?vue&type=template&id=435b5a03&scoped=true& ***!
  \********************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_template_id_435b5a03_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Add.vue?vue&type=template&id=435b5a03&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Add.vue?vue&type=template&id=435b5a03&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_template_id_435b5a03_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Add_vue_vue_type_template_id_435b5a03_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);