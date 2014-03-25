//
//  MockPaises.m
//  Test
//
//  Created by OLX - German on 3/25/14.
//  Copyright (c) 2014 OLX. All rights reserved.
//

#import "MockPaises.h"

@implementation MockPaises

+ (NSMutableArray *) getCountries {
    NSMutableArray *lista = [[NSMutableArray alloc] init];
    
    [lista addObject:@"Argentina"];
    [lista addObject:@"Argentina1"];
    [lista addObject:@"Argentina2"];
    [lista addObject:@"Argentina3"];
    [lista addObject:@"Argentina4"];
    
    return lista;
}

+ (NSMutableArray *) getWebSiteAddresses {
    NSMutableArray *lista = [[NSMutableArray alloc] init];
    
    [lista addObject:@"http://www.olx.com.ar"];
    [lista addObject:@"http://www.olx.com.br"];
    [lista addObject:@"http://www.olx.in"];
    [lista addObject:@"http://www.olx.es"];
    [lista addObject:@"http://www.olx.com.pk"];
    
    return lista;
}

@end
