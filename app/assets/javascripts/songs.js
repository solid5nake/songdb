$(function() {
  $('body').on('click', 'a.cleanup_songs', function(event) {
    event.preventDefault();

    dataConfirmModal.confirm({
      title: 'Are you sure?',
      text: 'You\'ll lose all your songs',
      commit: 'Yes, I\'m sure',
      cancel: 'No, let me think',
      onConfirm: function() {
        $.ajax({
          type: 'DELETE',
          url: '/songs',
          dataType: 'script'
        });
      }
    });
  });

  $('body').on('click', 'a.cleanup_songs', function(event) {
    event.preventDefault();

    var song_id = $(event.target).closest('[data-id]').data('id'),
        artist_id = $(event.target).closest('[data-artist_id]').data('artist_id');

    dataConfirmModal.confirm({
      title: 'Are you sure?',
      text: 'You\'ll remove this song',
      commit: 'Yes, I\'m sure',
      cancel: 'No, let me think',
      onConfirm: function() {
        $.ajax({
          type: 'DELETE',
          url: '/songs/' + song_id + '?artist_id=' + artist_id,
          dataType: 'script'
        });
      }
    });
  });

});
