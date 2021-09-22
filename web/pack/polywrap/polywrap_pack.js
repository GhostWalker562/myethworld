var polywrap;(()=>{"use strict";var e={d:(t,n)=>{for(var r in n)e.o(n,r)&&!e.o(t,r)&&Object.defineProperty(t,r,{enumerable:!0,get:n[r]})},o:(e,t)=>Object.prototype.hasOwnProperty.call(e,t),r:e=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})}},t={};e.r(t),e.d(t,{fetchSwapOutputAmount:()=>u});var n;!function(e){e.MAINNET="MAINNET",e.ROPSTEN="ROPSTEN",e.RINKEBY="RINKEBY",e.GOERLI="GOERLI",e.KOVAN="KOVAN"}(n||(n={}));var r=function(e,t,n,r){return new(n||(n=Promise))((function(o,u){function a(e){try{l(r.next(e))}catch(e){u(e)}}function i(e){try{l(r.throw(e))}catch(e){u(e)}}function l(e){var t;e.done?o(e.value):(t=e.value,t instanceof n?t:new n((function(e){e(t)}))).then(a,i)}l((r=r.apply(e,t||[])).next())}))},o=function(e,t){var n,r,o,u,a={label:0,sent:function(){if(1&o[0])throw o[1];return o[1]},trys:[],ops:[]};return u={next:i(0),throw:i(1),return:i(2)},"function"==typeof Symbol&&(u[Symbol.iterator]=function(){return this}),u;function i(u){return function(i){return function(u){if(n)throw new TypeError("Generator is already executing.");for(;a;)try{if(n=1,r&&(o=2&u[0]?r.return:u[0]?r.throw||((o=r.return)&&o.call(r),0):r.next)&&!(o=o.call(r,u[1])).done)return o;switch(r=0,o&&(u=[2&u[0],o.value]),u[0]){case 0:case 1:o=u;break;case 4:return a.label++,{value:u[1],done:!1};case 5:a.label++,r=u[1],u=[0];continue;case 7:u=a.ops.pop(),a.trys.pop();continue;default:if(!(o=a.trys,(o=o.length>0&&o[o.length-1])||6!==u[0]&&2!==u[0])){a=0;continue}if(3===u[0]&&(!o||u[1]>o[0]&&u[1]<o[3])){a.label=u[1];break}if(6===u[0]&&a.label<o[1]){a.label=o[1],o=u;break}if(o&&a.label<o[2]){a.label=o[2],a.ops.push(u);break}o[2]&&a.ops.pop(),a.trys.pop();continue}u=t.call(e,a)}catch(e){u=[6,e],r=0}finally{n=o=0}if(5&u[0])throw u[1];return{value:u[0]?u[1]:void 0,done:!0}}([u,i])}}};function u(e,t,n){return r(this,void 0,void 0,(function(){var r,u,a;return o(this,(function(o){switch(o.label){case 0:return[4,e.query({uri:"ens/v2.uniswap.web3api.eth",query:"query{\n      pairOutputAmount(\n        pair: $pair\n        inputAmount: $input\n      )\n    }",variables:{pair:t,input:n}})];case 1:if(r=o.sent(),u=r.data,a=r.errors)throw a;if(!u)throw Error("pairOutputAmount returned undefined, this should never happen");return[2,u.pairOutputAmount.amount]}}))}))}polywrap=t})();