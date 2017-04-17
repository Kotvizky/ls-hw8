var button = $('#submit');
button.on('click', function () {
    $.ajax({
        url: '/api/products/' + $('#id').val(),
        method: 'GET',
        dataType: 'json'
    }).done(function (arr) {

        var getRow = function (arr) {
            var row = '';
            $.each(arr, function (i, val) {
                    if (i == 'category') {
                        val = val.name;
                    }
                    row += '<td>' + val + '</td>';
                }
            );
            return '<tr>' + row + '</tr>';
        }

        var getHead = function (arr) {
            thead = '';
            $.each(arr, function (i) {
                thead += '<th>' + i + '</th>';
                //console.log(i);
            })
            return thead;
        }
        var thead = '';
        var tbody = '';

        if ($('#id').val() == '')
        {
            thead = getHead(arr[0]);
            $.each(arr,function (i,val) {
                    tbody = tbody + getRow(val);
                }
            );
        }
        else {
            thead = getHead(arr);
            tbody = getRow(arr);
        }

        $('thead').html(thead);
        $('tbody').html(tbody);

    })
})

