//
//  ViewController.m
//  MovieDBTest
//
//  Created by Sagar Tilekar on 09/09/19.
//  Copyright © 2019 Sagar Tilekar. All rights reserved.
//

#import "MovieListViewController.h"
#import "Model/MovieDescriptionModel.h"
#import "ViewModel/MovieTitleCell.h"
@interface MovieListViewController ()
@property (strong,nonatomic)MovieViewModel *movieViewModel;
@property (strong,nonatomic)UITableView *movieListTableView;
@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _movieViewModel = [[MovieViewModel alloc] init];
    _movieViewModel.movieViewdelegate = self;
}

-(void)viewDidAppear:(BOOL)animated {
    [_movieViewModel getMovieList];
    [self tableViewSetUp];
}

- (void)tableViewSetUp{
    self.movieListTableView = [[UITableView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height) style:UITableViewStylePlain];
    self.movieListTableView.backgroundColor = [UIColor whiteColor];
    self.movieListTableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.movieListTableView.delegate = self;
    self.movieListTableView.dataSource = self;
    [self.movieListTableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:self.movieListTableView];
}

- (void)updateView:(NSMutableArray *)movieList {
    [self.movieListTableView reloadData];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"MovieTitleCell";
    MovieTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[MovieTitleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.titleLabel.text = [(MovieDescriptionModel *)[self.movieViewModel.movieList objectAtIndex:indexPath.row] movieTitle];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.movieViewModel.movieList count];
}

@end
