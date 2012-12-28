//
//  DatabaseObj.h
//  BookManager
//
//  Created by  on 12-12-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface DatabaseObj : NSObject
+ (PLSqliteDatabase *) setup;
+ (void) close;
@end
