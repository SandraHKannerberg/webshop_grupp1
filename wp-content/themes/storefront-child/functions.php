<?php

function remove_sidebar() { 
    return false; 
} 
add_filter( 'is_active_sidebar', 'remove_sidebar', 10, 2 );
