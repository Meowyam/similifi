$(function() {
    $("#search_user").autocomplete({
        minLength: 0,
        source: function(request, response) {
            $.ajax({
                url: "/users.json",
                data: {
                    term: request.term
                },
                success: function(data) {
                if (!data.length) {
                    $("#no-matches").text("No matches.");
                }
                response(data);
            }
            });
        },
        focus: function(event, ui) {
            $("#search_user").val(ui.item.name);
            return false;
        },
        select: function(event, ui) {
            $("#search_user").val(ui.item.name);
            $("#search_form").submit();
        }
    })
    .data("autocomplete")._renderItem = function(ul, item) {
        return $("<li></li>")
        .data("item.autocomplete", item)
        .append("<a>" + item.name + "</a>")
        .appendTo(ul);
    };
});
