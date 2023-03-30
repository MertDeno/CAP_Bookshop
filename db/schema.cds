namespace bookShop;
using { managed } from '@sap/cds/common';

entity Books : managed {
    key bookId: Integer;
    bookName: String;
    edition:Integer;
    ISBN: String(13);
    publisher: String;
    genre: String;
    availability: Integer;
    authors: Association to Authors
}

entity Authors : managed {
    key authorId: Integer;
    authorName: String;
    likes: Integer;
    books: Association to many Books on books.authors = $self;
    nations: Association to Nations
}

entity Nations: managed{
    key nationId: Integer;
    nation: String;
    rate: Integer;
    authors: Association to many Authors on authors.nations = $self;
}