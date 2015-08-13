//
//  FIBorderTextField.m
//  CustomControls
//
//  Created by NGUYEN CHI CONG on 7/19/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "FIBorderTextField.h"

const NSInteger TAG_OVERLAY = 1010;

@implementation FIBorderTextField {
	BOOL _editable;
}

/**-----------------------------------------------------------------**/
#pragma mark - Custom init

- (instancetype)init {
	if (self = [super init]) {
		[self initComponents];
	}
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	if (self = [super initWithCoder:aDecoder]) {
		[self initComponents];
	}
	return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		[self initComponents];
	}
	return self;
}

- (void)initComponents {

	_editable = YES;

	self.borderColor = [UIColor clearColor];
	self.bordeRoundRadius = 0.0f;
	self.borderWidth = 0.0f;

	self.leftPadding = 10;
	self.rightPadding = 10;
	self.type = FIBorderFieldTypeNormal;
}

- (void)dealloc {
	self.action = nil;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds {
	CGRect textRect = [super rightViewRectForBounds:bounds];
	textRect.origin.x -= self.rightPadding;
	return textRect;
}

/**-----------------------------------------------------------------**/
#pragma mark - Display

- (void)refreshDisplay {
	self.layer.borderColor = self.borderColor.CGColor;
	self.layer.borderWidth =  self.borderWidth;
	self.layer.cornerRadius = self.bordeRoundRadius;

	UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.leftPadding, 1)];
	self.leftView = leftView;

	UIButton *rightView = nil;
	switch (self.type) {
	case FIBorderFieldTypeInfo:
	{
		[self resetInteraction];

		UIImage *image = [UIImage imageNamed:@"ic_info"];
		rightView = [UIButton buttonWithType:UIButtonTypeCustom];
		rightView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
		[rightView setImage:image forState:UIControlStateNormal];

		[rightView addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];

	}
	break;
	case FIBorderFieldTypeOption: {

		_editable = NO;

		UIImage *image = [UIImage imageNamed:@"ic_direction_down"];
		rightView = [UIButton buttonWithType:UIButtonTypeCustom];
		rightView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
		[rightView setImage:image forState:UIControlStateNormal];

		[rightView addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];

        UIButton *btOverlay = (UIButton*)[self viewWithTag:TAG_OVERLAY];
        if (!btOverlay) {
            btOverlay = [UIButton buttonWithType:UIButtonTypeCustom];
            btOverlay.tag = TAG_OVERLAY;
            btOverlay.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
            [btOverlay addTarget:self action:@selector(optionRecognized:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btOverlay];
        }
		btOverlay.frame = self.bounds;
	}
	break;

	default:
	{
		[self resetInteraction];
	}
	break;
	}

	self.rightView = rightView;

	self.leftViewMode = self.rightViewMode = UITextFieldViewModeAlways;
}

- (void)resetInteraction {
	_editable = YES;
	UIView *btOverlay = [self viewWithTag:TAG_OVERLAY];
	[btOverlay removeFromSuperview];
}

- (void)setNeedsDisplay {
	[super setNeedsDisplay];
	[self refreshDisplay];
}

/**-----------------------------------------------------------------**/
#pragma mark - Refresh

- (void)awakeFromNib {
	[self setNeedsDisplay];
}

- (void)didMoveToSuperview {
	[super didMoveToSuperview];
	[self setNeedsDisplay];
}

/**-----------------------------------------------------------------**/
#pragma mark - Refresh when value changed

- (void)setBorderColor:(UIColor *)borderColor {
	_borderColor = borderColor;
	[self setNeedsDisplay];
}

- (void)setBordeRoundRadius:(CGFloat)bordeRoundRadius {
	_bordeRoundRadius = bordeRoundRadius;
	[self setNeedsDisplay];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
	_borderWidth = borderWidth;
	[self setNeedsDisplay];
}

- (void)setLeftPadding:(CGFloat)leftPadding {
	_leftPadding = leftPadding;
	[self setNeedsDisplay];
}

-(void)setRightPadding:(CGFloat)rightPadding {
	_rightPadding = rightPadding;
	[self setNeedsDisplay];
}

- (void)setType:(NSInteger)type {
	_type = type;
	[self setNeedsDisplay];
}

/**-----------------------------------------------------------------**/
#pragma mark - Actions
- (void)buttonTapped: (id)sender {
	if (self.action) {
		self.action(self);
	}
}

- (void)optionRecognized: (id)sender {
	if (self.action) {
		self.action(self);
	}
}

-(BOOL)canBecomeFirstResponder {
	return _editable;
}

@end
