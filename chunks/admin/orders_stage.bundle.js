(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/orders_stage"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
  props: {
    order_count: {}
  },
  data: function data() {
    return {
      base_url: this.$store.state.image_base_link
    };
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=script&lang=js&":
/*!*************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Orders.vue?vue&type=script&lang=js& ***!
  \*************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/regenerator */ "./node_modules/@babel/runtime/regenerator/index.js");
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _OrderStatus_vue__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./OrderStatus.vue */ "./resources/microadmin/components/admin/order/OrderStatus.vue");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! vform */ "./node_modules/vform/dist/vform.common.js");
/* harmony import */ var vform__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(vform__WEBPACK_IMPORTED_MODULE_2__);


function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    this.ordersList();
    this.balance();
    this.fetchCustomerStatuses();
  },
  components: {
    OrderStatus: _OrderStatus_vue__WEBPACK_IMPORTED_MODULE_1__["default"]
  },
  data: function data() {
    return {
      form: new vform__WEBPACK_IMPORTED_MODULE_2__["Form"]({
        credit_in: '',
        return_cost: ''
      }),
      orders: {},
      loading: true,
      item: 30,
      courier: {
        order_id: '',
        courier_id: '',
        memo_no: '',
        order_index: ''
      },
      couriers: '',
      comments: '',
      search: '',
      search_type: 1,
      filtering_date_value: '',
      start_date: '',
      end_date: '',
      city: "all",
      //date picker options ..........
      options: {
        format: 'YYYY-MM-DD',
        useCurrent: false
      },
      status: this.$route.params.status_code,
      type: this.$route.params.type,
      page: 1,
      selected: false,
      select_order_id: [],
      bulk_status: 'all',
      heading: 'Approved Orders',
      bulkActionType: '0',
      courier_id: '',
      pre_route: '',
      order_count: '',
      base_url: this.$store.state.image_base_link,
      return_cost: '',
      balances: '',
      order_index: '',
      order_id: '',
      cancel_order: '',
      statuses: [],
      selected_status: null
    };
  },
  methods: {
    fetchCustomerStatuses: function fetchCustomerStatuses() {
      var _this = this;

      axios.get('/api/customer/statuses').then(function (response) {
        _this.statuses = response.data;
      })["catch"](function (error) {
        console.error('There was an error fetching the statuses:', error);
      });
    },
    orderAction: function orderAction(id) {
      console.log(id);
      document.getElementById('order_action_' + id).classList.toggle('toggle_order_action');
    },
    getOrderStatistic: function getOrderStatistic() {
      var _this2 = this;

      axios.get('/api/get/order/statistic').then(function (resp) {
        _this2.order_count = resp.data.order_count;
      });
    },
    ordersList: function ordersList() {
      var _this3 = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;
      this.$Progress.start();
      axios.get('/orders?page=' + page, {
        params: {
          status: this.status,
          item: this.item,
          type: this.type,
          start_date: this.start_date,
          end_date: this.end_date,
          courier_id: this.courier_id,
          search: this.search,
          search_type: this.search_type,
          city: this.city
        }
      }).then(function (resp) {
        window.document.order_page_number = page;
        console.log(resp);

        if (resp.data.status == 'SUCCESS') {
          _this3.orders = resp.data.orders;
          _this3.loading = false;
          _this3.page = _this3.page + 1;
          _this3.order_count = resp.data.order_count;
          _this3.couriers = resp.data.couriers;
          _this3.comments = resp.data.comments;
          _this3.loading = false;
        }

        _this3.$Progress.finish();
      })["catch"](function (error) {
        _this3.$toasted.show(error.response.data.message, {
          type: 'error',
          position: 'top-center',
          duration: 4000
        });
      });
    },
    //initial method for order approved
    approved: function approved(order, index) {
      var _this4 = this;

      //index initial for update order from orderLit or order arrow.
      this.$Progress.start();
      axios.get('/approved/order/' + order.id).then(function (resp) {
        //end progress bar after resp
        _this4.$Progress.finish(); //if resp success then....


        if (resp.data.status == 'SUCCESS') {
          _this4.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this4.orders.data[index].status = 3;

          _this4.getOrderStatistic();
        } else {
          _this4.$toastr.e(resp.data.message);
        }
      })["catch"](function (error) {
        //end progress bar after resp
        _this4.$toasted.show(error.response.data.message, {
          type: 'error',
          position: 'top-center',
          duration: 4000
        });
      });
    },
    packaging: function packaging(order, index) {
      var _this5 = this;

      /////index initial for update order from orderLit or order arrow.
      //start progress bar
      this.$Progress.start();
      axios.get('/packaging/order/' + order.id).then(function (resp) {
        //end progress bar after resp
        _this5.$Progress.finish(); //if resp success then....


        if (resp.data.status == 'SUCCESS') {
          _this5.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this5.orders.data[index].status = 8;

          _this5.getOrderStatistic();
        }
      })["catch"](function (error) {
        //end progress bar after resp
        _this5.$toasted.show(error.response.data.message, {
          type: 'error',
          position: 'top-center',
          duration: 4000
        });
      });
    },
    //initial method for order cancel
    cancel: function cancel(order, index) {
      this.$modal.show('customer_order_status_type_record_modal');
      this.cancel_order = order.id;
    },
    cancelOrderWithStatus: function cancelOrderWithStatus() {
      var _this6 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return axios.post("/api/cancel/order", {
                  cancel_order_id: _this6.cancel_order,
                  status: _this6.selected_status
                }).then(function (resp) {
                  //only success resp .......
                  if (resp.data.status == 'SUCCESS') {
                    _this6.$modal.hide('customer_order_status_type_record_modal');

                    _this6.$toasted.show(resp.data.message, {
                      type: 'success',
                      position: 'top-center',
                      duration: 2000
                    });

                    _this6.selected_status = "";
                    _this6.orders.data[index].status = 6;

                    _this6.getOrderStatistic();
                  }
                })["catch"](function (error) {
                  //end progress bar after resp
                  _this6.$toasted.show(error.response.data.message, {
                    type: 'error',
                    position: 'top-center',
                    duration: 4000
                  });
                });

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
    },
    failOrder: function failOrder(order, index) {
      var _this7 = this;

      this.$Progress.start();
      axios.get('/fail/order/' + order.id).then(function (resp) {
        console.log(resp); //end progress bar after resp

        _this7.$Progress.finish(); //only success resp .......


        if (resp.data.status == 'SUCCESS') {
          _this7.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this7.orders.data[index].status = 9;

          _this7.getOrderStatistic();
        }
      })["catch"](function (error) {
        _this7.$toastr.e(error.response.data.message);
      });
    },
    returnOrder: function returnOrder(order, index) {
      var _this8 = this;

      this.$Progress.start();
      axios.get('/return/order/' + order.id).then(function (resp) {
        console.log(resp);

        _this8.$Progress.finish();

        if (resp.data.status == 'SUCCESS') {
          _this8.$toastr.s(resp.data.message);

          _this8.orders.data[index].status = 7;

          _this8.getOrderStatistic();
        }
      })["catch"](function (error) {
        _this8.$toastr.e(error.response.data.message);
      });
    },
    delivered: function delivered(order, index) {
      var _this9 = this;

      axios.get('/api/balance/list').then(function (resp) {
        console.log(resp);
        _this9.balances = resp.data.balance;
        var options = {};
        resp.data.balance.forEach(function (element) {
          options[element.name] = element.name;
        });
        Swal.fire({
          title: 'Select a balance',
          input: 'select',
          inputOptions: options,
          inputPlaceholder: 'Select One',
          showCancelButton: true
        }).then(function (result) {
          if (result.value) {
            _this9.credit_in = result.value;
            Swal.fire({
              title: 'CHECK IT',
              html: "\n                  <div class=\"form-group\">\n                    <label>Credit Amount</label>\n                    <input class=\"form-control\" readonly value=\"".concat(parseInt(order.total) - parseInt(order.paid) - parseInt(order.discount) + parseInt(order.shipping_cost), "\">\n                  </div>\n              ")
            }).then(function (result) {
              if (result.value) {
                _this9.$Progress.start();

                axios.get('/delivered/order/' + order.id, {
                  params: {
                    credit_in: _this9.credit_in
                  }
                }).then(function (resp) {
                  console.log(resp); //end progress bar after resp

                  _this9.$Progress.finish(); //only success resp .......


                  if (resp.data.status == 'SUCCESS') {
                    _this9.$toasted.show(resp.data.message, {
                      type: 'success',
                      position: 'top-center',
                      duration: 2000
                    });

                    _this9.orders.data[index].status = 5;

                    _this9.getOrderStatistic();
                  }
                });
              }
            });
          }
        });
      });
    },
    shipment: function shipment(order, index) {
      var _this10 = this;

      if (!this.orders.data[index].courier_id) {
        alert('please select a courier');
        return;
      }

      if (!this.orders.data[index].memo_no) {
        alert('Must Be Need Memo Number');
        return;
      } //start progress bar


      this.$Progress.start();
      axios.get('/shipment/order/' + order.id).then(function (resp) {
        console.log(resp); //end progress bar after resp

        _this10.$Progress.finish(); //only success resp .......


        if (resp.data.status == 'SUCCESS') {
          _this10.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this10.orders.data[index].status = 4;

          _this10.getOrderStatistic();
        }
      })["catch"](function (error) {
        console.log(error);

        _this10.$toasted.show(error.response.data.message, {
          type: 'error',
          position: 'top-center',
          duration: 6000
        });
      });
    },
    pending: function pending(order, index) {
      var _this11 = this;

      /////index initial for update order from orderLit or order arrow.
      //start progress bar
      this.$Progress.start();
      axios.get('/pending/order/' + order.id).then(function (resp) {
        console.log(resp); //end progress bar after resp

        _this11.$Progress.finish(); //only success resp .......


        if (resp.data.status == 'SUCCESS') {
          _this11.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this11.orders.data[index].status = 2;

          _this11.getOrderStatistic();
        }
      })["catch"](function (error) {
        _this11.$toasted.show(error.response.data.message, {
          type: 'error',
          position: 'top-center',
          duration: 4000
        });
      });
    },
    //method open for open courier modal
    courierModal: function courierModal(order, index) {
      //set courier list first
      //set courier -> order id
      this.courier.order_id = order.id; // get courier from couerir order list by the index number

      this.courier.order_index = index;

      if (order.courier_id) {
        this.courier.courier_id = order.courier_id;
      } //after set all data, open courier modal .........


      this.$modal.show('example');
    },
    OrderCourier: function OrderCourier() {
      var _this12 = this;

      //start the progress bar
      this.$Progress.start();
      var order_index = this.courier.order_index;
      axios.post('/order/courier/update/' + this.courier.order_id, {
        courier_id: this.courier.courier_id,
        memo_no: this.courier.memo_no
      }).then(function (resp) {
        //end progressbar after resp...........
        _this12.$Progress.finish();

        if (resp.data.status == 'SUCCESS') {
          _this12.$modal.hide('example');

          console.log(resp.data.courier);

          if (resp.data.order.courier_id) {
            _this12.orders.data[order_index].courier_id = resp.data.order.courier_id;
          }

          if (resp.data.order.memo_no) {
            _this12.orders.data[order_index].memo_no = resp.data.order.memo_no;
          }

          if (resp.data.courier) {
            _this12.orders.data[order_index].courier = resp.data.courier;
          }

          _this12.courier.courier_id = '';
          _this12.courier.memo_no = '';

          _this12.$toasted.show(resp.data.message, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });
        }
      })["catch"](function (error) {
        _this12.$toasted.show(error.response.data.message, {
          type: 'error',
          position: 'top-center',
          duration: 2000
        });
      });
    },
    orderSearch: function orderSearch() {
      if (this.search.length > 3) {
        if (this.search_type == 2 && this.search.length >= 4) {
          this.loading = true;
          this.ordersList();
        } else {
          this.loading = true;
          this.ordersList();
        }
      } else {
        this.loading = false;
        this.ordersList();
      }
    },
    //method initial for filter order, data to date, and single data......
    filterOrder: function filterOrder() {
      var _this13 = this;

      var page = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 1;
      //start progressbar
      this.$Progress.start(); //show loader

      this.loading = true; //fetch data

      axios.get('/order/filter?page=' + page, {
        //send data
        params: {
          start_date: this.start_date,
          end_date: this.end_date,
          item: this.item,
          status: this.status
        }
      }).then(function (resp) {
        //only success resp ........
        _this13.$Progress.finish();

        _this13.loading = false;

        if (resp.data.status == 'SUCCESS') {
          _this13.orders = resp.data.orders;
          _this13.order_count = resp.data.order_count;
          _this13.couriers = resp.data.couriers;
          _this13.comments = resp.data.comments;
          _this13.loading = false;
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    //method initial for rest all data, or order arrow
    resetAll: function resetAll() {
      location.reload();
    },
    //method inital for select all
    selectAll: function selectAll() {
      //first idnetify select true or false
      //we need a tooglee all select box
      //if select true we make selected false, or select true
      if (this.selected == true) {
        this.selected = false;
      } else {
        this.selected = true;
      } //elemnt find by the class name


      var checkBoxClass = document.getElementsByClassName('select-all');

      for (var i = 0; i < checkBoxClass.length; i++) {
        //if select active then element set attribute check==true
        //element set attribute check==false
        if (this.selected == true) {
          checkBoxClass[i].checked = true;
        } else {
          checkBoxClass[i].checked = false;
        }
      } //at last push order id in selected_order_id arrow....
      //and agin check selected true or false.....


      if (this.selected == true) {
        for (var _i = 0; _i < this.orders.data.length; _i++) {
          this.select_order_id.push(this.orders.data[_i].id);
        }
      } else {
        this.select_order_id = [];
      }
    },
    //method inital for a bulk action
    selectBulkAction: function selectBulkAction() {
      if (this.select_order_id.length <= 0) {
        Swal.fire({
          type: 'warning',
          text: 'Please select at least one row'
        });
        return;
      }

      var action_type = this.bulkActionType;

      if (action_type == 'LABEL PRINT') {
        window.open('/order/label/print/' + this.select_order_id, '_blank');
      }

      if (action_type == 'INVOICE PRINT') {
        window.open('/order/invoice/print/' + this.select_order_id, '_blank');
      }

      if (action_type == 'EXPORT SELECT ITEM') {
        // alert('export select order');
        window.open('/export/selected/item/' + this.select_order_id, '_blank');
      }

      if (action_type == 'PENDING ALL') {
        if (confirm('are you sure')) {
          this.pendingAll(this.select_order_id);
        }

        return;
      }

      if (action_type == 'PACKAGING ALL') {
        if (confirm('are you sure')) {
          this.packagingAll(this.select_order_id);
        }

        return;
      }

      if (action_type == 'APPROVED ALL') {
        if (confirm('are you sure')) {
          this.apprvedAll(this.select_order_id);
        }

        return;
      }

      if (action_type == "SHIPMENT ALL") {
        if (confirm("are you sure")) {
          this.$modal.show("multi_order_shipment");
        }

        return;
      }

      if (action_type == 'DELIVERED ALL') {
        if (confirm('are you sure')) {
          this.deliveredAll(this.select_order_id);
        }

        return;
      }

      if (action_type == 'CANCEL ALL') {
        if (confirm('are you sure')) {
          this.cancelAll(this.select_order_id);
        }

        return;
      }

      if (action_type == 'RETURN ALLL') {
        if (confirm('are you sure')) {
          this.returnAll(this.select_order_id);
        }

        return;
      }

      if (action_type == "ORDER BULK ASSIGN TO COURIER") {
        if (confirm("are you sure")) {
          this.$modal.show("bulk_order_assign_to_courier");
        }

        return;
      }
    },
    labelPrint: function labelPrint() {
      window.open('', '_self', 'width=600,height=600');
    },
    pendingAll: function pendingAll(order_id) {
      var _this14 = this;

      axios.get('/pending/all/order/' + order_id).then(function (resp) {
        if (resp.data) {
          _this14.$toastr.s(resp.data.message);

          _this14.$router.push({
            name: 'order_stage',
            params: {
              status_code: 2,
              type: 'all'
            }
          });
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    bulkCourierSelect: function bulkCourierSelect() {
      var _this15 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee2() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee2$(_context2) {
          while (1) {
            switch (_context2.prev = _context2.next) {
              case 0:
                _this15.loading = true;
                _context2.next = 3;
                return axios.post("/api/order/bulk/assign/to/courier", {
                  courier_id: _this15.courier.courier_id,
                  orders_id: _this15.select_order_id
                }).then(function (resp) {
                  console.log(resp);

                  if (resp.data.success == true) {
                    _this15.$toastr.s(resp.data.message);

                    location.reload();
                  }
                })["catch"](function (error) {
                  _this15.$toastr.e(error.response.data.message);
                });

              case 3:
              case "end":
                return _context2.stop();
            }
          }
        }, _callee2);
      }))();
    },
    packagingAll: function packagingAll(order_id) {
      var _this16 = this;

      axios.get('/packaging/all/order/' + order_id).then(function (resp) {
        if (resp.data) {
          _this16.$toasted.show(resp.data, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this16.$router.push({
            name: 'order_stage',
            params: {
              status_code: 8,
              type: 'all'
            }
          });
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    shipmentAll: function shipmentAll() {
      var _this17 = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.mark(function _callee3() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default.a.wrap(function _callee3$(_context3) {
          while (1) {
            switch (_context3.prev = _context3.next) {
              case 0:
                _context3.next = 2;
                return axios.post('/shipment/all/order', {
                  courier_id: _this17.courier.courier_id,
                  memo_no: _this17.courier.memo_no,
                  orders_id: _this17.select_order_id
                }).then(function (resp) {
                  console.log(resp);

                  if (resp.data.status == 'OK') {
                    _this17.$toastr.s(resp.data.message);

                    _this17.$router.push({
                      name: 'order_stage',
                      params: {
                        status_code: 4,
                        type: 'all'
                      }
                    });
                  } else {
                    _this17.$toastr.e(resp.data);
                  }
                })["catch"](function (error) {
                  _this17.$toastr.e(error.response.data.message);
                });

              case 2:
              case "end":
                return _context3.stop();
            }
          }
        }, _callee3);
      }))();
    },
    deliveredAll: function deliveredAll(order_id) {
      var _this18 = this;

      axios.get('/delivered/all/order/' + order_id).then(function (resp) {
        if (resp.data) {
          _this18.$toasted.show(resp.data, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this18.$router.push({
            name: 'order_stage',
            params: {
              status_code: 5,
              type: 'all'
            }
          });
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    returnAll: function returnAll(order_id) {
      var _this19 = this;

      axios.get('/return/all/order/' + order_id).then(function (resp) {
        if (resp.data) {
          _this19.$toasted.show(resp.data, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this19.$router.push({
            name: 'order_stage',
            params: {
              status_code: 7,
              type: 'all'
            }
          });
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    cancelAll: function cancelAll(order_id) {
      var _this20 = this;

      axios.get('/cancel/all/order/' + order_id).then(function (resp) {
        if (resp.data) {
          _this20.$toasted.show(resp.data, {
            type: 'success',
            position: 'top-center',
            duration: 2000
          });

          _this20.$router.push({
            name: 'order_stage',
            params: {
              status_code: 6,
              type: 'all'
            }
          });
        }
      })["catch"](function (error) {
        console.log(error);
      });
    },
    comment: function comment(order_id, order_index, _comment) {
      var _this21 = this;

      console.log(_comment);
      var options = {};
      this.comments.forEach(function (element) {
        options[element.name] = element.name;
      });
      var sSelect = document.getElementsByClassName('swal2-select');
      Swal.fire({
        title: _comment ? _comment : 'Select a comment',
        input: 'select',
        inputOptions: options,
        inputPlaceholder: 'Select or change a comment',
        showCancelButton: true
      }).then(function (result) {
        if (result.value == 'others') {
          Swal.fire({
            input: 'text'
          }).then(function (other) {
            if (other.value) {
              axios.get('/api/order/comment', {
                params: {
                  order_id: order_id,
                  comment: other.value
                }
              }).then(function (resp) {
                console.log(resp);

                if (resp.data.status == 'OK') {
                  _this21.orders.data[order_index].comment = other.value;

                  _this21.$toasted.show(resp.data.message, {
                    type: 'success',
                    duration: 4000,
                    position: 'top-center'
                  });
                }
              });
            }
          });
        }

        if (result.value) {
          axios.get('/api/order/comment', {
            params: {
              order_id: order_id,
              comment: result.value
            }
          }).then(function (resp) {
            _this21.orders.data[order_index].comment = result.value;
            console.log(resp);
          })["catch"](function (e) {
            console.log(e);
          });
        } else {
          console.log('Ok');
        }
      });
    },
    exportPickList: function exportPickList() {
      if (this.select_order_id.length > 0) {
        window.open("/export/orders/pick-list/" + this.select_order_id, "_blank");
      } else {
        this.$toastr.e("select order items");
      }
    },
    exportForRedx: function exportForRedx() {
      if (this.select_order_id.length > 0) {
        window.open("/export/orders/for/redx/" + this.select_order_id, "_blank");
      } else {
        this.$toastr.e("select order items");
      }
    },
    exportForPathao: function exportForPathao() {
      if (this.select_order_id.length > 0) {
        window.open("/export/orders/for/pathao/" + this.select_order_id, "_blank");
      } else {
        this.$toastr.e("select order items");
      }
    },
    exportForeCourier: function exportForeCourier() {
      if (this.select_order_id.length > 0) {
        window.open("/export/orders/for/e-courier/" + this.select_order_id, "_blank");
      } else {
        this.$toastr.e("select order items");
      }
    },
    exportForSteadFast: function exportForSteadFast() {
      if (this.select_order_id.length > 0) {
        window.open("/export/orders/for/steadfast/" + this.select_order_id, "_blank");
      } else {
        this.$toastr.e("select order items");
      }
    },
    filterOrderAccordingToDays: function filterOrderAccordingToDays() {
      if (this.filtering_date_value == "today") {
        this.start_date = this.currentDate();
        this.end_date = this.currentDate();
        this.ordersList();
      } else if (this.filtering_date_value == "yesterday") {
        this.start_date = this.previousDate(new Date(Date.now() - 1 * 24 * 60 * 60 * 1000));
        this.end_date = this.previousDate(new Date(Date.now() - 1 * 24 * 60 * 60 * 1000));
        this.ordersList();
      } else if (this.filtering_date_value == "last 7 days") {
        this.start_date = this.previousDate(new Date(Date.now() - 7 * 24 * 60 * 60 * 1000));
        this.end_date = this.currentDate();
        this.ordersList();
      } else if (this.filtering_date_value == "last 30 days") {
        this.start_date = this.previousDate(new Date(Date.now() - 30 * 24 * 60 * 60 * 1000));
        ;
        this.end_date = this.currentDate();
        this.ordersList();
      } else if (this.filtering_date_value == "this month") {
        var d = new Date();
        var month = d.getMonth() + 1;
        var first_day_of_month = d.getFullYear() + "-" + (("" + month).length < 2 ? "0" : "") + month + "-01";
        this.start_date = first_day_of_month;
        this.end_date = this.currentDate();
        this.ordersList();
      } else if (this.filtering_date_value == "this year") {
        var _d = new Date();

        var first_month_of_year = _d.getFullYear() + "-01-01";
        this.start_date = first_month_of_year;
        this.end_date = this.currentDate();
        this.ordersList();
      } else if (this.filtering_date_value == "last year") {
        var date = new Date();
        this.start_date = date.getFullYear() - 1 + "-01-01";
        this.end_date = date.getFullYear() - 1 + "-12-31";
        this.ordersList();
      }
    },
    currentDate: function currentDate() {
      var d = new Date();
      var month = d.getMonth() + 1;
      var day = d.getDate();
      var output = d.getFullYear() + "-" + (("" + month).length < 2 ? "0" : "") + month + "-" + (("" + day).length < 2 ? "0" : "") + day;
      return output;
    },
    previousDate: function previousDate(date) {
      var month = date.getMonth() + 1;
      var day = date.getDate();
      var output = date.getFullYear() + "-" + (("" + month).length < 2 ? "0" : "") + month + "-" + (("" + day).length < 2 ? "0" : "") + day;
      return output;
    },
    balance: function balance() {
      var _this22 = this;

      axios.get('/api/balance/list').then(function (resp) {
        if (resp.data.success == 'OK') {
          _this22.balances = resp.data.balance;
        }
      });
    },
    openReturnChargeModal: function openReturnChargeModal(order, index) {
      this.$modal.show('return_delivery_cost');
      this.order_id = order.id;
      this.order_index = index;
    },
    returnOrderWithCost: function returnOrderWithCost() {
      var _this23 = this;

      this.$Progress.start();
      this.form.post('/api/order/return/with/charge/' + this.order_id).then(function (resp) {
        _this23.$Progress.finish();

        if (resp.data.success == true) {
          _this23.$modal.hide('return_delivery_cost');

          _this23.$toastr.s(resp.data.message);

          _this23.orders.data[_this23.order_index].status = 4;

          _this23.ordersList();
        }
      })["catch"](function (error) {
        _this23.$toastr.e(resp.data.message);
      });
    }
  },
  watch: {
    status: function status(value) {
      if (value == 1) {
        this.heading = 'New Orders';
      } else if (value == 2) {
        this.heading = 'Pending Orders';
      } else if (value == 3) {
        this.heading = 'Approved Orders';
      } else if (value == 4) {
        this.heading = 'Shipment Orders';
      } else if (value == 5) {
        this.heading = 'Delivered Orders';
      } else if (value == 7) {
        this.heading = 'Return Orders';
      } else if (value == 6) {
        this.heading = 'Cancel Orders';
      } else if (value == 8) {
        this.heading = 'Packaging Orders';
      } else {
        this.heading = 'All Orders';
      }
    },
    start_date: function start_date(value) {
      if (value.length > 1) {
        this.ordersList();
      }
    },
    end_date: function end_date(value) {
      if (value.length > 1) {
        this.ordersList();
      }
    },
    bulkActionType: function bulkActionType(value) {
      this.selectBulkAction();
    },
    courier_id: function courier_id(value) {
      this.ordersList();
    },
    '$route.params.status_code': function $routeParamsStatus_code(code) {
      this.status = code;
      this.ordersList();
    },
    //     $route(to, from) {
    //              this.ordersList();
    // }
    '$route.params.type': function $routeParamsType(type) {
      this.type = type;
      this.ordersList();
    }
  },
  beforeRouteEnter: function beforeRouteEnter(to, from, next) {
    next(function (vm) {
      vm.pre_route = from.name;
      console.log(from.name);
    });
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css&":
/*!********************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css& ***!
  \********************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.order_search_container {\n        display: flex;\n}\n.search_type_field {\n        width: 130px;\n        background: #00a65a;\n        color: #fff;\n        border: none !important;\n}\n.router-link-exact-active {\n        background-color: #3c8dbc;\n        padding: 6px 12px !important;\n}\n.export_container {\n        margin: 20px;\n}\n.export_container > a {\n        text-align: left;\n        margin-bottom: 20px;\n        width: 240px;\n}\n.orders_customer_info > p {\n        line-height: 14px;\n        padding-right: 10px;\n}\n.orders_p_list {\n        list-style-type: none;\n        margin-left: -50px;\n}\n.orders_p_list > li {\n        padding: 15px 0px;\n}\n.orders_p_container {\n        display: flex;\n}\n.orders_p_container > img {\n        max-width: 80px;\n        max-height: 80px;\n        cursor: pointer;\n}\n.orders_p_container > img:hover {\n        transform: scale(4, 4);\n        z-index: 99999;\n}\n@media screen and (max-width: 768px) {\n.search_type_field {\n        margin: 6px 0px;\n}\n.customer_phone_field {\n        margin: 6px 0px;\n        width: 100% !important;\n}\n.btn_t_a {\n        margin-top: 7px;\n}\n.date_column {\n        margin-top: 7px;\n        min-height: 40px;\n}\n.col-xs-12 {\n        width: 100% !important;\n}\n}\n   \n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Orders.vue?vue&type=style&index=0&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css&");

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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=template&id=7cdfd0c2&":
/*!**********************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=template&id=7cdfd0c2& ***!
  \**********************************************************************************************************************************************************************************************************************************/
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
  return _c("div", [
    _c(
      "div",
      { staticClass: "order_statistic" },
      [
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 1,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.new_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("New")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/online-order.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 2,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.pending_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Pending")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/box.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 3,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.approved_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Approved")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/check-mark.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 8,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.packaging_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Packaging")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/shipment.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 4,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.shipment_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Shipment")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/shipment.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 5,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.delivered_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Delivered")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/package.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 7,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.return_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Return")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/return-box.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: 6,
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.cancel_order))]),
            _vm._v(" "),
            _c("p", [_vm._v("Cancel")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/cancel.png" }
            })
          ]
        ),
        _vm._v(" "),
        _c(
          "router-link",
          {
            staticClass: "statistic_item",
            attrs: {
              to: {
                name: "order_stage",
                params: {
                  status_code: "all",
                  type: "all"
                }
              }
            }
          },
          [
            _c("h2", [_vm._v(_vm._s(_vm.order_count.total))]),
            _vm._v(" "),
            _c("p", [_vm._v("All")]),
            _vm._v(" "),
            _c("img", {
              staticClass: "status_img_icon",
              attrs: { src: _vm.base_url + "images/static/list.png" }
            })
          ]
        )
      ],
      1
    )
  ])
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=template&id=31e1f773&":
/*!*****************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/admin/order/Orders.vue?vue&type=template&id=31e1f773& ***!
  \*****************************************************************************************************************************************************************************************************************************/
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
        this.type != 4
          ? _c(
              "section",
              { staticClass: "content-header" },
              [_c("OrderStatus", { attrs: { order_count: _vm.order_count } })],
              1
            )
          : _vm._e(),
        _vm._v(" "),
        _c("section", { staticClass: "content" }, [
          _c("div", { staticClass: "container" }, [
            _c("div", { staticClass: "row justify-content-center" }, [
              _c(
                "div",
                { staticClass: "col-lg-12 col-md-12 col-sm-12 col-xs-12" },
                [
                  _c("div", { staticClass: "box box-primary" }, [
                    _c("div", { staticClass: "box-header with-border" }, [
                      _c(
                        "div",
                        {
                          staticClass: "row",
                          staticStyle: { "margin-bottom": "5px" }
                        },
                        [
                          _c("div", { staticClass: "col-lg-5" }),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-4 col-sm-12" }, [
                            _c(
                              "h3",
                              { staticClass: "box-title orders-heading" },
                              [_vm._v(_vm._s(_vm.heading))]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-1 select_action" }, [
                            _c(
                              "button",
                              {
                                staticClass: "btn btn-primary btn-block",
                                attrs: { type: "button" },
                                on: { click: _vm.resetAll }
                              },
                              [_c("i", { staticClass: "fa fa-refresh" })]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-2" }, [
                            _vm.start_date.length > 0
                              ? _c(
                                  "select",
                                  {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.item,
                                        expression: "item"
                                      }
                                    ],
                                    staticClass: "form-control",
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
                                          _vm.item = $event.target.multiple
                                            ? $$selectedVal
                                            : $$selectedVal[0]
                                        },
                                        _vm.filterOrder
                                      ]
                                    }
                                  },
                                  [
                                    _c("option", { attrs: { value: "10" } }, [
                                      _vm._v("10")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "30" } }, [
                                      _vm._v("30")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "50" } }, [
                                      _vm._v("50")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "100" } }, [
                                      _vm._v("100")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "150" } }, [
                                      _vm._v("150")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "200" } }, [
                                      _vm._v("200")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "250" } }, [
                                      _vm._v("250")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "300" } }, [
                                      _vm._v("300")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "400" } }, [
                                      _vm._v("400")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "500" } }, [
                                      _vm._v("500")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "700" } }, [
                                      _vm._v("700")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "900" } }, [
                                      _vm._v("900")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "1000" } }, [
                                      _vm._v("1000")
                                    ])
                                  ]
                                )
                              : _c(
                                  "select",
                                  {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.item,
                                        expression: "item"
                                      }
                                    ],
                                    staticClass: "form-control",
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
                                          _vm.item = $event.target.multiple
                                            ? $$selectedVal
                                            : $$selectedVal[0]
                                        },
                                        _vm.ordersList
                                      ]
                                    }
                                  },
                                  [
                                    _c("option", { attrs: { value: "10" } }, [
                                      _vm._v("10")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "30" } }, [
                                      _vm._v("30")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "50" } }, [
                                      _vm._v("50")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "100" } }, [
                                      _vm._v("100")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "150" } }, [
                                      _vm._v("150")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "200" } }, [
                                      _vm._v("200")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "250" } }, [
                                      _vm._v("250")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "300" } }, [
                                      _vm._v("300")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "400" } }, [
                                      _vm._v("400")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "500" } }, [
                                      _vm._v("500")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "700" } }, [
                                      _vm._v("700")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "900" } }, [
                                      _vm._v("900")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "1000" } }, [
                                      _vm._v("1000")
                                    ])
                                  ]
                                )
                          ])
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "div",
                        {
                          staticClass: "row",
                          staticStyle: { "margin-bottom": "3px" }
                        },
                        [
                          _c("div", { staticClass: "col-lg-2" }, [
                            _c(
                              "select",
                              {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.bulkActionType,
                                    expression: "bulkActionType"
                                  }
                                ],
                                staticClass: "form-control select_action",
                                attrs: { name: "", id: "" },
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
                                    _vm.bulkActionType = $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
                                  }
                                }
                              },
                              [
                                _c(
                                  "option",
                                  {
                                    attrs: {
                                      value: "0",
                                      selected: "",
                                      disabled: ""
                                    }
                                  },
                                  [_vm._v(" Select Action ")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "LABEL PRINT" } },
                                  [_vm._v("Label Print")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "INVOICE PRINT" } },
                                  [_vm._v("Invoice Print")]
                                ),
                                _vm._v(" "),
                                this.$route.params.status_code == 8
                                  ? _c(
                                      "option",
                                      {
                                        attrs: {
                                          value: "ORDER BULK ASSIGN TO COURIER"
                                        }
                                      },
                                      [
                                        _vm._v(
                                          " Orders Send To Courier (by API) "
                                        )
                                      ]
                                    )
                                  : _vm._e(),
                                _vm._v(" "),
                                this.$route.params.status_code == 3
                                  ? _c(
                                      "option",
                                      { attrs: { value: "PACKAGING ALL" } },
                                      [_vm._v("Packaging All")]
                                    )
                                  : _vm._e(),
                                _vm._v(" "),
                                this.$route.params.status_code == 8
                                  ? _c(
                                      "option",
                                      { attrs: { value: "SHIPMENT ALL" } },
                                      [_vm._v("Shipment All")]
                                    )
                                  : _vm._e(),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "EXPORT SELECT ITEM" } },
                                  [_vm._v(" Export Selected ")]
                                )
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "col-lg-2 col-xs-12" },
                            [
                              _c(
                                "router-link",
                                {
                                  attrs: {
                                    to: {
                                      name:
                                        this.type == "all"
                                          ? "addOrder"
                                          : (this, _vm.type == 3)
                                          ? "addWholeSale"
                                          : (this, _vm.type == 4)
                                          ? "reseller_sell"
                                          : ""
                                    }
                                  }
                                },
                                [
                                  _c(
                                    "button",
                                    {
                                      staticClass: "btn btn-success btn-block"
                                    },
                                    [
                                      _vm._v(
                                        "\n                                                Add New Order\n                                            "
                                      )
                                    ]
                                  )
                                ]
                              )
                            ],
                            1
                          ),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-4 col-xs-12" }, [
                            _c(
                              "div",
                              { staticClass: "order_search_container" },
                              [
                                _c("input", {
                                  directives: [
                                    {
                                      name: "model",
                                      rawName: "v-model",
                                      value: _vm.search,
                                      expression: "search"
                                    }
                                  ],
                                  staticClass:
                                    "form-control customer_phone_field",
                                  attrs: {
                                    placeholder:
                                      _vm.search_type == 1
                                        ? "type invoice  or customer phone"
                                        : "type product code"
                                  },
                                  domProps: { value: _vm.search },
                                  on: {
                                    keyup: _vm.orderSearch,
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
                                  "select",
                                  {
                                    directives: [
                                      {
                                        name: "model",
                                        rawName: "v-model",
                                        value: _vm.search_type,
                                        expression: "search_type"
                                      }
                                    ],
                                    staticClass:
                                      "form-control search_type_field",
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
                                          _vm.search_type = $event.target
                                            .multiple
                                            ? $$selectedVal
                                            : $$selectedVal[0]
                                        },
                                        _vm.ordersList
                                      ]
                                    }
                                  },
                                  [
                                    _c("option", { attrs: { value: "1" } }, [
                                      _vm._v(" Order ")
                                    ]),
                                    _vm._v(" "),
                                    _c("option", { attrs: { value: "2" } }, [
                                      _vm._v(" Product ")
                                    ])
                                  ]
                                )
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "col-lg-2 col-xs-12 select_action" },
                            [
                              _c(
                                "a",
                                {
                                  staticClass: "btn btn-success btn-block",
                                  on: {
                                    click: function($event) {
                                      return _vm.$modal.show(
                                        "export_order_for_courier"
                                      )
                                    }
                                  }
                                },
                                [
                                  _c("i", { staticClass: "fa fa-download" }),
                                  _vm._v(
                                    " Export For Courier\n                                        "
                                  )
                                ]
                              )
                            ]
                          ),
                          _vm._v(" "),
                          _c(
                            "div",
                            { staticClass: "col-lg-2 col-xs-12 select_action" },
                            [
                              _c(
                                "a",
                                {
                                  staticClass: "btn btn-success btn-block",
                                  on: { click: _vm.exportPickList }
                                },
                                [
                                  _c("i", { staticClass: "fa fa-download" }),
                                  _vm._v(
                                    " PickList\n                                        "
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                      _vm._v(" "),
                      _c(
                        "div",
                        {
                          staticClass: "row",
                          staticStyle: { "margin-bottom": "3px" }
                        },
                        [
                          _c("div", { staticClass: "col-lg-2" }, [
                            _c(
                              "select",
                              {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.type,
                                    expression: "type"
                                  }
                                ],
                                staticClass: "form-control select_action",
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
                                      _vm.type = $event.target.multiple
                                        ? $$selectedVal
                                        : $$selectedVal[0]
                                    },
                                    _vm.ordersList
                                  ]
                                }
                              },
                              [
                                _c("option", { attrs: { value: "all" } }, [
                                  _vm._v("All type")
                                ]),
                                _vm._v(" "),
                                _c("option", { attrs: { value: "2" } }, [
                                  _vm._v("Only Admin")
                                ]),
                                _vm._v(" "),
                                _c("option", { attrs: { value: "1" } }, [
                                  _vm._v("Only Customer")
                                ]),
                                _vm._v(" "),
                                _c("option", { attrs: { value: "3" } }, [
                                  _vm._v("Whole Sale")
                                ])
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-2" }, [
                            _c(
                              "select",
                              {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.courier_id,
                                    expression: "courier_id"
                                  }
                                ],
                                staticClass: "form-control select_action",
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
                                    _vm.courier_id = $event.target.multiple
                                      ? $$selectedVal
                                      : $$selectedVal[0]
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
                                      "\n                                                Select Courier\n                                            "
                                    )
                                  ]
                                ),
                                _vm._v(" "),
                                _vm._l(_vm.couriers, function(courier) {
                                  return _c(
                                    "option",
                                    {
                                      key: courier.id,
                                      domProps: { value: courier.id }
                                    },
                                    [
                                      _vm._v(
                                        "\n                                                " +
                                          _vm._s(courier.name) +
                                          "\n                                            "
                                      )
                                    ]
                                  )
                                })
                              ],
                              2
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-4" }, [
                            _c(
                              "form",
                              {
                                on: {
                                  submit: function($event) {
                                    $event.preventDefault()
                                    return _vm.filterOrder($event)
                                  }
                                }
                              },
                              [
                                _c("div", { staticClass: "row" }, [
                                  _c(
                                    "div",
                                    { staticClass: "col-lg-6 select_action" },
                                    [
                                      _c("input", {
                                        directives: [
                                          {
                                            name: "model",
                                            rawName: "v-model",
                                            value: _vm.start_date,
                                            expression: "start_date"
                                          }
                                        ],
                                        staticClass: "form-control",
                                        attrs: {
                                          type: "date",
                                          config: _vm.options
                                        },
                                        domProps: { value: _vm.start_date },
                                        on: {
                                          input: function($event) {
                                            if ($event.target.composing) {
                                              return
                                            }
                                            _vm.start_date = $event.target.value
                                          }
                                        }
                                      })
                                    ]
                                  ),
                                  _vm._v(" "),
                                  _c(
                                    "div",
                                    { staticClass: "col-lg-6 select_action" },
                                    [
                                      _c("input", {
                                        directives: [
                                          {
                                            name: "model",
                                            rawName: "v-model",
                                            value: _vm.end_date,
                                            expression: "end_date"
                                          }
                                        ],
                                        staticClass: "form-control",
                                        attrs: {
                                          type: "date",
                                          config: _vm.options
                                        },
                                        domProps: { value: _vm.end_date },
                                        on: {
                                          input: function($event) {
                                            if ($event.target.composing) {
                                              return
                                            }
                                            _vm.end_date = $event.target.value
                                          }
                                        }
                                      })
                                    ]
                                  )
                                ])
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-2 col-xs-12" }, [
                            _c(
                              "select",
                              {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.filtering_date_value,
                                    expression: "filtering_date_value"
                                  }
                                ],
                                staticClass: "form-control",
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
                                      _vm.filtering_date_value = $event.target
                                        .multiple
                                        ? $$selectedVal
                                        : $$selectedVal[0]
                                    },
                                    _vm.filterOrderAccordingToDays
                                  ]
                                }
                              },
                              [
                                _c(
                                  "option",
                                  { attrs: { value: "", disabled: "" } },
                                  [_vm._v("Filter By Days")]
                                ),
                                _vm._v(" "),
                                _c("option", { attrs: { value: "today" } }, [
                                  _vm._v("Today")
                                ]),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "yesterday" } },
                                  [_vm._v("Yesterday")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "last 7 days" } },
                                  [_vm._v("Last 7 Days")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "last 30 days" } },
                                  [_vm._v("Last 30 Days")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "this month" } },
                                  [_vm._v("This Month")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "this year" } },
                                  [_vm._v("This Year")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "option",
                                  { attrs: { value: "last year" } },
                                  [_vm._v("Last Year")]
                                )
                              ]
                            )
                          ]),
                          _vm._v(" "),
                          _c("div", { staticClass: "col-lg-2" }, [
                            _c(
                              "select",
                              {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.city,
                                    expression: "city"
                                  }
                                ],
                                staticClass: "form-control",
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
                                      _vm.city = $event.target.multiple
                                        ? $$selectedVal
                                        : $$selectedVal[0]
                                    },
                                    _vm.ordersList
                                  ]
                                }
                              },
                              [
                                _c("option", { attrs: { value: "all" } }, [
                                  _vm._v("Select City")
                                ]),
                                _vm._v(" "),
                                _c("option", { attrs: { value: "1" } }, [
                                  _vm._v("Inside City")
                                ]),
                                _vm._v(" "),
                                _c("option", { attrs: { value: "2" } }, [
                                  _vm._v("Outside City")
                                ])
                              ]
                            )
                          ])
                        ]
                      )
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "box-body" }, [
                      _c(
                        "table",
                        {
                          staticClass:
                            "table table-bordered table-responsive table-centered table-striped table-hover"
                        },
                        [
                          _c("thead", [
                            _c("tr", [
                              _c("th", { attrs: { width: "5%" } }, [
                                _c("input", {
                                  attrs: { type: "checkbox" },
                                  on: { click: _vm.selectAll }
                                })
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "7%" } }, [
                                _vm._v("Customer")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "10%" } }, [
                                _vm._v("Product")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "5%" } }, [
                                _vm._v("Invoice")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "10%" } }, [
                                _vm._v("Total")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "25%" } }, [
                                _vm._v("Activities")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "5%" } }, [
                                _vm._v("Action")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "10%" } }, [
                                _vm._v("Courier")
                              ]),
                              _vm._v(" "),
                              _c("th", { attrs: { width: "10%" } }, [
                                _vm._v("Comment")
                              ])
                            ])
                          ]),
                          _vm._v(" "),
                          _c(
                            "tbody",
                            [
                              _vm.loading
                                ? _c("h1", [
                                    _c("i", {
                                      staticClass: "fa fa-spin fa-spinner"
                                    })
                                  ])
                                : _vm._l(_vm.orders.data, function(
                                    order,
                                    index
                                  ) {
                                    return _c("tr", { key: index }, [
                                      _c("td", [
                                        _c("input", {
                                          directives: [
                                            {
                                              name: "model",
                                              rawName: "v-model",
                                              value: _vm.select_order_id,
                                              expression: "select_order_id"
                                            }
                                          ],
                                          staticClass: "select-all",
                                          attrs: { type: "checkbox" },
                                          domProps: {
                                            value: order.id,
                                            checked: Array.isArray(
                                              _vm.select_order_id
                                            )
                                              ? _vm._i(
                                                  _vm.select_order_id,
                                                  order.id
                                                ) > -1
                                              : _vm.select_order_id
                                          },
                                          on: {
                                            change: function($event) {
                                              var $$a = _vm.select_order_id,
                                                $$el = $event.target,
                                                $$c = $$el.checked
                                                  ? true
                                                  : false
                                              if (Array.isArray($$a)) {
                                                var $$v = order.id,
                                                  $$i = _vm._i($$a, $$v)
                                                if ($$el.checked) {
                                                  $$i < 0 &&
                                                    (_vm.select_order_id = $$a.concat(
                                                      [$$v]
                                                    ))
                                                } else {
                                                  $$i > -1 &&
                                                    (_vm.select_order_id = $$a
                                                      .slice(0, $$i)
                                                      .concat(
                                                        $$a.slice($$i + 1)
                                                      ))
                                                }
                                              } else {
                                                _vm.select_order_id = $$c
                                              }
                                            }
                                          }
                                        })
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c("div", {}, [
                                          _c(
                                            "div",
                                            {
                                              staticStyle: { margin: "5px 0px" }
                                            },
                                            [
                                              _vm._v(
                                                "\n                                                        " +
                                                  _vm._s(
                                                    order.customer
                                                      ? order.customer.name
                                                      : ""
                                                  ) +
                                                  "\n                                                    "
                                              )
                                            ]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "div",
                                            {
                                              staticStyle: { margin: "5px 0px" }
                                            },
                                            [
                                              _c(
                                                "a",
                                                {
                                                  attrs: {
                                                    href:
                                                      "tel:" +
                                                      order.customer_phone
                                                  }
                                                },
                                                [
                                                  _c("strong", [
                                                    _vm._v(
                                                      _vm._s(
                                                        order.customer_phone
                                                      )
                                                    )
                                                  ])
                                                ]
                                              )
                                            ]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "div",
                                            {
                                              staticStyle: { margin: "5px 0px" }
                                            },
                                            [
                                              _vm._v(
                                                "\n                                                        " +
                                                  _vm._s(
                                                    order.customer
                                                      ? order.customer.address
                                                      : ""
                                                  ) +
                                                  "\n                                                    "
                                              )
                                            ]
                                          ),
                                          _vm._v(" "),
                                          _c(
                                            "div",
                                            {
                                              staticStyle: { margin: "5px 0px" }
                                            },
                                            [
                                              _vm._v(
                                                "\n                                                        " +
                                                  _vm._s(
                                                    order.customer
                                                      ? order.customer
                                                          .order_status
                                                      : ""
                                                  ) +
                                                  "\n                                                    "
                                              )
                                            ]
                                          ),
                                          _vm._v(" "),
                                          order.customer.status == 1
                                            ? _c(
                                                "div",
                                                {
                                                  staticClass:
                                                    "customer_records"
                                                },
                                                [
                                                  _c(
                                                    "p",
                                                    { staticClass: "regular" },
                                                    [_vm._v(" Regular ")]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "p",
                                                    {
                                                      staticClass: "total_order"
                                                    },
                                                    [
                                                      _vm._v(
                                                        " " +
                                                          _vm._s(
                                                            order.customer
                                                              .total_order
                                                          ) +
                                                          " "
                                                      )
                                                    ]
                                                  )
                                                ]
                                              )
                                            : order.customer.status == 2
                                            ? _c(
                                                "div",
                                                {
                                                  staticClass:
                                                    "customer_records"
                                                },
                                                [
                                                  _c(
                                                    "p",
                                                    { staticClass: "regular" },
                                                    [_vm._v(" Regular ")]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "p",
                                                    {
                                                      staticClass: "total_order"
                                                    },
                                                    [
                                                      _vm._v(
                                                        " " +
                                                          _vm._s(
                                                            order.customer
                                                              .total_order
                                                          ) +
                                                          " "
                                                      )
                                                    ]
                                                  )
                                                ]
                                              )
                                            : order.customer.status == 3
                                            ? _c(
                                                "div",
                                                {
                                                  staticClass:
                                                    "customer_records"
                                                },
                                                [
                                                  _c(
                                                    "p",
                                                    { staticClass: "vip" },
                                                    [_vm._v(" VIP ")]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "p",
                                                    {
                                                      staticClass: "total_order"
                                                    },
                                                    [
                                                      _vm._v(
                                                        " " +
                                                          _vm._s(
                                                            order.customer
                                                              .total_order
                                                          ) +
                                                          " "
                                                      )
                                                    ]
                                                  )
                                                ]
                                              )
                                            : order.customer.status == 4
                                            ? _c(
                                                "div",
                                                {
                                                  staticClass:
                                                    "customer_records"
                                                },
                                                [
                                                  _c(
                                                    "p",
                                                    { staticClass: "fraud" },
                                                    [_vm._v(" Fraud ")]
                                                  ),
                                                  _vm._v(" "),
                                                  _c(
                                                    "p",
                                                    {
                                                      staticClass: "total_order"
                                                    },
                                                    [
                                                      _vm._v(
                                                        " " +
                                                          _vm._s(
                                                            order.customer
                                                              .total_order
                                                          ) +
                                                          " "
                                                      )
                                                    ]
                                                  )
                                                ]
                                              )
                                            : _vm._e()
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        order.order_item.length > 0
                                          ? _c(
                                              "ul",
                                              { staticClass: "orders_p_list" },
                                              _vm._l(order.order_item, function(
                                                item,
                                                index
                                              ) {
                                                return index < 5
                                                  ? _c("li", { key: index }, [
                                                      item.product
                                                        ? _c(
                                                            "div",
                                                            {
                                                              staticClass:
                                                                "orders_p_container"
                                                            },
                                                            [
                                                              _c("img", {
                                                                attrs: {
                                                                  src:
                                                                    _vm.base_url +
                                                                    item.product
                                                                      .thumbnail_img
                                                                }
                                                              }),
                                                              _vm._v(" "),
                                                              item.size
                                                                ? _c("sup", [
                                                                    _vm._v(
                                                                      _vm._s(
                                                                        item.size
                                                                          ? item.size
                                                                          : ""
                                                                      )
                                                                    )
                                                                  ])
                                                                : _vm._e()
                                                            ]
                                                          )
                                                        : _vm._e(),
                                                      _vm._v(" "),
                                                      _c("p", [
                                                        _vm._v(
                                                          "\n                                                            " +
                                                            _vm._s(
                                                              item.product.name
                                                                .substring(
                                                                  0,
                                                                  35
                                                                )
                                                                .concat("...") +
                                                                "-" +
                                                                item.product
                                                                  .product_code
                                                            ) +
                                                            "\n                                                        "
                                                        )
                                                      ])
                                                    ])
                                                  : _vm._e()
                                              }),
                                              0
                                            )
                                          : _vm._e()
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _vm._v(_vm._s(order.invoice_no))
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c("b", [
                                          _c("strong", [
                                            _vm._v(
                                              "\n                                                        Total:\n                                                        " +
                                                _vm._s(
                                                  parseInt(order.total) -
                                                    parseInt(order.discount) +
                                                    parseInt(
                                                      order.shipping_cost
                                                    )
                                                ) +
                                                "\n                                                    "
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("br"),
                                          _vm._v(" "),
                                          _c("strong", [
                                            _vm._v(
                                              "\n                                                        Paid: " +
                                                _vm._s(parseInt(order.paid)) +
                                                "\n                                                    "
                                            )
                                          ]),
                                          _vm._v(" "),
                                          _c("br"),
                                          _vm._v(" "),
                                          _c("strong", [
                                            _vm._v(
                                              "\n                                                        Due:\n                                                        " +
                                                _vm._s(
                                                  parseInt(order.total) -
                                                    (parseInt(order.discount) +
                                                      parseInt(order.paid)) +
                                                    parseInt(
                                                      order.shipping_cost
                                                    )
                                                ) +
                                                "\n                                                    "
                                            )
                                          ])
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c("div", [
                                          _c("span", [_vm._v(" Status : ")]),
                                          _vm._v(" "),
                                          order.status == 1
                                            ? _c(
                                                "span",
                                                { staticClass: "badge" },
                                                [_vm._v("New")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 2
                                            ? _c(
                                                "span",
                                                { staticClass: "badge" },
                                                [_vm._v("Pending")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 3
                                            ? _c(
                                                "span",
                                                {
                                                  staticClass:
                                                    "badge badge-success"
                                                },
                                                [_vm._v("Approved")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 8
                                            ? _c(
                                                "span",
                                                {
                                                  staticClass:
                                                    "badge badge-packaging"
                                                },
                                                [_vm._v("Packaging")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 4
                                            ? _c(
                                                "span",
                                                {
                                                  staticClass:
                                                    "badge badge-primary"
                                                },
                                                [_vm._v("Shipment")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 5
                                            ? _c(
                                                "span",
                                                {
                                                  staticClass:
                                                    "badge badge-warning"
                                                },
                                                [_vm._v("Delivered")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 6
                                            ? _c(
                                                "span",
                                                {
                                                  staticClass:
                                                    "badge badge-danger"
                                                },
                                                [_vm._v("Cancel")]
                                              )
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.status == 7
                                            ? _c(
                                                "span",
                                                {
                                                  staticClass:
                                                    "badge badge-danger"
                                                },
                                                [_vm._v("Return")]
                                              )
                                            : _vm._e()
                                        ]),
                                        _vm._v(" "),
                                        _c("div", [
                                          _vm._v(
                                            "Order Date : " +
                                              _vm._s(order.created_at)
                                          )
                                        ]),
                                        _vm._v(" "),
                                        order.order_type == 1
                                          ? _c("div", [
                                              _vm._v(
                                                "\n                                                    Created By : customer\n                                                    "
                                              ),
                                              order.approved_by != undefined ||
                                              order.approved_by != null
                                                ? _c("div", [
                                                    _vm._v(
                                                      "\n                                                        Approved By : Admin ||\n                                                        "
                                                    ),
                                                    _c("strong", [
                                                      _vm._v(
                                                        _vm._s(
                                                          order.approved_by.name
                                                        )
                                                      )
                                                    ])
                                                  ])
                                                : _vm._e()
                                            ])
                                          : _vm._e(),
                                        _vm._v(" "),
                                        _c("div", [
                                          order.order_type == 2
                                            ? _c("div", [
                                                _vm._v(
                                                  "\n                                                        Created By : Admin ||\n                                                        "
                                                ),
                                                _c("strong", [
                                                  _vm._v(
                                                    _vm._s(
                                                      order.create_admin.name
                                                    )
                                                  )
                                                ]),
                                                _vm._v(" "),
                                                order.approved_by !=
                                                  undefined ||
                                                order.approved_by != null
                                                  ? _c("div", [
                                                      _vm._v(
                                                        "\n                                                            Approved By : Admin ||\n                                                            "
                                                      ),
                                                      _c("strong", [
                                                        _vm._v(
                                                          _vm._s(
                                                            order.approved_by
                                                              .name
                                                          )
                                                        )
                                                      ])
                                                    ])
                                                  : _vm._e()
                                              ])
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.order_type == 3
                                            ? _c("div", [
                                                _vm._v(
                                                  "\n                                                        Created By : Whole sale ||\n                                                        "
                                                ),
                                                _c("strong", [
                                                  _vm._v(
                                                    _vm._s(
                                                      order.create_admin.name
                                                    )
                                                  )
                                                ]),
                                                _vm._v(" "),
                                                order.approved_by !=
                                                  undefined ||
                                                order.approved_by != null
                                                  ? _c("div", [
                                                      _vm._v(
                                                        "\n                                                            Approved By : Admin ||\n                                                            "
                                                      ),
                                                      _c("strong", [
                                                        _vm._v(
                                                          _vm._s(
                                                            order.approved_by
                                                              .name
                                                          )
                                                        )
                                                      ])
                                                    ])
                                                  : _vm._e()
                                              ])
                                            : _vm._e(),
                                          _vm._v(" "),
                                          order.order_type == 4
                                            ? _c("div", [
                                                _vm._v(
                                                  "\n                                                        Created By : Reseller ||\n                                                        " +
                                                    _vm._s(
                                                      order.reseller &&
                                                        order.reseller.name
                                                    ) +
                                                    "\n                                                        "
                                                ),
                                                order.reseller &&
                                                order.reseller.phone
                                                  ? _c("strong", [
                                                      _c(
                                                        "a",
                                                        {
                                                          attrs: {
                                                            href:
                                                               true &&
                                                              order.reseller
                                                                .phone
                                                          }
                                                        },
                                                        [
                                                          _vm._v(
                                                            _vm._s(
                                                              order.reseller &&
                                                                order.reseller
                                                                  .phone
                                                            ) +
                                                              "\n                                                            "
                                                          )
                                                        ]
                                                      )
                                                    ])
                                                  : _vm._e(),
                                                _vm._v(" "),
                                                order.approved_by !=
                                                  undefined ||
                                                order.approved_by != null
                                                  ? _c("div", [
                                                      _vm._v(
                                                        "\n                                                            Approved By : Admin ||\n                                                            "
                                                      ),
                                                      _c("strong", [
                                                        _vm._v(
                                                          _vm._s(
                                                            order.approved_by
                                                              .name
                                                          )
                                                        )
                                                      ])
                                                    ])
                                                  : _vm._e()
                                              ])
                                            : _vm._e()
                                        ])
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        _c(
                                          "button",
                                          {
                                            staticClass: "btn btn-success",
                                            on: {
                                              click: function($event) {
                                                return _vm.orderAction(order.id)
                                              }
                                            }
                                          },
                                          [
                                            _vm._v(
                                              "\n                                                    -- "
                                            ),
                                            _c("i", {
                                              staticClass: "fa fa-bars"
                                            }),
                                            _vm._v(
                                              " --\n                                                "
                                            )
                                          ]
                                        ),
                                        _vm._v(" "),
                                        _c(
                                          "div",
                                          {
                                            staticClass: "action_container",
                                            attrs: {
                                              id: "order_action_" + order.id
                                            }
                                          },
                                          [
                                            order.status == 2 ||
                                            order.status == 1 ||
                                            order.status == 6
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-success action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.approved(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Approved\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status == 3 &&
                                            _vm.$can("Packaging Order")
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-success action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.packaging(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Packaging\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status == 1 ||
                                            order.status == 7 ||
                                            order.status == 3 ||
                                            order.status == 6 ||
                                            order.status == 8
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-info action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.pending(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Pending\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status == 4 &&
                                            _vm.$can("Delivered Order")
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-success action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.delivered(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Delivered\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            _c("br"),
                                            _vm._v(" "),
                                            order.status == 8 &&
                                            _vm.$can("Shipment Order")
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-primary action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.shipment(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Shipment\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status == 1 ||
                                            order.status == 2 ||
                                            order.status == 3
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-danger action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.cancel(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Cancel\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status == 4 &&
                                            _vm.$can("Return  Order")
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-warning action-btn",
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.returnOrder(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Return\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status == 4 &&
                                            _vm.$can("Return  Order")
                                              ? _c(
                                                  "button",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-warning",
                                                    staticStyle: {
                                                      "margin-bottom": "2px"
                                                    },
                                                    on: {
                                                      click: function($event) {
                                                        return _vm.openReturnChargeModal(
                                                          order,
                                                          index
                                                        )
                                                      }
                                                    }
                                                  },
                                                  [
                                                    _vm._v(
                                                      "\n                                                        Return With Cost\n\n                                                    "
                                                    )
                                                  ]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            order.status != 5 &&
                                            order.status != 4
                                              ? _c(
                                                  "router-link",
                                                  {
                                                    staticClass:
                                                      "btn btn-sm btn-warning",
                                                    staticStyle: {
                                                      width: "70px"
                                                    },
                                                    attrs: {
                                                      to: {
                                                        name: "orderEdit",
                                                        params: { id: order.id }
                                                      }
                                                    }
                                                  },
                                                  [_vm._v("Edit")]
                                                )
                                              : _vm._e(),
                                            _vm._v(" "),
                                            _c(
                                              "router-link",
                                              {
                                                staticClass:
                                                  "btn btn-sm btn-primary action-btn",
                                                staticStyle: { color: "#fff" },
                                                attrs: {
                                                  to: {
                                                    name: "viewOrder",
                                                    params: { id: order.id }
                                                  }
                                                }
                                              },
                                              [_vm._v("View")]
                                            )
                                          ],
                                          1
                                        ),
                                        _vm._v(" "),
                                        order.print_status == 1
                                          ? _c(
                                              "span",
                                              {
                                                staticClass:
                                                  "badge badge-success"
                                              },
                                              [
                                                _c("i", {
                                                  staticClass: "fa fa-check"
                                                }),
                                                _vm._v(
                                                  " Printed\n                                                "
                                                )
                                              ]
                                            )
                                          : _vm._e()
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        order.courier_id
                                          ? _c(
                                              "small",
                                              {
                                                staticStyle: {
                                                  "font-weight": "bold",
                                                  "text-transform": "uppercase",
                                                  display: "block"
                                                }
                                              },
                                              [
                                                _vm._v(
                                                  _vm._s(order.courier.name)
                                                )
                                              ]
                                            )
                                          : _vm._e(),
                                        _vm._v(" "),
                                        _c(
                                          "a",
                                          {
                                            attrs: {
                                              href: order.memo_no,
                                              target: "_blank"
                                            }
                                          },
                                          [
                                            _vm._v(
                                              " " + _vm._s(order.memo_no) + " "
                                            )
                                          ]
                                        ),
                                        _vm._v(" "),
                                        order.status == 8 ||
                                        order.status == 3 ||
                                        order.status == 4
                                          ? _c("i", {
                                              staticClass: "fa fa-edit",
                                              on: {
                                                click: function($event) {
                                                  return _vm.courierModal(
                                                    order,
                                                    index
                                                  )
                                                }
                                              }
                                            })
                                          : _vm._e()
                                      ]),
                                      _vm._v(" "),
                                      _c("td", [
                                        order.comment
                                          ? _c("small", [
                                              _vm._v(_vm._s(order.comment))
                                            ])
                                          : _vm._e(),
                                        _vm._v(" "),
                                        _c(
                                          "a",
                                          {
                                            attrs: { href: "#" },
                                            on: {
                                              click: function($event) {
                                                return _vm.comment(
                                                  order.id,
                                                  index,
                                                  order.comment
                                                )
                                              }
                                            }
                                          },
                                          [_vm._v("Comment")]
                                        )
                                      ])
                                    ])
                                  })
                            ],
                            2
                          )
                        ]
                      )
                    ]),
                    _vm._v(" "),
                    _c("div", { staticClass: "box-footer" }, [
                      _c("div", { staticClass: "row" }, [
                        _c(
                          "div",
                          { staticClass: "col-lg-6" },
                          [
                            _c("pagination", {
                              attrs: { data: _vm.orders, limit: 5 },
                              on: { "pagination-change-page": _vm.ordersList }
                            })
                          ],
                          1
                        ),
                        _vm._v(" "),
                        _c(
                          "div",
                          {
                            staticClass: "col-lg-6 mt-1",
                            staticStyle: {
                              "margin-top": "25px",
                              "text-align": "right"
                            }
                          },
                          [
                            _c("p", [
                              _vm._v(
                                "\n                                            Showing\n                                            "
                              ),
                              _c("strong", [_vm._v(_vm._s(_vm.orders.from))]),
                              _vm._v(
                                " to\n                                            "
                              ),
                              _c("strong", [_vm._v(_vm._s(_vm.orders.to))]),
                              _vm._v(
                                " of total\n                                            "
                              ),
                              _c("strong", [_vm._v(_vm._s(_vm.orders.total))]),
                              _vm._v(
                                " entries\n                                        "
                              )
                            ])
                          ]
                        )
                      ])
                    ])
                  ])
                ]
              )
            ])
          ])
        ])
      ]),
      _vm._v(" "),
      _c("modal", { attrs: { name: "example", width: 300, height: 200 } }, [
        _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
          _c("div", { staticClass: "card-body" }, [
            _c(
              "form",
              {
                on: {
                  submit: function($event) {
                    $event.preventDefault()
                    return _vm.OrderCourier($event)
                  }
                }
              },
              [
                _c("div", { staticClass: "form-group" }, [
                  _c("label", [_vm._v("Courier")]),
                  _vm._v(" "),
                  _c(
                    "select",
                    {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.courier.courier_id,
                          expression: "courier.courier_id"
                        }
                      ],
                      staticClass: "form-control",
                      attrs: { name: "" },
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
                            _vm.courier,
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
                        _vm._v("Select Courier")
                      ]),
                      _vm._v(" "),
                      _vm._l(_vm.couriers, function(courier) {
                        return _c(
                          "option",
                          { domProps: { value: courier.id } },
                          [
                            _vm._v(
                              "\n                                " +
                                _vm._s(courier.name) +
                                "\n                            "
                            )
                          ]
                        )
                      })
                    ],
                    2
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "form-group" }, [
                  _c("label", [_vm._v("Memo_number")]),
                  _vm._v(" "),
                  _c("input", {
                    directives: [
                      {
                        name: "model",
                        rawName: "v-model",
                        value: _vm.courier.memo_no,
                        expression: "courier.memo_no"
                      }
                    ],
                    staticClass: "form-control",
                    attrs: { placeholder: "Enter memo number" },
                    domProps: { value: _vm.courier.memo_no },
                    on: {
                      input: function($event) {
                        if ($event.target.composing) {
                          return
                        }
                        _vm.$set(_vm.courier, "memo_no", $event.target.value)
                      }
                    }
                  })
                ]),
                _vm._v(" "),
                _c(
                  "button",
                  {
                    staticClass: "btn btn-success btn-block",
                    attrs: { type: "submit" }
                  },
                  [_vm._v("submit")]
                )
              ]
            )
          ])
        ])
      ]),
      _vm._v(" "),
      _c(
        "modal",
        { attrs: { name: "multi_order_shipment", width: 300, height: 200 } },
        [
          _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
            _c("div", { staticClass: "card-body" }, [
              _c(
                "form",
                {
                  on: {
                    submit: function($event) {
                      $event.preventDefault()
                      return _vm.shipmentAll($event)
                    }
                  }
                },
                [
                  _c("div", { staticClass: "form-group" }, [
                    _c("label", [_vm._v("Courier")]),
                    _vm._v(" "),
                    _c(
                      "select",
                      {
                        directives: [
                          {
                            name: "model",
                            rawName: "v-model",
                            value: _vm.courier.courier_id,
                            expression: "courier.courier_id"
                          }
                        ],
                        staticClass: "form-control",
                        attrs: { required: "", name: "" },
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
                              _vm.courier,
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
                          _vm._v("Select Courier")
                        ]),
                        _vm._v(" "),
                        _vm._l(_vm.couriers, function(courier) {
                          return _c(
                            "option",
                            {
                              key: courier.id,
                              domProps: { value: courier.id }
                            },
                            [
                              _vm._v(
                                "\n                    " +
                                  _vm._s(courier.name) +
                                  "\n                    "
                              )
                            ]
                          )
                        })
                      ],
                      2
                    )
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "form-group" }, [
                    _c("label", [_vm._v("Memo Number")]),
                    _vm._v(" "),
                    _c("input", {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.courier.memo_no,
                          expression: "courier.memo_no"
                        }
                      ],
                      staticClass: "form-control",
                      attrs: { placeholder: "Enter memo number", required: "" },
                      domProps: { value: _vm.courier.memo_no },
                      on: {
                        input: function($event) {
                          if ($event.target.composing) {
                            return
                          }
                          _vm.$set(_vm.courier, "memo_no", $event.target.value)
                        }
                      }
                    })
                  ]),
                  _vm._v(" "),
                  _c(
                    "button",
                    {
                      staticClass: "btn btn-success btn-block",
                      attrs: { type: "submit" }
                    },
                    [_vm._v("\n                submit\n                ")]
                  )
                ]
              )
            ])
          ])
        ]
      ),
      _vm._v(" "),
      _c(
        "modal",
        {
          attrs: { name: "export_order_for_courier", width: 300, height: 250 }
        },
        [
          _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
            _c("div", { staticClass: "card-body" }, [
              _c("div", { staticClass: "form-group export_container" }, [
                _c(
                  "a",
                  {
                    staticClass: "btn btn-success",
                    on: { click: _vm.exportForRedx }
                  },
                  [
                    _c("i", { staticClass: "fa fa-download" }),
                    _vm._v(" export for Redx")
                  ]
                ),
                _vm._v(" "),
                _c(
                  "a",
                  {
                    staticClass: "btn btn-success",
                    on: { click: _vm.exportForPathao }
                  },
                  [
                    _c("i", { staticClass: "fa fa-download" }),
                    _vm._v(" export for Pathao\n                ")
                  ]
                ),
                _vm._v(" "),
                _c(
                  "a",
                  {
                    staticClass: "btn btn-success",
                    on: { click: _vm.exportForeCourier }
                  },
                  [
                    _c("i", { staticClass: "fa fa-download" }),
                    _vm._v(" export for e-courier\n                ")
                  ]
                ),
                _vm._v(" "),
                _c(
                  "a",
                  {
                    staticClass: "btn btn-success",
                    on: { click: _vm.exportForSteadFast }
                  },
                  [
                    _c("i", { staticClass: "fa fa-download" }),
                    _vm._v(" SteadFast\n                ")
                  ]
                )
              ])
            ])
          ])
        ]
      ),
      _vm._v(" "),
      _c(
        "modal",
        { attrs: { name: "return_delivery_cost", width: 300, height: 200 } },
        [
          _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
            _c("div", { staticClass: "card-body" }, [
              _c(
                "form",
                {
                  on: {
                    submit: function($event) {
                      $event.preventDefault()
                      return _vm.returnOrderWithCost($event)
                    }
                  }
                },
                [
                  _c("div", { staticClass: "form-group" }, [
                    _c("label", [_vm._v("Select Balance")]),
                    _vm._v(" "),
                    _c(
                      "select",
                      {
                        directives: [
                          {
                            name: "model",
                            rawName: "v-model",
                            value: _vm.form.credit_in,
                            expression: "form.credit_in"
                          }
                        ],
                        staticClass: "form-control",
                        attrs: { required: "", name: "" },
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
                              "credit_in",
                              $event.target.multiple
                                ? $$selectedVal
                                : $$selectedVal[0]
                            )
                          }
                        }
                      },
                      [
                        _c("option", { attrs: { value: "" } }, [
                          _vm._v("Select Balance")
                        ]),
                        _vm._v(" "),
                        _vm._l(_vm.balances, function(balance) {
                          return _c(
                            "option",
                            {
                              key: balance.id,
                              domProps: { value: balance.name }
                            },
                            [
                              _vm._v(
                                "\n                            " +
                                  _vm._s(balance.name) +
                                  "\n                        "
                              )
                            ]
                          )
                        })
                      ],
                      2
                    )
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "form-group" }, [
                    _c("label", [_vm._v("Amount")]),
                    _vm._v(" "),
                    _c("input", {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.form.return_cost,
                          expression: "form.return_cost"
                        }
                      ],
                      staticClass: "form-control",
                      attrs: { placeholder: "Enter amount", required: "" },
                      domProps: { value: _vm.form.return_cost },
                      on: {
                        input: function($event) {
                          if ($event.target.composing) {
                            return
                          }
                          _vm.$set(_vm.form, "return_cost", $event.target.value)
                        }
                      }
                    })
                  ]),
                  _vm._v(" "),
                  _c(
                    "button",
                    {
                      staticClass: "btn btn-success btn-block",
                      attrs: { type: "submit" }
                    },
                    [_vm._v("\n                    submit\n                ")]
                  )
                ]
              )
            ])
          ])
        ]
      ),
      _vm._v(" "),
      _c(
        "modal",
        {
          attrs: {
            name: "bulk_order_assign_to_courier",
            width: 300,
            height: 200
          }
        },
        [
          _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
            _c("div", { staticClass: "card-body" }, [
              _c(
                "form",
                {
                  on: {
                    submit: function($event) {
                      $event.preventDefault()
                      return _vm.bulkCourierSelect($event)
                    }
                  }
                },
                [
                  _c("div", { staticClass: "form-group" }, [
                    _c("label", [_vm._v("Courier")]),
                    _vm._v(" "),
                    _c(
                      "select",
                      {
                        directives: [
                          {
                            name: "model",
                            rawName: "v-model",
                            value: _vm.courier.courier_id,
                            expression: "courier.courier_id"
                          }
                        ],
                        staticClass: "form-control",
                        attrs: { required: "" },
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
                              _vm.courier,
                              "courier_id",
                              $event.target.multiple
                                ? $$selectedVal
                                : $$selectedVal[0]
                            )
                          }
                        }
                      },
                      [
                        _c("option", { attrs: { value: "", disabled: "" } }, [
                          _vm._v("Select Courier")
                        ]),
                        _vm._v(" "),
                        _vm._l(_vm.couriers, function(courier) {
                          return _c(
                            "option",
                            {
                              key: courier.id,
                              domProps: { value: courier.id }
                            },
                            [
                              _vm._v(
                                "\n                                " +
                                  _vm._s(courier.name) +
                                  "\n                            "
                              )
                            ]
                          )
                        })
                      ],
                      2
                    )
                  ]),
                  _vm._v(" "),
                  _c(
                    "button",
                    {
                      staticClass: "btn btn-success btn-block",
                      attrs: { type: "submit" }
                    },
                    [
                      _vm._v(
                        "\n                        submit\n                    "
                      )
                    ]
                  )
                ]
              )
            ])
          ])
        ]
      ),
      _vm._v(" "),
      _c(
        "modal",
        {
          attrs: {
            name: "customer_order_status_type_record_modal",
            width: 300,
            height: 200
          }
        },
        [
          _c("div", { staticClass: "card", staticStyle: { padding: "10px" } }, [
            _c("div", { staticClass: "card-body" }, [
              _c(
                "form",
                {
                  on: {
                    submit: function($event) {
                      $event.preventDefault()
                      return _vm.cancelOrderWithStatus($event)
                    }
                  }
                },
                [
                  _c("div", { staticClass: "form-group" }, [
                    _c("label", [_vm._v("Select Customer Status")]),
                    _vm._v(" "),
                    _c(
                      "select",
                      {
                        directives: [
                          {
                            name: "model",
                            rawName: "v-model",
                            value: _vm.selected_status,
                            expression: "selected_status"
                          }
                        ],
                        staticClass: "form-control",
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
                            _vm.selected_status = $event.target.multiple
                              ? $$selectedVal
                              : $$selectedVal[0]
                          }
                        }
                      },
                      [
                        _c("option", { attrs: { value: "", disabled: "" } }, [
                          _vm._v("Select Status")
                        ]),
                        _vm._v(" "),
                        _vm._l(_vm.statuses, function(status) {
                          return _c(
                            "option",
                            {
                              key: status.label,
                              domProps: { value: status.label }
                            },
                            [
                              _vm._v(
                                "\n                                    " +
                                  _vm._s(status.value) +
                                  "\n                                "
                              )
                            ]
                          )
                        })
                      ],
                      2
                    )
                  ]),
                  _vm._v(" "),
                  _c(
                    "button",
                    {
                      staticClass: "btn btn-success btn-block",
                      attrs: { type: "submit" }
                    },
                    [_vm._v("submit")]
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
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/admin/order/OrderStatus.vue":
/*!*********************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/OrderStatus.vue ***!
  \*********************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _OrderStatus_vue_vue_type_template_id_7cdfd0c2___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./OrderStatus.vue?vue&type=template&id=7cdfd0c2& */ "./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=template&id=7cdfd0c2&");
/* harmony import */ var _OrderStatus_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./OrderStatus.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _OrderStatus_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _OrderStatus_vue_vue_type_template_id_7cdfd0c2___WEBPACK_IMPORTED_MODULE_0__["render"],
  _OrderStatus_vue_vue_type_template_id_7cdfd0c2___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/order/OrderStatus.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_OrderStatus_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./OrderStatus.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_OrderStatus_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=template&id=7cdfd0c2&":
/*!****************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=template&id=7cdfd0c2& ***!
  \****************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_OrderStatus_vue_vue_type_template_id_7cdfd0c2___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./OrderStatus.vue?vue&type=template&id=7cdfd0c2& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/OrderStatus.vue?vue&type=template&id=7cdfd0c2&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_OrderStatus_vue_vue_type_template_id_7cdfd0c2___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_OrderStatus_vue_vue_type_template_id_7cdfd0c2___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ }),

/***/ "./resources/microadmin/components/admin/order/Orders.vue":
/*!****************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Orders.vue ***!
  \****************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _Orders_vue_vue_type_template_id_31e1f773___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Orders.vue?vue&type=template&id=31e1f773& */ "./resources/microadmin/components/admin/order/Orders.vue?vue&type=template&id=31e1f773&");
/* harmony import */ var _Orders_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Orders.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/admin/order/Orders.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Orders.vue?vue&type=style&index=0&lang=css& */ "./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _Orders_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _Orders_vue_vue_type_template_id_31e1f773___WEBPACK_IMPORTED_MODULE_0__["render"],
  _Orders_vue_vue_type_template_id_31e1f773___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/admin/order/Orders.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Orders.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Orders.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib??ref--4-0!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Orders.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css&":
/*!*************************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css& ***!
  \*************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/style-loader!../../../../../node_modules/css-loader??ref--5-1!../../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../../node_modules/postcss-loader/src??ref--5-2!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Orders.vue?vue&type=style&index=0&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=style&index=0&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_style_index_0_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/admin/order/Orders.vue?vue&type=template&id=31e1f773&":
/*!***********************************************************************************************!*\
  !*** ./resources/microadmin/components/admin/order/Orders.vue?vue&type=template&id=31e1f773& ***!
  \***********************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_template_id_31e1f773___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib??vue-loader-options!./Orders.vue?vue&type=template&id=31e1f773& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/admin/order/Orders.vue?vue&type=template&id=31e1f773&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_template_id_31e1f773___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Orders_vue_vue_type_template_id_31e1f773___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);