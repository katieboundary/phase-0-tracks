console.log("JS is working");

function textAppear(){
  var new_para = document. createElement("p");
  var new_node = document.createTextNode("New Paragraph");
  new_para.appendChild(new_node);
  var element = document.getElementById("div1");
  element.appendChild(new_para);
}

var text_fade = document.getElementById("button").addEventListener("click",textAppear);
