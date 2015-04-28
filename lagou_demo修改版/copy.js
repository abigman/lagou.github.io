function getSelectedContents(){
    if (window.getSelection) { //chrome,firefox,opera
        var range=window.getSelection().getRangeAt(0);
        var container = document.createElement('div');
        container.appendChild(range.cloneContents());
        return container.innerHTML;
        //return window.getSelection(); //只复制文本
    }
    else if (document.getSelection) { //其他
        var range=window.getSelection().getRangeAt(0);
        var container = document.createElement('div');
        container.appendChild(range.cloneContents());
        return container.innerHTML;
        //return document.getSelection(); //只复制文本
    }
    else if (document.selection) { //IE特有的
        return document.selection.createRange().htmlText;
        //return document.selection.createRange().text; //只复制文本
    }
}