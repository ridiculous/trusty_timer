function bindDeleteLinks(){for(var e=0,t=jUtils.findByClass("delete");e<t.length;e++)jUtils.addEvent(t[e],"click",deleteRecord)}function deleteRecord(e){var t=jUtils.getEvent(e);if(confirm(this.getAttribute("data-confirm")||"You sure?")){var n=document.createElement("form"),i=document.createElement("input"),o=document.createElement("input");n.id="tempDestroyForm",n.method="post",n.action=this.href,i.type=o.type="hidden",i.name="_method",i.value="delete",o.name="authenticity_token",o.value=document.getElementsByName("csrf-token")[0].content,n.appendChild(i),n.appendChild(o),document.body.appendChild(n),document.getElementById("tempDestroyForm").submit()}return t.stopPropagation(),t.preventDefault(),!1}var jUtils={addEvent:function(e,t,n){var i=function(e){e.addEventListener?e.addEventListener(t,n):e.attachEvent?e.attachEvent("on"+t,function(){n.call(this.target||this.event.srcElement)}):e[t]=n};if("undefined"!=typeof e[0])for(var o=0;o<e.length;o++)i(e[o]);else i(e)},removeEvent:function(e,t,n){e.removeEventListener?e.removeEventListener(t,n,!1):e.detachEvent?e.detachEvent("on"+t,n):e[t]=null},findByClass:function(e){return document.getElementsByClassName?document.getElementsByClassName(e):document.querySelectorAll("."+e)},hasClass:function(e,t){return e.classList?e.classList.contains(t):-1!==e.className.split(/\s+/).find(t)},getEvent:function(e){return e?e:window.event}};!function(){jUtils.addEvent(window,"load",function(){var e;return e=document.getElementById("email"),e&&e.focus(),bindDeleteLinks()})}.call(this);