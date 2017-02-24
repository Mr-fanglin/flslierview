//
//  FLLeftViewController.m
//  FLSliderViewDemo
//
//  Created by FangLin on 17/2/17.
//  Copyright © 2017年 FangLin. All rights reserved.
//

#import "FLLeftViewController.h"

@interface FLLeftViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *dataArr;
}
@property (nonatomic,strong)UITableView *tableView;

@end

@implementation FLLeftViewController

-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, screen_height/3, 240, screen_height-screen_height/3-tabbarHeight) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor clearColor];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self settingLeftBack];
    [self setHeadView];
    [self setFootView];
    
    [self.view addSubview:self.tableView];
    
    dataArr = @[@"了解会员特权",@"QQ钱包",@"个性装扮",@"我的收藏",@"我的相册",@"我的文件"];
}

-(void)settingLeftBack
{
    UIImageView *backImgView = [[UIImageView alloc] init];
    backImgView.image = [UIImage imageNamed:@"left_slider_back"];
    backImgView.frame = self.view.bounds;
    backImgView.userInteractionEnabled = YES;
    [self.view addSubview:backImgView];
}

-(void)setHeadView
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, screen_height/6, 40, 40)];
    imageView.image = [UIImage imageNamed:@"308792__bottle-love_p.jpg"];
    imageView.layer.cornerRadius = imageView.frame.size.width/2;
    imageView.layer.masksToBounds = YES;
    [self.view addSubview:imageView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(imageView.frame.origin.x+imageView.frame.size.width+20, imageView.frame.origin.y, 240-imageView.frame.origin.x+imageView.frame.size.width, 40)];
    nameLabel.text = @"hello world";
    nameLabel.textColor = [UIColor blackColor];
    nameLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:nameLabel];
}

-(void)setFootView
{
    
}

#pragma mark - UITableViewDelegate代理方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *const cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = dataArr[indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
