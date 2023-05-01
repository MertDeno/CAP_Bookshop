const req = require("express/lib/request");


module.exports = srv => {
     srv.after('READ', 'Books', each => {
        each.stocks != 0 ? each.stocks >= 50 ?_addDiscount(each) : each.description = 'No discount' : each.description = 'Does not exists'
    })

    function _addDiscount(each){
        var discount = each.price * 0.33
        var tempPrice = each.price
        var newPrice = tempPrice - discount
        each.description = 'The new price with discount is '+Math.ceil(newPrice)+' '+each.currency_code
    }    

}