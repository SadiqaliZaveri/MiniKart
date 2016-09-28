var elements = ["FName_1", "LName_1", "Age_1", "Email_1", "Address_1", "Organization_1"];
var correlements = ["FName", "LName", "Age", "Email", "Address", "Organization"];
var errmessages = ["First Name", "Last Name", "Age", "Email", "Address", "Organization"];



function OrgHide() {
  $(document).ready(function() {
    $('input[type="radio"]').click(function() {
      if ($(this).attr("value") == "Seller") {

        document.getElementById("Organization").innerHTML = "Organization";
        $(".Org").show();
      } else {

        $(".Org").hide();

      }

    });
  });
}

function validate() {
  var y = 1;
  if ($(".Org").css('display') == 'none') // Checks if organization is hidden or not and sets value accordingly
  {
    y = 2;
  }

  var x;


  for (i = 0; i < elements.length; i++) {
    x = document.getElementById(elements[i]).value;
    if (x == "") {
      document.getElementById(correlements[i]).innerHTML = "<span style=\"color:red\">Please fill in the " + errmessages[i];
      if (i == elements.length - y) {
        return false;
      }

    }
      
    if (x !== "") {
      document.getElementById(correlements[i]).innerHTML = "" + errmessages[i];
    }
  }

  return true;

}
