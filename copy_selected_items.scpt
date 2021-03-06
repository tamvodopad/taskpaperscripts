JsOsaDAS1.001.00bplist00�Vscript_<// COPY ONLY THE SELECTED LINES WHICH ARE VISIBLE IN TASKPAPER 3
// (not copying lines which are folded or filtered away)

(function () {
    'use strict';

    function TaskPaperContext(editor) {

        // Only the visible component of the selection

        return editor
            .selection
            .selectedItems
            .filter(function (item) {
                return editor.isDisplayed(item);
            })
            .map(function (item) {
                return Array(item.depth)
                    .join('\t') + item.bodyString;
            })
            .join('\n');

    }

    var ds = Application("TaskPaper")
        .documents,
        d = ds.length ? ds[0] : undefined;

    if (d) {

        // COPY THE VISIBLE LINES WHICH ARE SELECTED
        var a = Application.currentApplication(),
            sa = (a.includeStandardAdditions = true, a),
            strLines = d.evaluate({
                script: TaskPaperContext.toString()
            });

        sa.setTheClipboardTo(
            strLines
        );

        return strLines;
    }

})();                              Rjscr  ��ޭ