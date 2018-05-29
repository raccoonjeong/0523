function showReplyPage(page, replyCnt) {

        var replyCnt = replyCnt || 1;
        var page = page || 1;
        var next = false;
        var tempLast = Math.ceil(page / 10.0) * 10;
        var start = tempLast - 9;
        var prev = (start != 1);

        if (tempLast * 10 >= replyCnt) {
            tempLast = Math.ceil(replyCnt / 10.0);
        } else {
            next = true;
        }
        var end = tempLast;
        var str = "";

        if (prev) {
            str += "<li><a href = '" + (start - 1) + "'> << </a></li>"
        }
        for (var i = start, len = end; i <= len; i++) {
            var strClass = page == i ? ' class=active' : '';
            str += "<li " + strClass + "><a href = '" + i + "'>" + i + " </a></li>";
        }
        if (next) {
            str += "<li><a href = '" + (end + 1) + "'> >> </a></li>"
        }
        $('.pagination').html(str);
    }
