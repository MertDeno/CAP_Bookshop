using { bookShop } from '../db/schema';


service RegisterService@(path: '/RegisterService') {
    entity Authors as projection on bookShop.Authors excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    }

    entity Books as projection on bookShop.Books excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    }

    entity Nations as projection on bookShop.Nations excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    }    
}
