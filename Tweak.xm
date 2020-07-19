#import "Tweak.h"

unsigned long long tracks = 0;
NSString *metadataText = @"";

%hook VISREFArtworkContentView

- (void)setMetadata:(id)arg1 withAccessibilityLabel:(id)arg2 {
    %orig;

    id durationLabel = MSHookIvar<id>(self, "_metadataLabel");
    [durationLabel setText:[NSString stringWithFormat: @"%@ • %llu Songs", metadataText, tracks]];
}

%end

%hook SPTFreeTierPlaylistViewModelImplementation

- (void)updateHeaderProperties {
    %orig;
    tracks = self.itemsViewModel.numberOfItems;
    metadataText = self.metadataText;
}

%end