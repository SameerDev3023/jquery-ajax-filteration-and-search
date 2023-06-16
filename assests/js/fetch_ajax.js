$(document).ready(function(){

    $.ajax({
        url:'includes/fetch-data.php',
        method:'post',
        success:function(doctors){
               $('#table-data').html(doctors)
        }
    })
})