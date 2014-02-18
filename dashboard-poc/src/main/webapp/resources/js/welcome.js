/**
 * Created by igor on 18.02.14.
 */
$(function () {
    $("#dashboard_welcome").load("/welcome",
        function (response, status, xhr) {
            if (status == "error") {
//                var msg = "Sorry but there was an error: ";
//                $("#error").html(msg + xhr.status + " " + xhr.statusText);
//                $("#dashboard_welcome").load("/dashboard/welcome");
            }
        })
});