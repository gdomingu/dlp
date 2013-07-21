$( document ).ready(function() {
       $(".phone").mask("(999) 999-9999");
       $("#datetimepicker").datetimepicker();
       var job_one_time = $("#job_one_time");
       var job_on_going = $("#job_on_going");
       var frequencyparent = $("#job_frequency").parent();
       frequencyparent.hide();
       job_on_going.on("click", function(event){
        frequencyparent.show();
        job_one_time.prop("checked", false);
       });
       job_one_time.on("click", function(event){
        frequencyparent.hide();
        job_on_going.prop("checked", false);
       });
});