foreach($hotels as $key => $hotel) {

    $slug  = $hotel->HotelName;
    $title = $hotel->HotelName;


if ($hotel->translation == NULL) {
    $description = $hotel->Overview;
    } else {
    $description = $hotel->translation;
    }

    $hotel_id = wp_insert_post(
        array(
            //'ID'              =>  $hotel->id,
            'post_mime_type'    =>  $hotel->id,
            'comment_status'    =>  'closed',
            'ping_status'       =>  'closed',
            'post_author'       =>  $author_id,
            'post_name'         =>  $slug,
            'post_title'        =>  $title,
            'post_status'       =>  'publish',
            'post_type'         =>  'hotel',
            'post_content'      =>  $description, )
    );

    } 
