// Generated by Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if defined(__has_attribute) && __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if defined(__has_attribute) && __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import Foundation;
@import CoreGraphics;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;

SWIFT_CLASS("_TtC8practice11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIView;
@class UILabel;
@class UIButton;
@class UITableView;
@class UITableViewCell;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC8practice11Article_TVC")
@interface Article_TVC : UITableViewController
@property (nonatomic, readonly, copy) NSString * _Nonnull titleContent;
@property (nonatomic, readonly, copy) NSString * _Nonnull timeContent;
@property (nonatomic, readonly, copy) NSString * _Nonnull catagoryContent;
@property (nonatomic, strong) IBOutlet UIView * _Null_unspecified ThumbnailHeaderView;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified articleTitle;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified time;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified catagory;
- (IBAction)backToPreviousView:(id _Nonnull)sender;
- (void)viewDidLoad;
- (void)contentSetup;
@property (nonatomic, readonly, strong) UIView * _Nonnull statusBarBackgroundView;
- (void)didReceiveMemoryWarning;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class mainViewController;
@class BannerCategoryCollectionView;
@class UICollectionView;
@class UICollectionViewLayout;

SWIFT_CLASS("_TtC8practice18BannerCategoryCell")
@interface BannerCategoryCell : UICollectionViewCell <UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UIScrollViewDelegate, UICollectionViewDataSource>
@property (nonatomic, strong) mainViewController * _Nullable mainView;
@property (nonatomic, strong) IBOutlet BannerCategoryCollectionView * _Null_unspecified content;
- (void)awakeFromNib;
- (void)setUpViews;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (void)collectionView:(UICollectionView * _Nonnull)collectionView didSelectItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (UIEdgeInsets)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout insetForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UICollectionViewFlowLayout;

SWIFT_CLASS("_TtC8practice28BannerCategoryCollectionView")
@interface BannerCategoryCollectionView : UICollectionView <UICollectionViewDelegate, UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, readonly, strong) UICollectionViewFlowLayout * _Nonnull layout;
- (nonnull instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout * _Nonnull)layout OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)setUpView;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (UIEdgeInsets)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout insetForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
@end

@class UIImageView;

SWIFT_CLASS("_TtC8practice24BannerCollectionViewCell")
@interface BannerCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) IBOutlet UIImageView * _Null_unspecified rectangleImage;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified rectangleLabel;
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIImage;
@class NSMutableAttributedString;
@class selectionView;
@class pickerView;
@class UIBarButtonItem;

SWIFT_CLASS("_TtC8practice11Bookmark_VC")
@interface Bookmark_VC : UITableViewController
@property (nonatomic, strong) UIImage * _Nullable thumbnailImage;
@property (nonatomic, copy) NSString * _Nonnull titleContent;
@property (nonatomic, copy) NSString * _Nonnull subtitleContent;
@property (nonatomic, strong) NSMutableAttributedString * _Null_unspecified attributedString;
@property (nonatomic, strong) UIImage * _Nullable unreadIndication;
@property (nonatomic, copy) NSString * _Nullable selectedtext;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull leftSelectedtext;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull rightSelectedtext;
@property (nonatomic, strong) selectionView * _Null_unspecified selectionView;
@property (nonatomic, strong) pickerView * _Null_unspecified pickerView;
- (void)viewDidLoad;
- (void)tableViewSetup;
- (void)selectionSetup;
- (void)pickerViewSetup;
- (void)CategoryPickedWithSender:(UIButton * _Nonnull)sender;
@property (nonatomic, readonly, strong) UIButton * _Nonnull unfocus;
- (void)comfirmSelectionWithSender:(UIBarButtonItem * _Nonnull)sender;
- (void)dismissUnfocusWithSender:(id _Nonnull)sender;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice17CongressUpdate_VC")
@interface CongressUpdate_VC : UITableViewController
@property (nonatomic, strong) UIImage * _Nullable thumbnailImage;
@property (nonatomic, copy) NSString * _Nonnull titleContent;
@property (nonatomic, copy) NSString * _Nonnull subtitleContent;
@property (nonatomic, strong) NSMutableAttributedString * _Null_unspecified attributedString;
@property (nonatomic, strong) UIImage * _Nullable unreadIndication;
@property (nonatomic) NSInteger count;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull leftSelectedtext;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull rightSelectedtext;
@property (nonatomic, strong) selectionView * _Null_unspecified selectionView;
@property (nonatomic, strong) pickerView * _Null_unspecified pickerView;
- (void)viewDidLoad;
- (void)navigationBarSetup;
- (void)tableViewSetup;
- (void)selectionViewSetup;
- (void)pickerViewSetup;
- (void)CategoryPickedWithSender:(UIButton * _Nonnull)sender;
@property (nonatomic, readonly, strong) UIButton * _Nonnull unfocus;
- (void)comfirmSelectionWithSender:(UIBarButtonItem * _Nonnull)sender;
- (void)dismissUnfocusWithSender:(id _Nonnull)sender;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice14Content_TVCell")
@interface Content_TVCell : UITableViewCell
@property (nonatomic, readonly, copy) NSString * _Nonnull test;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified contentLabel;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice8Event_VC")
@interface Event_VC : UITableViewController
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull selectedtext;
@property (nonatomic, strong) selectionView * _Null_unspecified selectionView;
@property (nonatomic, strong) pickerView * _Null_unspecified pickerView;
- (void)viewDidLoad;
- (void)tableViewSetup;
- (void)selectionSetup;
- (void)pickerViewSetup;
- (void)CategoryPickedWithSender:(UIButton * _Nonnull)sender;
@property (nonatomic, readonly, strong) UIButton * _Nonnull unfocus;
- (void)comfirmSelectionWithSender:(UIBarButtonItem * _Nonnull)sender;
- (void)dismissUnfocusWithSender:(id _Nonnull)sender;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice19ExpertCommentary_VC")
@interface ExpertCommentary_VC : UITableViewController
@property (nonatomic, strong) UIImage * _Nullable thumbnailImage;
@property (nonatomic, copy) NSString * _Nonnull titleContent;
@property (nonatomic, copy) NSString * _Nonnull subtitleContent;
@property (nonatomic, strong) NSMutableAttributedString * _Null_unspecified attributedString;
@property (nonatomic, strong) UIImage * _Nullable unreadIndication;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull selectedtext;
@property (nonatomic, strong) selectionView * _Null_unspecified selectionView;
@property (nonatomic, strong) pickerView * _Null_unspecified pickerView;
- (void)viewDidLoad;
- (void)tableViewSetup;
- (void)selectionSetup;
- (void)pickerViewSetup;
- (void)CategoryPickedWithSender:(UIButton * _Nonnull)sender;
@property (nonatomic, readonly, strong) UIButton * _Nonnull unfocus;
- (void)comfirmSelectionWithSender:(UIBarButtonItem * _Nonnull)sender;
- (void)dismissUnfocusWithSender:(id _Nonnull)sender;
- (void)didReceiveMemoryWarning;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice14MayLike_TVCell")
@interface MayLike_TVCell : UITableViewCell <UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) IBOutlet UIView * _Null_unspecified View;
@property (nonatomic, strong) IBOutlet UICollectionView * _Null_unspecified content;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UIEdgeInsets)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout insetForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice13NavigationBar")
@interface NavigationBar : UINavigationBar
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice11Quiz_TVCell")
@interface Quiz_TVCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified question;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice16Reference_TVCell")
@interface Reference_TVCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified ReferenceContent;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified schedule;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified reminder;
- (IBAction)addToSchedule:(id _Nonnull)sender;
- (IBAction)AddReminder:(id _Nonnull)sender;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice18SearchTabBarCVCell")
@interface SearchTabBarCVCell : UICollectionViewCell
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice16SearchTab_CVCell")
@interface SearchTab_CVCell : UICollectionViewCell
@property (nonatomic, strong) IBOutlet UIView * _Null_unspecified highlightView;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified tabName;
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UISearchController;

SWIFT_CLASS("_TtC8practice9Search_VC")
@interface Search_VC : UIViewController
@property (nonatomic, strong) IBOutlet UIView * _Null_unspecified searchView;
@property (nonatomic, strong) IBOutlet UIView * _Null_unspecified tabBarView;
@property (nonatomic, strong) IBOutlet UITableView * _Null_unspecified tableView;
@property (nonatomic, copy) NSArray<NSDictionary<NSString *, id> *> * _Null_unspecified articles;
@property (nonatomic, copy) NSArray<NSDictionary<NSString *, id> *> * _Null_unspecified foundArticles;
@property (nonatomic, copy) NSDictionary<NSString *, id> * _Null_unspecified selectedArticle;
@property (nonatomic, strong) UITableViewController * _Null_unspecified resultController;
@property (nonatomic, strong) UISearchController * _Null_unspecified searchController;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice18SquareCategoryCell")
@interface SquareCategoryCell : UICollectionViewCell <UICollectionViewDelegate, UIScrollViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@property (nonatomic, strong) mainViewController * _Nullable mainView;
@property (nonatomic, copy) NSString * _Nonnull titleContent;
@property (nonatomic, copy) NSString * _Nonnull subtitleContent;
@property (nonatomic, strong) NSMutableAttributedString * _Null_unspecified attributedString;
@property (nonatomic) NSInteger count;
@property (nonatomic, strong) IBOutlet UICollectionView * _Null_unspecified content;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified title;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified seeAll;
- (void)awakeFromNib;
- (void)setupViews;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)collectionView:(UICollectionView * _Nonnull)collectionView didSelectItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (UIEdgeInsets)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout insetForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice24SquareCollectionViewCell")
@interface SquareCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) IBOutlet UIImageView * _Null_unspecified thumbnail;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified patient;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified time;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified title;
@property (nonatomic, strong) UIImage * _Nullable unreadIndication;
@property (nonatomic, strong) NSMutableAttributedString * _Null_unspecified attributedString;
@property (nonatomic) BOOL hadRead;
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSLayoutConstraint;

SWIFT_CLASS("_TtC8practice13TableViewCell")
@interface TableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UIImageView * _Null_unspecified thumbnail;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified author;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified date;
@property (nonatomic, strong) IBOutlet UILabel * _Null_unspecified title;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified bookmark;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint * _Null_unspecified topConstraint;
- (IBAction)bookmarkClicked:(id _Nonnull)sender;
@property (nonatomic, strong) UIImage * _Nullable unreadIndication;
@property (nonatomic, strong) NSMutableAttributedString * _Null_unspecified attributedString;
@property (nonatomic) BOOL hadRead;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@property (nonatomic) CGRect frame;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice19ThumbnailHeader_CRV")
@interface ThumbnailHeader_CRV : UICollectionReusableView
- (void)awakeFromNib;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice22ThumbnailHeader_TVCell")
@interface ThumbnailHeader_TVCell : UITableViewCell
- (IBAction)back:(id _Nonnull)sender;
- (IBAction)cancel:(id _Nonnull)sender;
- (void)awakeFromNib;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice21TrailFactSheet_TVCell")
@interface TrailFactSheet_TVCell : UITableViewCell
@property (nonatomic, strong) IBOutlet NSLayoutConstraint * _Null_unspecified topConstraint;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice17TrailFactSheet_VC")
@interface TrailFactSheet_VC : UITableViewController
@property (nonatomic, copy) NSString * _Nullable selectedtext;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull leftSelectedtext;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull rightSelectedtext;
@property (nonatomic, strong) selectionView * _Null_unspecified selectionView;
@property (nonatomic, strong) pickerView * _Null_unspecified pickerView;
- (void)viewDidLoad;
- (void)tableViewSetup;
- (void)selectionSetup;
- (void)pickerViewSetup;
- (void)CategoryPickedWithSender:(UIButton * _Nonnull)sender;
@property (nonatomic, readonly, strong) UIButton * _Nonnull unfocus;
- (void)comfirmSelectionWithSender:(UIBarButtonItem * _Nonnull)sender;
- (void)dismissUnfocusWithSender:(id _Nonnull)sender;
- (void)didReceiveMemoryWarning;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


@interface UITableViewController (SWIFT_EXTENSION(practice))
- (void)showPickerViewWithPickerView:(pickerView * _Nonnull)PickerView selectionView:(selectionView * _Nonnull)selectionView type:(NSInteger)type lastSelected:(NSArray<NSString *> * _Nonnull)lastSelected;
@end


SWIFT_CLASS("_TtC8practice18mainViewController")
@interface mainViewController : UICollectionViewController <UICollectionViewDelegateFlowLayout>
@property (nonatomic, copy) NSString * _Nonnull titleContent;
@property (nonatomic, copy) NSString * _Nonnull subtitleContent;
@property (nonatomic) NSInteger count;
@property (nonatomic) NSInteger numberOfRowBeforeSqueezedRectangle;
@property (nonatomic, strong) IBOutlet NavigationBar * _Null_unspecified navigationBar;
- (void)viewDidLoad;
- (void)setUpNavigationBar;
- (void)handleMenu;
- (void)handleSearch;
@property (nonatomic, readonly, strong) UIView * _Nonnull searchView;
- (void)handleBookmark;
- (void)seeAll;
- (void)showArticle;
- (NSInteger)collectionView:(UICollectionView * _Nonnull)collectionView numberOfItemsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)collectionView:(UICollectionView * _Nonnull)collectionView didSelectItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (UIEdgeInsets)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout insetForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGFloat)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (CGSize)collectionView:(UICollectionView * _Nonnull)collectionView layout:(UICollectionViewLayout * _Nonnull)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithCollectionViewLayout:(UICollectionViewLayout * _Nonnull)layout OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIToolbar;
@class UIPickerView;

SWIFT_CLASS("_TtC8practice10pickerView")
@interface pickerView : UIView <UIPickerViewDataSource, UIPickerViewDelegate>
@property (nonatomic) NSInteger numberOfRow;
@property (nonatomic) NSInteger selected;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull result;
@property (nonatomic, copy) NSArray<NSArray<NSString *> *> * _Nonnull selectionForCongress;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull selectionForDisease;
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull selectionForStage;
@property (nonatomic, strong) IBOutlet UIToolbar * _Null_unspecified toolbar;
@property (nonatomic, strong) IBOutlet UIPickerView * _Null_unspecified pickerView;
- (void)awakeFromNib;
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView * _Nonnull)pickerView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)pickerView:(UIPickerView * _Nonnull)pickerView numberOfRowsInComponent:(NSInteger)component SWIFT_WARN_UNUSED_RESULT;
- (NSString * _Nullable)pickerView:(UIPickerView * _Nonnull)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component SWIFT_WARN_UNUSED_RESULT;
- (void)pickerView:(UIPickerView * _Nonnull)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC8practice13selectionView")
@interface selectionView : UIView
@property (nonatomic, strong) IBOutlet NSLayoutConstraint * _Null_unspecified betweenTwoConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint * _Null_unspecified trailingConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint * _Null_unspecified equalWidthConstraint;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified left;
@property (nonatomic, strong) IBOutlet UIButton * _Null_unspecified right;
- (void)awakeFromNib;
- (void)updateConstraint;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
