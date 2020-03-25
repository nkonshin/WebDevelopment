var Cost;
var Name;
var i = 0;

function work() {
  Cost = document.getElementById("cost");
  Name = document.getElementById("name");
  if (Cost.value != '' && Name.value != '') {
    table_row = document.getElementById("add_table");
    var row = table_row.insertRow(0);
    var tb_0 = row.insertCell(0);
    var tb_1 = row.insertCell(1);
    var tb_2 = row.insertCell(2);
    var doc;
    tb_0.innerHTML = Name.value;
    tb_1.innerHTML = Cost.value;
    tb_1.classList.add("co");
    doc = document.createElement('input');
    doc.type = "checkbox";
    doc.id = i;
    doc.name = Name.value;
    doc.value = parseInt(Cost.value);
    i++;
    tb_2.after(doc);
    i++;
  }
}

function add() {
  var inputs = document.getElementsByTagName('input');
  for (var input of inputs) {
    if (input && input.type == 'checkbox' && input.checked) {
      table_row2 = document.getElementById("add_table2");
      var row2 = table_row2.insertRow(0);
      var tb0 = row2.insertCell(0);
      var tb1 = row2.insertCell(1);
      tb0.innerHTML = input.name;
      tb1.innerHTML = input.value;
    }
  }
}

function summa() {
  var sum = 0;
  var inputs = document.getElementsByTagName('input');
  for (var input of inputs) {
    if (input && input.type == 'checkbox' && input.checked) {
      sum += Number(input.value);
    }
  }
  document.getElementById('sum').value = sum;
}