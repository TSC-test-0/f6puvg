using { guitarstoreSrv } from '../srv/service.cds';

annotate guitarstoreSrv.Product with @odata.draft.enabled;
annotate guitarstoreSrv.Audience with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @odata.draft.enabled;
annotate guitarstoreSrv.Discount with @odata.draft.enabled;
annotate guitarstoreSrv.Audience with @cds.odata.valuelist;
annotate guitarstoreSrv.Warehouse with @cds.odata.valuelist;
annotate guitarstoreSrv.Discount with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate guitarstoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate guitarstoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description';
  price @title: 'Price'
};

annotate guitarstoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Audience', Value: targetAudience_ID },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouse_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
];

annotate guitarstoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Audience', Value: targetAudience_ID },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouse_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
  ]
};

annotate guitarstoreSrv.Product with {
  targetAudience @Common.Text: { $value: targetAudience.audienceName, ![@UI.TextArrangement]: #TextOnly };
  warehouse @Common.Text: { $value: warehouse.warehouseLocation, ![@UI.TextArrangement]: #TextOnly };
  discount @Common.Text: { $value: discount.discountCode, ![@UI.TextArrangement]: #TextOnly }
};

annotate guitarstoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Audience with @UI.HeaderInfo: { TypeName: 'Audience', TypeNamePlural: 'Audiences', Title: { Value: audienceName } };
annotate guitarstoreSrv.Audience with {
  ID @Common.Text: { $value: audienceName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Audience with @UI.Identification: [{ Value: audienceName }];
annotate guitarstoreSrv.Audience with {
  audienceName @title: 'Audience Name';
  pitch @title: 'Pitch'
};

annotate guitarstoreSrv.Audience with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: audienceName },
    { $Type: 'UI.DataField', Value: pitch }
];

annotate guitarstoreSrv.Audience with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: audienceName },
    { $Type: 'UI.DataField', Value: pitch }
  ]
};

annotate guitarstoreSrv.Audience with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: warehouseLocation } };
annotate guitarstoreSrv.Warehouse with {
  ID @Common.Text: { $value: warehouseLocation, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Warehouse with @UI.Identification: [{ Value: warehouseLocation }];
annotate guitarstoreSrv.Warehouse with {
  warehouseLocation @title: 'Warehouse Location';
  stock @title: 'Stock'
};

annotate guitarstoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: warehouseLocation },
    { $Type: 'UI.DataField', Value: stock }
];

annotate guitarstoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: warehouseLocation },
    { $Type: 'UI.DataField', Value: stock }
  ]
};

annotate guitarstoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Discount with @UI.HeaderInfo: { TypeName: 'Discount', TypeNamePlural: 'Discounts', Title: { Value: discountCode } };
annotate guitarstoreSrv.Discount with {
  ID @Common.Text: { $value: discountCode, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Discount with @UI.Identification: [{ Value: discountCode }];
annotate guitarstoreSrv.Discount with {
  discountCode @title: 'Discount Code';
  discountAmount @title: 'Discount Amount'
};

annotate guitarstoreSrv.Discount with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: discountCode },
    { $Type: 'UI.DataField', Value: discountAmount }
];

annotate guitarstoreSrv.Discount with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: discountCode },
    { $Type: 'UI.DataField', Value: discountAmount }
  ]
};

annotate guitarstoreSrv.Discount with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

