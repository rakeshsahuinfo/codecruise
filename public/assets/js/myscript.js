$(document).ready(function() {

    // $('#myexampleCourse').mousedown(function(e) {
    //     if (e.target.tagName === 'OPTION') {
    //         var selectedValues = e.target.value;
    //         e.preventDefault();
    //         $(this).focus();
    //         var $option = $(e.target);
    //         $option.prop('selected', !$option.prop('selected'));
    //         if (selectedValues.includes("other")) {
    //             $('#otherOption').show();
    //         } else {
    //             $('#otherOption').hide();
    //         }
    //         return false;
    //     }
    // });

    // $('#myexampleCourse').change(function() {
    //     // console.log("hello");
    //     if ($(this).val().indexOf('other') !== -1) {
    //         $('#otherOption').show();
    //     } else {
    //         $('#otherOption').hide();
    //     }
    // });

    $('#myexampleCourse').mousedown(function(e) {
        if (e.target.tagName === 'OPTION') {
            var $option = $(e.target);
            var selectedValues = [];
            var otherSelected = false;
    
            $option.prop('selected', !$option.prop('selected'));
    
            // Get all selected values
            $('#myexampleCourse option:selected').each(function() {
                selectedValues.push($(this).val());
            });
    
            if (selectedValues.includes("other")) {
                otherSelected = true;
            }

            if (otherSelected) {
                $('#otherOption').show();
            } else {
                $('#otherOption').hide();
            }
    
            $('#myexampleCourse').change();
    
            e.preventDefault();
            e.stopPropagation();
    
            return false;
        }
    });
});