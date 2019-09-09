//
//  MovieTitleCell.m
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import "MovieTitleCell.h"

@implementation MovieTitleCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self setMovieTitleLabel];
    }
    return self;
}

- (void)setMovieTitleLabel {
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    self.titleLabel.textColor = [UIColor blackColor];
    [self.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [self addSubview:self.titleLabel];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
