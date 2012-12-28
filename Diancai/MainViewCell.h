//
//  MainViewCell.h
//  Diancai
//
//  Created by s3209_25 on 12-12-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewCell : UITableViewCell
{
    IBOutlet UIImageView* _CaileiImage;
    IBOutlet UILabel* _CaileiName;
}
@property (retain,nonatomic) UIImageView* CaileiImage;
@property (retain,nonatomic) UILabel* CaileiName;
@end
