//
//  CaiObj.h
//  Diancai
//
//  Created by 吴晓鑫 on 12-12-15.
//
//

#import <Foundation/Foundation.h>

@interface CaiObj : NSObject
@property  (retain,nonatomic)  NSString * ID;
@property  (retain,nonatomic)  NSString * Name;
@property  (retain,nonatomic)  NSString * Price;
@property  (retain,nonatomic)  NSString * Number;
@property  (retain,nonatomic)  NSString * Jieshao;
+ (NSArray *) findAll:(NSString*)position;
-(id)initWithID:(NSString*)ID name:(NSString*)name price:(NSString*)price number:(NSString*)number jieshao:(NSString*)jieshao;
@end
