//
//  CaidanViewCell.h
//  Diancai
//
//  Created by 吴晓鑫 on 12-12-15.
//
//

#import <UIKit/UIKit.h>

@interface CaidanViewCell : UITableViewCell
{
    IBOutlet UIImageView* _CaiImage;
    IBOutlet UILabel* _CaiName;
    IBOutlet UILabel* _CaiPrice;
    IBOutlet UILabel* _Number;
    IBOutlet UIButton* _Diancai;
    
}
@property (retain,nonatomic) UIImageView* CaiImage;
@property (retain,nonatomic) UILabel* CaiName;
@property (retain,nonatomic) UILabel* CaiPrice;
@property (retain,nonatomic) UIButton* Diancai;
@property (retain,nonatomic) UILabel* Number;
@end
