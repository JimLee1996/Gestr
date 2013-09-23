#import "ShadowTextFieldCell.h"

@implementation ShadowTextFieldCell

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
	NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithAttributedString:[self attributedStringValue]];
    
	NSShadow *textShadow = [NSShadow new];
	[textShadow setShadowOffset:AppButtonBlackTextShadowOffset];
	[textShadow setShadowColor:AppButtonBlackTextShadowColor];
	[textShadow setShadowBlurRadius:AppButtonBlackTextShadowBlurRadius];
    
	[attrString addAttribute:NSShadowAttributeName value:textShadow range:((NSRange) {0, [attrString length] }
	                                                                       )];
    
	[self setAttributedStringValue:attrString];
    
	[super drawWithFrame:cellFrame inView:controlView];
}

@end
