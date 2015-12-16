$(document).on('ready', function(){

    $( '#instagram' ).on('submit', function(e) {
        e.preventDefault();

        var $username = $( this ).find('[name=username]').val();
        
        $.getJSON( '/users/search/' + $username ).success(function( data ){
            if (data.length) {
                var user = data[0];
                $( '#container' ).html( data );
            }

        }).error(function(error){
            console.error( error );
        });
    });
});