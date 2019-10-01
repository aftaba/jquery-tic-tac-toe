jQuery(document).ready(function( $ ) {

    $('#add-new-note').click( function( e ){
        e.preventDefault();
        
        notes = $('#my-short-notes').val();

        if ( '' == notes.replace(/(^[\s]+|[\s]+$)/g, '' ) ) {
            alert( "Your notes can't be blank" );
            return false;
        }
        
        notes = notes.replace(/(^[\s]+|[\s]+$)/g, '' );
        notes = notes.replace(/\n/g, "<br />");
        
        var data = {
            'notes' : notes,
            'csrf': $('#csrf-token').val() 
        };

        $.ajax({
           type: "POST",
           data : data,
           url: project_path+"apis/insert-new-notes.php",
           dataType: "json",
           success: function (response) {
                if ( 200 == response.code ) {
                    $('#add-new-note-form').remove();
                    $('#response-message #message').html( response.message );
                    $('#response-message #slug').html( response.slug );
                    $('#response-message').show();
                } else {
                   alert("Cannot add to notes list ! Try again");
                }
            }
        });

    });

});
