@protocol SPTFreeTierPlaylistItemsViewModel <NSObject>
@property(nonatomic, readonly) unsigned long long numberOfItems;
@property(nonatomic, readonly) unsigned long long numberOfLoadedItems;
@end

@interface SPTFreeTierPlaylistViewModelImplementation : NSObject
@property(nonatomic) __weak id <SPTFreeTierPlaylistItemsViewModel> itemsViewModel;
@property(copy, nonatomic) NSString *metadataText;
@end
