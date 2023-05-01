namespace bookShop;
using { managed, Currency, Country } from '@sap/cds/common';

aspect availability {
    stocks: Integer;
    price: Integer;
    currency: Currency;
}

aspect authorDetail {
    key authorId: Integer;
    authorName: String;
    likes: Integer;
}

entity Books : availability {
    key bookId: Integer;
    bookName: String;
    edition:Integer;
    ISBN: String(13);
    publisher: String;
    genre: String;
    authors: Association to Authors;
    description:String;
}

@cds.autoexpose
entity Authors : authorDetail {
    books: Association to many Books on books.authors = $self;
    nations: Association to Nations;
    country: Country;
}

@cds.autoexpose
entity Nations {
    key nationId: Integer;
    nation: String;
    rate: Integer;
    authors: Association to many Authors on authors.nations = $self;
}