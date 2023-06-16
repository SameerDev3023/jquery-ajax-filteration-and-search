$(document).ready(function() {
    let DoctorType = $("#doctor_type"); 

    let Search = $('#search');
    Search.on('change',function(){
        $.ajax({
            url: "includes/search.php",
            method: "post",
            data: {
              Search: Search.val(), // Use .val() to get the value of the input field
            },
            success: function(doctors) {
                
              $("#table-data").html(doctors);
            },
            error: function(xhr, status, error) {
              console.error(error);
            }
          });
    })
    DoctorType.on("change", function() {  
      $.ajax({
        url: "includes/ajax-filter.php",
        method: "GET",
        data: {
          DoctorType: DoctorType.val(), // Use .val() to get the value of the input field
        },
        success: function(doctors) {
          $("#table-data").html(doctors);
        },
        error: function(xhr, status, error) {
          console.error(error);
        }
      });
    });
  });
  