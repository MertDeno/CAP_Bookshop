using RegisterService as service from '../../srv/register';

annotate service.Nations with @(
    UI.LineItem : [
        {   
            $Type : 'UI.DataField',
            Label : 'Nation ID',
            Value : nationId,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Nation',
            Value : nation,
            ![@UI.Importance] : #High,
        },
    ]
);
annotate service.Nations with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'nationId',
                Value : nationId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'nation',
                Value : nation,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Authors',
            ID : 'Authors',
            Target : 'authors/@UI.LineItem#Authors',
        },
    ]
);
annotate service.Authors with @(
    UI.LineItem #Authors : [
        {
            $Type : 'UI.DataField',
            Value : authorId,
            Label : 'Author ID',
        },
        {
            $Type : 'UI.DataField',
            Value : authorName,
            Label : 'Author Name',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#likes',
            Label : 'Likes',
            ![@UI.Importance] : #High,
        },]
);
annotate service.Nations with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'nation',
            Target : '@UI.DataPoint#nation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'rate',
            Target : '@UI.DataPoint#rating1',
        },],
    UI.FieldGroup #sadsad : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : nation,
                Label : 'nation',
            },],
    }
);
annotate service.Nations with @(
    UI.DataPoint #nation : {
        $Type : 'UI.DataPointType',
        Value : nation,
        Title : 'Uyruk',
    }
);
annotate service.Nations with @(
    UI.DataPoint #progress : {
        $Type : 'UI.DataPointType',
        Value : nationId,
        Title : 'nationId',
        TargetValue : 100,
        Visualization : #Progress,
    }
);
annotate service.Nations with @(
    UI.DataPoint #rating : {
        $Type : 'UI.DataPointType',
        Value : nationId,
        Title : 'nationId',
        TargetValue : 5,
        Visualization : #Rating,
    }
);
annotate service.Nations with @(
    UI.DataPoint #rating1 : {
        $Type : 'UI.DataPointType',
        Value : rate,
        Title : 'Beğenilme Oranı',
        TargetValue : 5,
        Visualization : #Rating,
    }
);
annotate service.Nations with @(
    UI.DataPoint #rate : {
        Value : rate,
        Visualization : #Progress,
        TargetValue : 100,
    }
);
annotate service.Authors with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Books',
            ID : 'Books',
            Target : 'books/@UI.LineItem#Books',
        },
    ]
);
annotate service.Books with @(
    UI.LineItem #Books : [
        {
            $Type : 'UI.DataField',
            Value : bookId,
            Label : 'Book Number',
        },{
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#edition1',
            Label : 'Edition',
        },
        {
            $Type : 'UI.DataField',
            Value : bookName,
            Label : 'Book Name',
        },
        {
            $Type : 'UI.DataField',
            Value : ISBN,
            Label : 'ISBN',
        },
        {
            $Type : 'UI.DataField',
            Value : publisher,
            Label : 'Publisher',
        },
        {
            $Type : 'UI.DataField',
            Value : genre,
            Label : 'Genre',
        },]
);
annotate service.Nations with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.Authors with @(
    UI.DataPoint #likes : {
        Value : likes,
        Visualization : #Progress,
        TargetValue : 100,
        Criticality : likes,
    }
);
annotate service.Books with @(
    UI.DataPoint #edition : {
        Value : edition,
        Visualization : #Rating,
        TargetValue : 50,
    }
);
annotate service.Books with @(
    UI.DataPoint #bookId : {
        Value : bookId,
        Visualization : #Progress,
        TargetValue : 100,
    }
);
annotate service.Books with @(
    UI.DataPoint #edition1 : {
        Value : edition,
        Visualization : #Progress,
        TargetValue : 100,
    }
);
annotate service.Books with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : bookName,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.Books with @(
    UI.HeaderFacets : [],
    UI.FieldGroup #sdfdsdsf : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
