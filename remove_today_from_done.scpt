JsOsaDAS1.001.00bplist00�Vscript_zfunction TaskPaperContextScript(editor, options) {
  var outline = editor.outline;
  outline.groupUndoAndChanges(function() {
    outline.evaluateItemPath('//@done').forEach(function (each) {
      each.removeAttribute('data-today', each.getAttribute('data-done'));
    });
  });
}

Application("TaskPaper").documents[0].evaluate({
  script: TaskPaperContextScript.toString()
})                              �jscr  ��ޭ