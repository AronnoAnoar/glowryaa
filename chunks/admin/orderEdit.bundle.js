(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/orderEdit"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=script&lang=js&":
/*!***********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Edit.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    this.balanceList(); // this.selectCity();
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
        courier_id: '',
        total: 0,
        discount: 0,
        paid: 0,
        paid_by: '',
        due: 0,
        order_type: '',
        sub_city_id: '',
        status: '',
        note: '',
        select_area: "",
        redx_delivery_area_id: ''
      }),
      balance: '',
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
      error: '',
      loading: true,
      sub_cities: '',
      base_url: this.$store.state.image_base_link,
      search_products: '',
      customer_order_records: "",
      redx_delivery_areas: []
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

      axios.get('/order/view/' + this.$route.params.id).then(function (resp) {
        console.log(resp);
        console.log(resp.data.order.city_id);

        if (resp.data.status == 'SUCCESS') {
          var order = resp.data.order;
          _this2.form.customer_phone = order.customer_phone;
          _this2.form.name = order.customer.name;
          _this2.form.address = order.customer.address;
          _this2.form.city_id = order.city_id ? order.city_id : "";
          _this2.form.shipping_cost = order.shipping_cost;
          _this2.form.courier_id = order.courier_id ? order.courier_id : "";
          _this2.form.paid = order.paid;
          _this2.form.discount = order.discount;
          _this2.form.total = order.total;
          _this2.form.paid_by = order.paid_by ? order.paid_by : "select one";
          _this2.form.order_type = order.order_type;
          _this2.form.status = order.status;
          _this2.form.note = order.note;
          _this2.form.select_area = order.select_area;
          _this2.form.due = parseInt(order.total) - (parseInt(order.paid) + parseInt(order.discount)) + parseInt(order.shipping_cost); //problem is there product attribute

          var products = [];

          for (var i = 0; i < resp.data.items.length; i++) {
            products[i] = {
              product_id: resp.data.items[i].product.id,
              name: resp.data.items[i].product.name,
              //product name
              product_code: resp.data.items[i].product.product_code,
              stock: resp.data.items[i].product.stock,
              quantity: resp.data.items[i].quantity,
              price: resp.data.items[i].price,
              variants: resp.data.items[i].product.product_variant,
              thumbnail_img: resp.data.items[i].product.thumbnail_img
            };

            _this2.products.push(products[i]);

            _this2.form.products.push(products[i]);

            _this2.form.products[i].total = resp.data.items[i].total;
            _this2.form.products[i].size = resp.data.items[i].size;
            _this2.form.products[i].color = resp.data.items[i].color;
            _this2.form.products[i].weight = resp.data.items[i].weight;
          }

          if (order.redx_delivery_area_id != null) {
            _this2.form.redx_delivery_area_id = order.redx_delivery_area_id;
          }

          if (order.city_id) {
            _this2.cityWiseSubCity();

            _this2.form.sub_city_id = order.sub_city_id ? order.sub_city_id : "";
          }

          setTimeout(function () {
            _this2.searchCustomer();
          }, 1000);
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

      this.form.post('/update/order/' + this.$route.params.id).then(function (resp) {
        console.log(resp);

        if (resp.data.status == 'SUCCESS') {
          _this3.redirectBack();

          _this3.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          }); //other wise success, show a error

        } else {
          _this3.$toasted.show(resp.data, {
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
          _this4.redx_delivery_areas = resp.data.redx_delivery_area;
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    //method initial for search product
    searchProduct: function searchProduct() {
      var _this5 = this;

      if (this.product_code.length > 1) {
        axios.get('/search/product/' + this.product_code).then(function (resp) {
          console.log(resp);

          if (resp.data.products.data.length) {
            _this5.search_products = resp.data.products.data; // this.product_code = '';

            document.getElementById('search_p_o_add').style.display = 'block';
          }
        });
      }
    },
    selectProduct: function selectProduct(item) {
      var product = {
        name: item.name,
        product_id: item.id,
        price: item.sale_price,
        quantity: 1,
        attribute_id: '',
        variants: item.product_variant,
        total: item.sale_price,
        stock: item.stock,
        thumbnail_img: item.thumbnail_img
      };
      this.products.push(product);
      this.form.products.push(product);
      document.getElementById('search_p_o_add').style.display = 'none';
      this.search_products = '';
      this.product_code = '';
      this.totalCalculation();
    },
    //method initial search customer
    searchCustomer: function searchCustomer() {
      var _this6 = this;

      if (this.form.customer_phone.length == 11) {
        axios.get('/api/search/customer/with/phone/number/' + this.form.customer_phone).then(function (resp) {
          //when com data from t resp
          if (resp.data) {
            if (resp.data.customer) {
              _this6.form.name = resp.data.customer.name, _this6.form.address = resp.data.customer.address;
              _this6.customer_order_records = resp.data.order_records;

              _this6.$modal.show('order_records_modal');
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
      this.form.due = parseInt(this.form.total) - parseInt(this.form.discount) - parseInt(this.form.paid) + parseInt(this.form.shipping_cost);
    },
    //select city
    selectCity: function selectCity() {
      var id = this.form.city_id;
      var cities = this.cities;

      for (var i = 0; i < cities.length; i++) {
        if (cities[i].id == id) {
          this.form.shipping_cost = parseInt(cities[i].delivery_charge);
        }
      }

      this.totalCalculation();
      this.cityWiseSubCity();
    },
    remove: function remove(index) {
      // console.log(index);
      console.log(this.form.products[index]);
      this.form.products.splice(index, 1);
      this.products.splice(index, 1);
      this.totalCalculation();
    },
    cityWiseSubCity: function cityWiseSubCity() {
      var _this7 = this;

      axios.get('/city/wise/sub/city/' + this.form.city_id).then(function (resp) {
        if (resp.data.length) {
          _this7.sub_cities = resp.data;
        } else {
          _this7.form.sub_city_id = '';
          _this7.sub_cities = '';
        }

        console.log(resp);
      })["catch"](function (e) {
        console.log(e);
      });
    }
  },
  computed: {},
  components: {
    datePicker: vue_bootstrap_datetimepicker__WEBPACK_IMPORTED_MODULE_2___default.a
  }
}); //Date picker

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.orders_p_list[data-v-5852e4d0] {\n        list-style-type: none;\n        margin-left: -50px;\n}\n.orders_p_list > li[data-v-5852e4d0] {\n    padding: 15px 0px;\n}\n.orders_p_container > img[data-v-5852e4d0] {\n        max-width: 80px;\n        max-height: 80px;\n        cursor: pointer;\n}\ninput[data-v-5852e4d0] {\n        height: 40px !important;\n}\n.mb-2[data-v-5852e4d0] {\n        margin-bottom: 5px !important;\n}\n.autocomplete[data-v-5852e4d0] {\n        max-height: 120px;\n        overflow-y: scroll;\n        position: absolute;\n        width: 100%;\n        z-index: 454;\n}\n.autocomplete li[data-v-5852e4d0]:hover {\n        background: #222d32;\n        color: #ffffff;\n}\ninput[data-v-5852e4d0] {\n        height: 40px !important;\n}\n.mb-2[data-v-5852e4d0] {\n        margin-bottom: 5px !important;\n}\n.autocomplete[data-v-5852e4d0] {\n        max-height: 120px;\n        overflow-y: scroll;\n        position: absolute;\n        width: 100%;\n        z-index: 454;\n}\n.fa-search[data-v-5852e4d0] {\n        height: 33px;\n        width: 60px;\n        margin-left: -25px;\n}\n.autocomplete li[data-v-5852e4d0]:hover {\n        background: #222d32;\n        color: #ffffff;\n}\n.suggest-product img[data-v-5852e4d0] {\n        width: 120px;\n        height: 120px;\n}\n.suggest-product[data-v-5852e4d0] {\n        background: #ecf0f5;\n        text-align: center;\n        padding: 20px;\n        box-shadow: 0px 0px 1px 2px #ddd;\n}\n.add-item.text-center[data-v-5852e4d0] {\n        background: #fff;\n        width: block;\n        padding: 6px 5px;\n        border-radius: 6px;\n        cursor: pointer;\n        margin-bottom: 18px;\n}\n.form-group.product-search[data-v-5852e4d0] {\n        width: 80%;\n        left: 10%;\n        position: relative;\n}\n.search_product_list[data-v-5852e4d0] {\n        display: none;\n        margin-left: -40px;\n        max-height: 200px;\n        overflow-y: auto;\n}\n.quantity_no_stock[data-v-5852e4d0] {\n    display: flex;\n    justify-content: center;\n    align-items: center;\n    gap: 5px;\n}\n.quantity_no_stock input[data-v-5852e4d0] {\n    width: 50px;\n}\n.product_price input[data-v-5852e4d0] {\n    width: 60px;\n}\n.search_product_list[data-v-5852e4d0] {\n    display: none;\n    margin-left: -40px;\n    max-height: 200px;\n    overflow-y: auto;\n}\n\n\n\n/* Chrome, Safari, Edge, Opera */\ninput[data-v-5852e4d0]::-webkit-outer-spin-button,\ninput[data-v-5852e4d0]::-webkit-inner-spin-button {\n  -webkit-appearance: none;\n  margin: 0;\n}\n\n/* Firefox */\ninput[type=number][data-v-5852e4d0] {\n  -moz-appearance: textfield;\n}\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css&":
/*!**********************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css& ***!
  \**********************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=template&id=5852e4d0&scoped=true&":
/*!***************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Edit.vue?vue&type=template&id=5852e4d0&scoped=true& ***!
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
                                attrs: {
                                  form: _vm.form,
                                  field: "customer_phone"
                                }
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
                                    "is-invalid": _vm.form.errors.has(
                                      "courier_id"
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
                                  _vm._l(_vm.couriers, function(
                                    courier,
                                    index
                                  ) {
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
                                  _vm._m(2),
                                  _vm._v(" "),
                                  _c(
                                    "select",
                                    {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.redx_delivery_area_id,
                                          expression:
                                            "form.redx_delivery_area_id"
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
                                        "is-invalid": _vm.form.errors.has(
                                          "city"
                                        )
                                      },
                                      attrs: { name: "city" },
                                      on: {
                                        change: [
                                          function($event) {
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
                                      _vm._l(_vm.sub_cities, function(
                                        sub_city
                                      ) {
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
                                    attrs: {
                                      form: _vm.form,
                                      field: "sub_city_id"
                                    }
                                  })
                                ],
                                1
                              )
                            : _vm._e(),
                          _vm._v(" "),
                          _vm.form.select_area
                            ? _c(
                                "div",
                                { staticClass: "form-group" },
                                [
                                  _c("label", [_vm._v("Select Area")]),
                                  _vm._v(" "),
                                  _c(
                                    "select",
                                    {
                                      directives: [
                                        {
                                          name: "model",
                                          rawName: "v-model",
                                          value: _vm.form.select_area,
                                          expression: "form.select_area"
                                        }
                                      ],
                                      staticClass: "form-control",
                                      attrs: { name: "select_area", id: "" },
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
                                            "select_area",
                                            $event.target.multiple
                                              ? $$selectedVal
                                              : $$selectedVal[0]
                                          )
                                        }
                                      }
                                    },
                                    [
                                      _c("option", { attrs: { value: "1" } }, [
                                        _vm._v(" Inside Dhaka  ")
                                      ]),
                                      _vm._v(" "),
                                      _c("option", { attrs: { value: "2" } }, [
                                        _vm._v(" Outside Dhaka  ")
                                      ])
                                    ]
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
                          _c(
                            "div",
                            { staticClass: "form-group" },
                            [
                              _c("label", [_vm._v("Shipping Cost")]),
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
                                  "is-invalid": _vm.form.errors.has(
                                    "shipping_cost"
                                  )
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
                                attrs: {
                                  form: _vm.form,
                                  field: "shipping_cost"
                                }
                              })
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "form-group" },
                            [
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
                                  class: {
                                    "is-invalid": _vm.form.errors.has("status")
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
                                    _vm._v(" Approved ")
                                  ]),
                                  _vm._v(" "),
                                  _c("option", { attrs: { value: "2" } }, [
                                    _vm._v(" Pending ")
                                  ]),
                                  _vm._v(" "),
                                  _c("option", { attrs: { value: "1" } }, [
                                    _vm._v(" New ")
                                  ])
                                ]
                              ),
                              _vm._v(" "),
                              _c("has-error", {
                                attrs: { form: _vm.form, field: "status" }
                              })
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c("div", { staticClass: "form-group" }, [
                            _c("label", { attrs: { id: "comment" } }, [
                              _vm._v("Note")
                            ]),
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
                                name: "comment",
                                id: "comment",
                                cols: "30",
                                rows: "5",
                                placeholder: "comment"
                              },
                              domProps: { value: _vm.form.note },
                              on: {
                                input: function($event) {
                                  if ($event.target.composing) {
                                    return
                                  }
                                  _vm.$set(
                                    _vm.form,
                                    "note",
                                    $event.target.value
                                  )
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
                        _vm._m(3),
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
                                            src:
                                              _vm.base_url + item.thumbnail_img
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
                                    "table table-hover table-bordered table-striped table-centered "
                                },
                                [
                                  _vm._m(4),
                                  _vm._v(" "),
                                  _vm.products.length > 0
                                    ? _c(
                                        "tbody",
                                        [
                                          _vm._l(_vm.form.products, function(
                                            product,
                                            index
                                          ) {
                                            return _c("tr", { key: index }, [
                                              _c("td", [
                                                _vm._v(_vm._s(index + 1))
                                              ]),
                                              _vm._v(" "),
                                              _c("td", [
                                                _c("img", {
                                                  attrs: {
                                                    src:
                                                      _vm.base_url +
                                                      product.thumbnail_img,
                                                    alt: "product image",
                                                    width: "80",
                                                    height: "80"
                                                  }
                                                }),
                                                _vm._v(" "),
                                                _c("p", [
                                                  _vm._v(
                                                    "\n                                                            " +
                                                      _vm._s(
                                                        product.name +
                                                          "-" +
                                                          product.product_code
                                                      ) +
                                                      "\n                                                        "
                                                  )
                                                ]),
                                                _vm._v(" "),
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
                                                          ].size,
                                                        expression:
                                                          "form.products[index].size"
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
                                                          value: "",
                                                          disabled: ""
                                                        }
                                                      },
                                                      [
                                                        _vm._v(
                                                          "\n                                                                Select Size\n                                                            "
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
                                                        return product_variant
                                                          .variant
                                                          .attribute_id == 1
                                                          ? _c(
                                                              "option",
                                                              {
                                                                key: index,
                                                                domProps: {
                                                                  value:
                                                                    product_variant
                                                                      .variant
                                                                      .name
                                                                }
                                                              },
                                                              [
                                                                _vm._v(
                                                                  "\n                                                                    " +
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
                                                          ].color,
                                                        expression:
                                                          "form.products[index].color"
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
                                                          value: "",
                                                          disabled: ""
                                                        }
                                                      },
                                                      [
                                                        _vm._v(
                                                          "\n                                                                Select Color\n                                                            "
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
                                                        return product_variant
                                                          .variant
                                                          .attribute_id == 2
                                                          ? _c(
                                                              "option",
                                                              {
                                                                key: index,
                                                                domProps: {
                                                                  value:
                                                                    product_variant
                                                                      .variant
                                                                      .name
                                                                }
                                                              },
                                                              [
                                                                _vm._v(
                                                                  "\n                                                                    " +
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
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "quantity_no_stock"
                                                  },
                                                  [
                                                    _c("input", {
                                                      directives: [
                                                        {
                                                          name: "model",
                                                          rawName: "v-model",
                                                          value:
                                                            _vm.form.products[
                                                              index
                                                            ].quantity,
                                                          expression:
                                                            "\n                                                                    form.products[index].quantity\n                                                                "
                                                        }
                                                      ],
                                                      attrs: { type: "number" },
                                                      domProps: {
                                                        value:
                                                          _vm.form.products[
                                                            index
                                                          ].quantity
                                                      },
                                                      on: {
                                                        keyup: function(
                                                          $event
                                                        ) {
                                                          return _vm.quantity(
                                                            index
                                                          )
                                                        },
                                                        change: function(
                                                          $event
                                                        ) {
                                                          return _vm.quantity(
                                                            index
                                                          )
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
                                                  {
                                                    staticClass: "product_price"
                                                  },
                                                  [
                                                    _vm.form.order_type == 3
                                                      ? _c("input", {
                                                          directives: [
                                                            {
                                                              name: "model",
                                                              rawName:
                                                                "v-model",
                                                              value:
                                                                _vm.form
                                                                  .products[
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
                                                                _vm.quantity(
                                                                  index
                                                                )
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
                                                                _vm.form
                                                                  .products[
                                                                  index
                                                                ],
                                                                "price",
                                                                $event.target
                                                                  .value
                                                              )
                                                            }
                                                          }
                                                        })
                                                      : _c("input", {
                                                          directives: [
                                                            {
                                                              name: "model",
                                                              rawName:
                                                                "v-model",
                                                              value:
                                                                _vm.form
                                                                  .products[
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
                                                                _vm.quantity(
                                                                  index
                                                                )
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
                                                                _vm.form
                                                                  .products[
                                                                  index
                                                                ],
                                                                "price",
                                                                $event.target
                                                                  .value
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
                                                  attrs: { colspan: "6" }
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
                                              attrs: { colspan: "6" }
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
                                                  attrs: { colspan: "6" }
                                                }),
                                                _vm._v(" "),
                                                _c("td", [
                                                  _vm._v("Shipping Charge")
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
      ]),
      _vm._v(" "),
      _c(
        "modal",
        { attrs: { name: "order_records_modal", width: 800, height: 600 } },
        [
          _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
            _c("div", { staticClass: "text-center" }, [
              _c("h4", [_vm._v("Customer Order Records")])
            ]),
            _vm._v(" "),
            _c("div", { staticClass: "card-body" }, [
              _c(
                "table",
                {
                  staticClass:
                    "\n                table\n                table-centered\n                table-striped\n                table-hover\n                table-bordered\n                "
                },
                [
                  _c("thead", [
                    _c("th", { attrs: { width: "8%" } }, [
                      _vm._v("Invoice No")
                    ]),
                    _vm._v(" "),
                    _c("th", { attrs: { width: "20%" } }, [_vm._v("Products")]),
                    _vm._v(" "),
                    _c("th", { attrs: { width: "10%" } }, [_vm._v("Amount")]),
                    _vm._v(" "),
                    _c("th", { attrs: { width: "10%" } }, [_vm._v("Comment")])
                  ]),
                  _vm._v(" "),
                  _c(
                    "tbody",
                    _vm._l(_vm.customer_order_records, function(order) {
                      return _c("tr", { key: order.id }, [
                        _c(
                          "td",
                          [
                            _c(
                              "router-link",
                              {
                                staticClass: "btn btn-xs btn-success ",
                                staticStyle: { color: "white" },
                                attrs: {
                                  to: {
                                    name: "viewOrder",
                                    params: { id: order.id }
                                  }
                                }
                              },
                              [_vm._v(_vm._s(order.invoice_no))]
                            )
                          ],
                          1
                        ),
                        _vm._v(" "),
                        _c("td", [
                          order.order_item
                            ? _c(
                                "ul",
                                { staticClass: "orders_p_list" },
                                _vm._l(order.order_item, function(item, index) {
                                  return _c("li", { key: index }, [
                                    _c(
                                      "div",
                                      { staticClass: "orders_p_container" },
                                      [
                                        _c("img", {
                                          attrs: {
                                            width: "40",
                                            height: "40",
                                            src:
                                              _vm.base_url +
                                              item.product.thumbnail_img
                                          }
                                        }),
                                        _vm._v(" "),
                                        _c("sup", [
                                          _vm._v(
                                            _vm._s(
                                              item.variant
                                                ? item.variant.name
                                                : ""
                                            )
                                          )
                                        ])
                                      ]
                                    ),
                                    _vm._v(" "),
                                    _c("p", [
                                      _vm._v(
                                        "\n                                " +
                                          _vm._s(
                                            item.product
                                              ? item.product.name.substring(
                                                  0,
                                                  20
                                                )
                                              : ""
                                          ) +
                                          "\n                                "
                                      ),
                                      _c("span", [
                                        _vm._v(
                                          "-" +
                                            _vm._s(item.product.product_code)
                                        )
                                      ])
                                    ])
                                  ])
                                }),
                                0
                              )
                            : _vm._e()
                        ]),
                        _vm._v(" "),
                        _c("td", [
                          _vm._v(
                            "\n                            " +
                              _vm._s(
                                parseInt(order.total) -
                                  parseInt(order.discount) +
                                  parseInt(order.shipping_cost)
                              ) +
                              "\n                        "
                          )
                        ]),
                        _vm._v(" "),
                        _c("td", [
                          _c("div", { staticClass: "o_status_container" }, [
                            _vm._v(
                              "\n                                status:\n                                "
                            ),
                            order.status == 1
                              ? _c("span", { staticClass: "badge" }, [
                                  _vm._v("New")
                                ])
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 2
                              ? _c("span", { staticClass: "badge" }, [
                                  _vm._v("Pending")
                                ])
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 3
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-success" },
                                  [_vm._v("Approved")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 8
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-success" },
                                  [_vm._v("Packaging")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 4
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-success" },
                                  [_vm._v("Shipment")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 5
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-warning" },
                                  [_vm._v("Delivered")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 6
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-danger" },
                                  [_vm._v("Cancel")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.status == 7
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-danger" },
                                  [_vm._v("Return")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.order_type == 5
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-warning" },
                                  [_vm._v("Exchange")]
                                )
                              : _vm._e(),
                            _vm._v(" "),
                            order.print_status == 1
                              ? _c(
                                  "span",
                                  { staticClass: "badge badge-success" },
                                  [_vm._v("Printed")]
                                )
                              : _vm._e()
                          ]),
                          _vm._v(" "),
                          order.comment
                            ? _c("small", [_vm._v(_vm._s(order.comment))])
                            : _vm._e(),
                          _vm._v(" "),
                          _c("br"),
                          _vm._v(
                            "\n                            Order Date: " +
                              _vm._s(order.created_at) +
                              "\n\n                        "
                          )
                        ])
                      ])
                    }),
                    0
                  )
                ]
              )
            ])
          ])
        ]
      )
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

/***/ "./resources/microadmin/components/admin/order/Edit.vue":
/*!**************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Edit.vue ***!
  \**************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Edit_vue_vue_type_template_id_5852e4d0_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Edit.vue?vue&type=template&id=5852e4d0&scoped=true& */ "./resources/microadmin/components/admin/order/Edit.vue?vue&type=template&id=5852e4d0&scoped=true&");
/* harmony import */ var _Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Edit.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/order/Edit.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css& */ "./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Edit_vue_vue_type_template_id_5852e4d0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Edit_vue_vue_type_template_id_5852e4d0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "5852e4d0",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/order/Edit.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Edit.vue?vue&type=script&lang=js&":
/*!***************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Edit.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css&":
/*!***********************************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css& ***!
  \***********************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=style&index=0&id=5852e4d0&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_style_index_0_id_5852e4d0_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Edit.vue?vue&type=template&id=5852e4d0&scoped=true&":
/*!*********************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Edit.vue?vue&type=template&id=5852e4d0&scoped=true& ***!
  \*********************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_5852e4d0_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Edit.vue?vue&type=template&id=5852e4d0&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Edit.vue?vue&type=template&id=5852e4d0&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_5852e4d0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Edit_vue_vue_type_template_id_5852e4d0_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);