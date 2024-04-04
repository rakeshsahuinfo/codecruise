$(document).ready(function() {
    // $('#myexampleCourse').mousedown(function(e) {
    //     if (e.target.tagName === 'OPTION') {
    //         e.preventDefault();
    //         $(this).focus();
    //         var $option = $(e.target);
    //         $option.prop('selected', !$option.prop('selected'));
    //         return false;
    //     }
    // });

    $('#myexampleCourse').change(function() {
        // console.log("hello");
        if ($(this).val().indexOf('other') !== -1) {
            $('#otherOption').show();
        } else {
            $('#otherOption').hide();
        }
    });
});