function makePage(param){

    var tag = param.tag || "<li>$$page</li>";
    var pageSize = param.pageSize || 10;
    var liCount = param.liCount || 10;
    var total = param.total || 0;
    var current = param.current || 1;

    var tempEnd = makeTempEnd();
    var startNum = makeStart();
    var realEnd = makeRealEnd();
    var prev = startNum -1;
    var next = tempEnd * pageSize < total ? tempEnd +1: 0;

//    console.log("tempEnd:" + tempEnd);
//    console.log("startNum:" + startNum);
//    console.log("realEnd:" + realEnd);
//    console.log("prev:" + prev);
//    console.log("next:" + next);
//    console.log(makeTags());

    function makeTags(){

        var str = "";

        if(prev != 0){
            str += tag.replace("$$page", "<a href='/yosi/list?page="+prev+"'aria-label='Previous'><span aria-hidden='true'>«</span></a>");
        }

        for(var i = startNum; i <= realEnd; i++ ){
            str += tag.replace("$$page", "<a href='/yosi/list?page="+i+"'>"+i+"</a>");
        }

        if(next != 0){
            str += tag.replace("$$page", "<a href='/yosi/list?page="+next+"'aria-label='Next'><span aria-hidden='true'>»</span></a>");
        }

        return str;
    }

    //tempEnd
    function makeTempEnd() {
        return Math.ceil(current/liCount) * liCount;
    }

    //start
    function makeStart(){
        return tempEnd - (liCount -1);
    }

    //realEnd
    function makeRealEnd() {
        var lastPage = Math.ceil(total/pageSize);
        return tempEnd > lastPage ? lastPage : tempEnd;
    }
    return makeTags();

}