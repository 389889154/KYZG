//
//  LeftMenuViewController.m
//  iOS-app
//
//  Created by wey on 16/1/9.
//  Copyright © 2016年 wey. All rights reserved.
//

#import "LeftMenuViewController.h"

@interface LeftMenuViewController ()
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) NSArray *icons;
@end

@implementation LeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 60; 
    _items = @[@"item1",@"item2",@"item3",@"item4",@"item5",@"夜间模式"];
    _icons = @[kPlaceHolder,kPlaceHolder,kPlaceHolder,kPlaceHolder,kPlaceHolder,kPlaceHolder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.imageView.image = _icons[indexPath.row];
    cell.textLabel.text = _items[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    return 120.f;
}

@end
