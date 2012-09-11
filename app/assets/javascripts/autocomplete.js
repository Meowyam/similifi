$(".searchbox").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "/users/autocomplete_user_name.js",
                dataType: "json",
                data: {
                    term: request.term
                },
            success: function(data) {
                if (data.length == 0) {
                    $("#no-matches").text("No matches.");
                }
                response(data);
            }
        });
    },
});
