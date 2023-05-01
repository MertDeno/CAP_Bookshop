using { bookShop } from '../db/schema';

service RegisterService@(path: '/RegisterService') {
    @readonly entity Authors as projection on bookShop.Authors;
    entity Books as projection on bookShop.Books excluding {
        bookId
    };
    @readonly entity Nations as projection on bookShop.Nations;
}
