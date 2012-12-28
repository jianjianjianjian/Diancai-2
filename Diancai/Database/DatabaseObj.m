//
//  DatabaseObj.m
//  BookManager
//
//  Created by  on 12-12-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DatabaseObj.h"
#import <PlausibleDatabase/PlausibleDatabase.h>
static PLSqliteDatabase * dbPointer;
@implementation DatabaseObj

+ (PLSqliteDatabase *) setup{
	if (dbPointer) {
		return dbPointer;
	}
	
	NSLog(@"%@",NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES));
	NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	NSString *realPath = [documentPath stringByAppendingPathComponent:@"Caidb.rdb"];
	
	NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"Caidb" ofType:@"rdb"];
	
	NSFileManager *fileManager = [NSFileManager defaultManager];
	if (![fileManager fileExistsAtPath:realPath]) {
		NSError *error;
		if (![fileManager copyItemAtPath:sourcePath toPath:realPath error:&error]) {
			NSLog(@"%@",[error localizedDescription]);
		}
	}
	
	NSLog(@"复制sqlite到路径：%@成功。",realPath);
	
	//把dbpointer地址修改为可修改的realPath。
	dbPointer = [[PLSqliteDatabase alloc] initWithPath:realPath];
	
	[dbPointer open];
	
	return dbPointer;
}

+ (void) close{
	if (dbPointer) {
		[dbPointer close];
		dbPointer = NULL;
	}
}
@end
