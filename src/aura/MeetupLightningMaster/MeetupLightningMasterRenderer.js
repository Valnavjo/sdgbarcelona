({
    render: function(cmp, helper) {
        var ret = this.superRender();
		helper.myHelperMethod(cmp, 'render');
        return ret;
    },
    rerender: function(cmp, helper) {
        var ret = this.superRerender();
		helper.myHelperMethod(cmp, 'rerender');
        return ret;
    },
    afterRender: function(cmp, helper) {
        var ret = this.superAfterRender();
		helper.myHelperMethod(cmp, 'afterRender');
        return ret;
    },
    unrender: function(cmp, helper) {
        var ret = this.superUnrender();
		helper.myHelperMethod(cmp, 'unrender');
        return ret;
    }
})