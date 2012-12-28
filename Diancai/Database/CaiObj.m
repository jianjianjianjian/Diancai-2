//
//  CaiObj.m
//  Diancai
//
//  Created by 吴晓鑫 on 12-12-15.
//
//

#import "CaiObj.h"
#import "DatabaseObj.h"
@implementation CaiObj;
@synthesize ID,Name,Price,Number,Jieshao;
+ (NSArray *) findAll:(NSString*)position
{
    PLSqliteDatabase* database=[DatabaseObj setup];
    id<PLResultSet>rs;
    NSString* sql=@"SELECT * FROM cai_";
    rs=[database executeQuery:[sql stringByAppendingString:position]];
    NSMutableArray* Cais=[[NSMutableArray alloc]init];
    while ([rs next]) {
        NSString* ID=[rs objectForColumn:@"ID"];
        NSString* name=[rs objectForColumn:@"Name"];
        NSString* price=[rs objectForColumn:@"Price"];
        NSString* number=[rs objectForColumn:@"Number"];
        NSString* jieshao=[rs objectForColumn:@"Jieshao"];
        CaiObj *cai = [[CaiObj alloc]initWithID:ID name:name price:price number:number jieshao:jieshao];
        [Cais addObject:cai];
    }
    [rs close];
    return Cais;
}@end
