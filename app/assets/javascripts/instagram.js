$(document).on('ready', function(){

    $( '#instagram' ).on('submit', function(e) {
        e.preventDefault();

        var $username = $( this ).find('[name=username]').val();  
        var $social_network = $( this ).find('input[name=social_network]:checked').val();
        
        $.getJSON( '/users/search/' + $social_network + '/' + $username ).success(function( data ){
            if (data.length) {
                var user = data[0];
                $( '#container' ).html( data );
            }
        }).error(function(error){
            console.log( error );
        });
    });
});