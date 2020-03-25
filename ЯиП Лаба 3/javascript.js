function tree(node, space) {
  var get = document.getElementById('d');
  for (var i = 0; i < node.childElementCount; i++) {
    let div = document.createElement('div');
    console.log(node.children[i].tagName);
    div.innerText = space + node.children[i].tagName;
    get.append(div);
    if (node.children[i].id != 'd') {
      tree(node.children[i], space)
    }
  }
}