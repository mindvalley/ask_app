$('.submit.question').click(function() {
    $('form').submit();
    return false;
});

$('.thumbnails a').each(function() {
    $(this).popover({placement: 'bottom'});
})