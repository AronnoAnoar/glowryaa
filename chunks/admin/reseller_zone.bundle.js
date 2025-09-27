(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["admin/reseller_zone"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
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
    this.getPageInfo();
  },
  data: function data() {
    return {
      page: '',
      base_url: this.$store.state.image_base_link
    };
  },
  methods: {
    getPageInfo: function getPageInfo() {
      var _this = this;

      axios.get('/_public/api/get/page/details', {
        params: {
          name: 'reseller info'
        }
      }).then(function (resp) {
        // console.log(resp);
        _this.page = resp.data.page;
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css&":
/*!************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css& ***!
  \************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\n.header-info[data-v-5e75cd4a] {\r\n    display: inline-block;\r\n    float: right;\r\n    margin-top: 2%;\n}\n@media screen and (max-width: 768px) {\n.header-info[data-v-5e75cd4a] {\r\n        float: none !important;\r\n        margin-top: 1%;\n}\n.main_background_img[data-v-5e75cd4a] {\r\n        height: 228px !important;\n}\n.spad[data-v-5e75cd4a] {\r\n        padding-top: 20px;\r\n        padding-bottom: 20px;\n}\n}\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css&":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--5-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--5-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css& ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--5-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--5-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true&":
/*!*********************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true& ***!
  \*********************************************************************************************************************************************************************************************************************************************/
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
    _c("header", { staticClass: "header-section" }, [
      _c("div", { staticClass: "container" }, [
        _c("a", { staticClass: "site-logo", attrs: { href: "/" } }, [
          _c("img", {
            attrs: {
              width: "200px",
              height: "80px",
              src: _vm.base_url + "/images/static/reseller/reselling_logo.png"
            }
          })
        ]),
        _vm._v(" "),
        _vm._m(0)
      ])
    ]),
    _vm._v(" "),
    _c("section", { staticClass: "hero-section" }, [
      _c("div", { staticClass: "row" }, [
        _c("div", {
          staticClass: "col-lg-12 main_background_img",
          style: {
            backgroundImage:
              "url(" +
              (_vm.base_url + "/images/static/reseller/banner.jpeg") +
              ")",
            height: 450 + "px",
            width: 100 + "%",
            backgroundRepeat: "round"
          }
        })
      ])
    ]),
    _vm._v(" "),
    _c("section", { staticClass: "service-section spad" }, [
      _c("div", { staticClass: "container services" }, [
        _vm._m(1),
        _vm._v(" "),
        _c("div", { staticClass: "row" }, [
          _c("div", { staticClass: "col-lg-4 col-sm-6 service-item" }, [
            _c("div", { staticClass: "service-icon" }, [
              _c("img", {
                attrs: {
                  src:
                    _vm.base_url +
                    "images/static/reseller/services-icons/1.png",
                  alt: "1"
                }
              })
            ]),
            _vm._v(" "),
            _vm._m(2)
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "col-lg-4 col-sm-6 service-item" }, [
            _c("div", { staticClass: "service-icon" }, [
              _c("img", {
                attrs: {
                  src:
                    _vm.base_url +
                    "images/static/reseller/services-icons/2.png",
                  alt: "1"
                }
              })
            ]),
            _vm._v(" "),
            _vm._m(3)
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "col-lg-4 col-sm-6 service-item" }, [
            _c("div", { staticClass: "service-icon" }, [
              _c("img", {
                attrs: {
                  src:
                    _vm.base_url +
                    "images/static/reseller/services-icons/3.png",
                  alt: "1"
                }
              })
            ]),
            _vm._v(" "),
            _vm._m(4)
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "col-lg-4 col-sm-6 service-item" }, [
            _c("div", { staticClass: "service-icon" }, [
              _c("img", {
                attrs: {
                  src:
                    _vm.base_url +
                    "images/static/reseller/services-icons/4.png",
                  alt: "1"
                }
              })
            ]),
            _vm._v(" "),
            _vm._m(5)
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "col-lg-4 col-sm-6 service-item" }, [
            _c("div", { staticClass: "service-icon" }, [
              _c("img", {
                attrs: {
                  src:
                    _vm.base_url +
                    "images/static/reseller/services-icons/5.png",
                  alt: "1"
                }
              })
            ]),
            _vm._v(" "),
            _vm._m(6)
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "col-lg-4 col-sm-6 service-item" }, [
            _c("div", { staticClass: "service-icon" }, [
              _c("img", {
                attrs: {
                  src:
                    _vm.base_url +
                    "images/static/reseller/services-icons/5.png",
                  alt: "1"
                }
              })
            ]),
            _vm._v(" "),
            _vm._m(7)
          ])
        ])
      ])
    ]),
    _vm._v(" "),
    _vm._m(8),
    _vm._v(" "),
    _vm._m(9),
    _vm._v(" "),
    _vm._m(10),
    _vm._v(" "),
    _vm._m(11)
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "header-info" }, [
      _c("div", { staticClass: "hf-item" }, [
        _c("i", { staticClass: "fa fa-key" }),
        _vm._v(" "),
        _c(
          "a",
          {
            staticStyle: { "font-size": "18px", "font-weight": "bold" },
            attrs: { href: "/reseller/login" }
          },
          [_vm._v("Login")]
        )
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "hf-item" }, [
        _c("i", { staticClass: "fa fa-edit" }),
        _vm._v(" "),
        _c(
          "a",
          {
            staticStyle: { "font-size": "18px", "font-weight": "bold" },
            attrs: { href: "/reseller/register" }
          },
          [_vm._v("Register")]
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "section-title text-center" }, [
      _c("h3", [_vm._v("OUR SERVICES")]),
      _vm._v(" "),
      _c("p", [_vm._v("We provides the opportunity to prepare for life")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "service-content" }, [
      _c("h4", [_vm._v("রিসেলিং ব্যাবসা")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                            রিসেলিং এর মানে হলো পূনরায় কোন পন্য সেল করা। আর একদমই ০ টাকা\n                            ইনভেস্টমেন্ট এর মাধ্যমে আপনি শুরু করতে পারবেন।\n                        "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "service-content" }, [
      _c("h4", [_vm._v("রিসেলিং ব্যবসা করার সুবিধা")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus\n                            interdum ultrices augue. Aenean dos cursus lania.\n                        "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "service-content" }, [
      _c("h4", [_vm._v("প্রোডাক্ট দিচ্ছি আমরা")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus\n                            interdum ultrices augue. Aenean dos cursus lania.\n                        "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "service-content" }, [
      _c("h4", [_vm._v("ডেলিভারী করব আমরা")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus\n                            interdum ultrices augue. Aenean dos cursus lania.\n                        "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "service-content" }, [
      _c("h4", [_vm._v("পেমেন্ট পাবেন আপনারা")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                            Lorem ipsum dolor sitdo amet, consectetur dont adipis elit. Vivamus\n                            interdum ultrices augue. Aenean dos cursus lania.\n                        "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "service-content" }, [
      _c("h4", [_vm._v("Is resell legal?")]),
      _vm._v(" "),
      _c("p", [
        _vm._v(
          "\n                            Potential Financial Gain. Of course, the reason you'll start this\n                            business is to earn money. Here's what you can expect. “After some\n                            experience,\n                        "
        )
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "section",
      {
        staticClass: "enroll-section spad set-bg",
        staticStyle: {
          height: "auto",
          "background-image":
            "url(https://thumbs.dreamstime.com/b/resselling-word-wooden-cubes-green-background-business-model-concept-209318558.jpg)"
        },
        attrs: { "data-setbg": "img/enroll-bg.jpg" }
      },
      [
        _c("div", { staticClass: "container" }, [
          _c("div", { staticClass: "row" }, [
            _c("div", { staticClass: "col-lg-5" }, [
              _c("div", { staticClass: "section-title text-white" }, [
                _c("h3", [_vm._v("Reselling System")]),
                _vm._v(" "),
                _c("p", [_vm._v("Get started with us to explore the exciting")])
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "enroll-list text-white" }, [
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("1")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("রিসেলিং ব্যাবসা")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                রিসেলিং এর মানে হলো পূনরায় কোন পন্য সেল করা। আর একদমই ০ টাকা\n                                ইনভেস্টমেন্ট এর মাধ্যমে আপনি শুরু করতে পারবেন।\n                            "
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("2")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("রিসেলিং ব্যাবসা কিভাবে শুরু করব?")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                অল্প পুঁজিতে লাভজনক ব্যবসা করার অন্যতম সহজ উপায় রিসেল ব্যবসা।\n                                একজন রিসেলার উত্পাদক ও ক্রেতার মধ্যে সেতুবন্ধনের কাজ করেন।\n                                অর্থাত্ আপনি উত্পাদকের থেকে পণ্য সংগ্রহ করে ক্রেতার কাছে বিক্রি\n                                করবেন সেই পণ্য। আপনাকে কোনও পণ্য তৈরি করতে হবে না বা পণ্য মজুতও\n                                রাখতে হবে না, আপনার কাজ শুধু উত্পাদকের থেকে পণ্য কিনে তা ক্রেতার\n                                কাছে পৌঁছে দেওয়ার ব্যবস্থা করা। এমন কি আজকের ইন্টারনেটের যুগে\n                                ঘরে বসেই এই ব্যবসা শুরু করা সম্ভব।\n                            "
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("3")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("রিসেলিং ব্যবসা করার সুবিধা")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                রিসেল ব্যবসা শুরু করার সব থেকে বড় সুবিধা হল খুব কম টাকা বিনিয়োগ\n                                করেই এই ব্যবসা শুরু করা সম্ভব। অনলাইনে ব্যবসা শুরু করে অনেকটাই\n                                কমিয়ে ফেলা যায় খরচ। পাশাপাশিই এই ব্যবসায় আপনি নানা ধরণের পণ্য\n                                বিক্রি করতে পারেন। রিলেস ব্যবসা সাধারণতঃ দুভাবে হয়। এক, আপনি\n                                উত্পাদক সংস্থার থেকে পণ্য কিনে তার ওপর লাভের মার্জিন রেখে\n                                ক্রেতার কাছে বিক্রি করলেন অথবা আপনি ক্রেতার থেকে অর্ডার নিয়ে তার\n                                বিনিময়ে উত্পাদকের থেকে কমিশন নিলেন। এই দুই ক্ষেত্রেই প্রাথমিক\n                                বিনিয়োগ কম এবং লাভ বেশি। পাশাপাশি এই ব্যবসায় আর্থিক ঝুঁকিও\n                                অনেকটাই কম। আপনি যেহেতু প্রথমেই অনেক টাকা বিনিয়োগ করে ফেলছেন না\n                                ফলে ব্যবসা না চললে ব্যবসার ধরণ ও পণ্য পরিবর্তন করে নিতে পারবেন।\n                            "
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("4")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("শুধু প্রোডাক্ট নিয়ে ব্যবসা করতে পারব?")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "জি আপনি আমাদের প্রোডাক্ট পাইকারী নিয়ে ব্যাবসা করতে পারবেন।"
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("5")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("পেমেন্ট সিস্টেম")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                আপনার প্রোডাক্ট ডেলীভারড হওয়ার সাথে সাথে আপনার প্রফিট জমা হয়ে\n                                যাবে আপনার wallet Balance এ। আর আপনি যে কোন সময়\n                                (বিকাশ,রকেট,নগদ, ব্যাংক) যে কোন একাউন্টের মাধ্যমে আপনার প্রয়োজন\n                                মত টাকা উত্তোলন করতে পারবেন যে কোন সময় ইনশাআল্লাহ।\n                            "
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("6")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("প্রোডাক্ট কিভাবে পাবো?")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                আপনি যখনি আমাদের রিসেলার প্যানেল এর মধ্যে রেজিস্ট্রেশন করবেন।\n                                তখন যেই user name এবং pasward আপনাকে দেয়া হবে সেই user name এবং\n                                pasward ব্যবহার করে আপনার অ্যাকাউন্টে প্রবেশ করবেন। একাউন্টে\n                                প্রবেশ করার পরে product list একটি অপশন পাবেন সেটিতে ক্লিক করার\n                                পরে আমাদের স্টকে যত প্রোডাক্ট আছে সকল প্রোডাক্ট আপনি দেখতে\n                                পারবেন । আর আপনি সেগুলোর মধ্যে থেকে যেই কয়েকটা অথবা চাইলে সকল\n                                প্রোডাক্ট ডাউনলোড করে আপনি মার্কেটিং করতে পারবেন।\n                            "
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("7")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("ডেলিভারী মাধ্যম")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                আমরা সাধারণত ঢাকার মধ্যে এবং ঢাকার বাহিরে Redx কুরিয়ার এর\n                                মাধ্যমে হোম ডেলিভারী করে থাকি। ঢাকার মধ্যে সময় লাগে হোম\n                                ডেলিভারি করতে ২ দিন । ঢাকার বাইরে হোম ডেলিভারি করতে ৩/৪ দিন সময়\n                                লাগে। ধন্যবাদ।\n                            "
                    )
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "enroll-list-item" }, [
                  _c("span", [_vm._v("8")]),
                  _vm._v(" "),
                  _c("h5", [_vm._v("ডেলিভারীর সম্পূর্ণ নীতি")]),
                  _vm._v(" "),
                  _c("p", [
                    _vm._v(
                      "\n                                আপনি যখন অর্ডারটি আপনার প্যানেলের মধ্যে সাবমিট করবেন তখন দুইটা\n                                অপশন আসবে একটা হল পেন্ডিং আরেকটা হল আপনি যদি পেন্ডিং রাখেন তাহলে\n                                এই অর্ডারটা আমরা করি আর করব না যতক্ষণ পর্যন্ত আপনি অর্ডারটি\n                                এপ্রুভ না করবেন যখনই আপনি অর্ডারটি এপ্রুভ করবেন তখনই আমরা এই\n                                প্রোডাক্টটি প্যাকেজিং সম্পন্ন করেন ডেলিভারির জন্য কুরিয়ারে\n                                পাঠাবো কুরিয়ারে যাওয়ার পরে কাস্টমার যদি করেন তাহলে আমরা\n                                অর্ডারটি ডেলিভার দেখাবো প্রোডাক্টটি যখন ডেলিভার দেখানো হবে সাথে\n                                সাথে আপনার একাউন্টে কমিশন ঢুকবে\n                            "
                    )
                  ])
                ])
              ])
            ]),
            _vm._v(" "),
            _c("div", { staticClass: "col-lg-6 offset-lg-1 p-lg-0 p-4" }, [
              _c("img", {
                staticStyle: { "margin-top": "20%" },
                attrs: {
                  src:
                    "https://whitebox.com/wp-content/uploads/2021/03/WB_Pros_Cons_Resellers.r1-01.png"
                }
              })
            ])
          ])
        ])
      ]
    )
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "section",
      {
        staticClass: "fact-section spad set-bg mt-1",
        attrs: { "data-setbg": "img/fact-bg.jpg" }
      },
      [
        _c("div", { staticClass: "container" }, [
          _c("div", { staticClass: "row" }, [
            _c("div", { staticClass: "col-sm-6 col-lg-3 fact" }, [
              _c("div", { staticClass: "fact-icon" }, [
                _c("i", { staticClass: "ti-crown" })
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "fact-text" }, [
                _c("h2", [_vm._v("1")]),
                _vm._v(" "),
                _c("p", [_vm._v("YEARS")])
              ])
            ]),
            _vm._v(" "),
            _c("div", { staticClass: "col-sm-6 col-lg-3 fact" }, [
              _c("div", { staticClass: "fact-icon" }, [
                _c("i", { staticClass: "ti-briefcase" })
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "fact-text" }, [
                _c("h2", [_vm._v("50")]),
                _vm._v(" "),
                _c("p", [_vm._v("Reseller")])
              ])
            ]),
            _vm._v(" "),
            _c("div", { staticClass: "col-sm-6 col-lg-3 fact" }, [
              _c("div", { staticClass: "fact-icon" }, [
                _c("i", { staticClass: "ti-user" })
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "fact-text" }, [
                _c("h2", [_vm._v("30")]),
                _vm._v(" "),
                _c("p", [_vm._v("Investor")])
              ])
            ]),
            _vm._v(" "),
            _c("div", { staticClass: "col-sm-6 col-lg-3 fact" }, [
              _c("div", { staticClass: "fact-icon" }, [
                _c("i", { staticClass: "ti-pencil-alt" })
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "fact-text" }, [
                _c("h2", [_vm._v("10+")]),
                _vm._v(" "),
                _c("p", [_vm._v("Merchants")])
              ])
            ])
          ])
        ])
      ]
    )
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("section", { staticClass: "newsletter-section" }, [
      _c("div", { staticClass: "container" }, [
        _c("div", { staticClass: "row" }, [
          _c("div", { staticClass: "col-md-5 col-lg-7" }, [
            _c("div", { staticClass: "section-title mb-md-0" }, [
              _c("h3", [_vm._v("NEWSLETTER")]),
              _vm._v(" "),
              _c("p", [
                _vm._v(
                  "\n                            Subscribe and get the latest news and useful tips, advice and best\n                            offer.\n                        "
                )
              ])
            ])
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "col-md-7 col-lg-5" }, [
            _c("form", { staticClass: "newsletter" }, [
              _c("input", {
                attrs: { type: "text", placeholder: "Enter your email" }
              }),
              _vm._v(" "),
              _c("button", { staticClass: "site-btn" }, [_vm._v("SUBSCRIBE")])
            ])
          ])
        ])
      ])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("footer", { staticClass: "footer-section" }, [
      _c("div", { staticClass: "container footer-top" }, [
        _c("div", { staticClass: "row" })
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "copyright" }, [
        _c("div", { staticClass: "container" }, [
          _c("p", [
            _vm._v(
              "\n                    Copyright All rights reserved 2022\n                    "
            ),
            _c("i", {
              staticClass: "fa fa-heart-o",
              attrs: { "aria-hidden": "true" }
            }),
            _vm._v(" by\n                    "),
            _c(
              "a",
              { attrs: { href: "https://bondhonbazar.com", target: "_blank" } },
              [_vm._v("bondhonbazar")]
            )
          ])
        ])
      ])
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/microadmin/components/reseller/ResellingInfo.vue":
/*!********************************************************************!*\
  !*** ./resources/microadmin/components/reseller/ResellingInfo.vue ***!
  \********************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ResellingInfo_vue_vue_type_template_id_5e75cd4a_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true& */ "./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true&");
/* harmony import */ var _ResellingInfo_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ResellingInfo.vue?vue&type=script&lang=js& */ "./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css& */ "./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _ResellingInfo_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ResellingInfo_vue_vue_type_template_id_5e75cd4a_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _ResellingInfo_vue_vue_type_template_id_5e75cd4a_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "5e75cd4a",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/microadmin/components/reseller/ResellingInfo.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=script&lang=js&":
/*!*********************************************************************************************!*\
  !*** ./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=script&lang=js& ***!
  \*********************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./ResellingInfo.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css&":
/*!*****************************************************************************************************************************!*\
  !*** ./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css& ***!
  \*****************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--5-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--5-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=style&index=0&id=5e75cd4a&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_5_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_5_2_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_style_index_0_id_5e75cd4a_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true&":
/*!***************************************************************************************************************!*\
  !*** ./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true& ***!
  \***************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_template_id_5e75cd4a_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/microadmin/components/reseller/ResellingInfo.vue?vue&type=template&id=5e75cd4a&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_template_id_5e75cd4a_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ResellingInfo_vue_vue_type_template_id_5e75cd4a_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);