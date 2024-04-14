$(document).ready(function (e) {
    
    $.validator.addMethod("selectCheck", function(value, element) {
        return $(element).val().length > 0;
    }, "Please select at least one option.");

    $.validator.addMethod("customEmail", function(value, element) {
        // Regular expression for validating email addresses
        return this.optional(element) || /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
    }, "Please enter a valid email address.");

    $("#contact-form").validate({
        rules: {
            name:{
                required:true,
            },
            email: {
                required: true,email: true,customEmail:true,
            },
            contact: {
                required: true,number:true,maxlength: 12
            },
            // 'course_ids[]': {
            //     selectCheck: true
            // }
        },
        messages: {
            contact: {
                maxlength: "Number should not exceed 10 digits"
            },
            email: {
                required: "Please enter your email address."
            },
            // 'course_ids[]': {
            //     selectCheck: "Please select at least one course."
            // },
        },
        submitHandler: function (form, e) {
            return true;
        },
    });

   
    $("#enroll-form").validate({
        rules: {
            name:{
                required:true,
            },
            email: {
                required: true,email: true,customEmail:true,
            },
            contact: {
                required: true,number:true,maxlength: 12
            },
            // 'course_ids[]': {
            //     selectCheck: true
            // }
        },
        messages: {
            contact: {
                maxlength: "Number should not exceed 10 digits"
            },
            email: {
                required: "Please enter your email address."
            },
            // 'course_ids[]': {
            //     selectCheck: "Please select at least one course."
            // },
        },
        submitHandler: function (form, e) {
            return true;
        },
    });


});
