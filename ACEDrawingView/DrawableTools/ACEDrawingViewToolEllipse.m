/*
 * ACEDrawingView: https://github.com/acerbetti/ACEDrawingView
 *
 * Copyright (c) 2018 Stefano Acerbetti
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#import "ACEDrawingViewToolEllipse.h"

NSString * const kACEDrawingToolViewEllipseStroke = @"kACEDrawingToolViewEllipseStroke";
NSString * const kACEDrawingToolViewEllipseFill   = @"kACEDrawingToolViewEllipseFill";

@implementation ACEDrawingViewToolEllipseStroke

+ (NSString *)identifier
{
    return kACEDrawingToolViewEllipseStroke;
}


#pragma mark Drawing View Methods

- (void)draw
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set the properties
    CGContextSetAlpha(context, self.alpha);
    
    // draw the ellipse
    CGRect rectToFill = CGRectMake(self.firstPoint.x, self.firstPoint.y, self.lastPoint.x - self.firstPoint.x, self.lastPoint.y - self.firstPoint.y);
    
    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
    CGContextSetLineWidth(context, self.lineWidth);
    CGContextStrokeEllipseInRect(UIGraphicsGetCurrentContext(), rectToFill);
}

@end

#pragma mark -

@implementation ACEDrawingViewToolEllipseFill

+ (NSString *)identifier
{
    return kACEDrawingToolViewEllipseFill;
}


#pragma mark Drawing View Methods

- (void)draw
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set the properties
    CGContextSetAlpha(context, self.alpha);
    
    // draw the ellipse
    CGRect rectToFill = CGRectMake(self.firstPoint.x, self.firstPoint.y, self.lastPoint.x - self.firstPoint.x, self.lastPoint.y - self.firstPoint.y);
    
    CGContextSetFillColorWithColor(context, self.color.CGColor);
    CGContextFillEllipseInRect(UIGraphicsGetCurrentContext(), rectToFill);
}

@end
