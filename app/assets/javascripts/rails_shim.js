function bindDeleteLinks() {
    for (var i = 0, links = jUtils.findByClass('delete'); i < links.length; i++) {
        jUtils.addEvent(links[i], 'click', deleteRecord);
    }
}
function deleteRecord(e) {
    var ev = jUtils.getEvent(e);
    if (confirm(this.getAttribute('data-confirm') || 'You sure?')) {
        var form = document.createElement('form')
            , meth = document.createElement('input')
            , token = document.createElement('input');

        form.id = 'tempDestroyForm';
        form.method = 'post';
        form.action = this.href;
        meth.type = token.type = 'hidden';
        meth.name = '_method';
        meth.value = 'delete';
        token.name = 'authenticity_token';
        token.value = document.getElementsByName('csrf-token')[0].content;
        form.appendChild(meth);
        form.appendChild(token);
        document.body.appendChild(form);
        document.getElementById('tempDestroyForm').submit();
    }
    ev.stopPropagation();
    ev.preventDefault();
    return false;
}