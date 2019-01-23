/* CalcCouponsSolution.ch
    Mikey Henderson
    Returns the tax of a total sum of money using a function
    Uses if - else if statements to manage discount.
*/

/* Viitkar Harles

Your CalcTotals Application has been picked up by a major online shopping 
service - Blamazon!

Blamazon! would like to start offering some coupon codes and have started 
the work necessary, but they need you to add more coupons to their system. 
They also want the ability to print a file if the user requests one. (if 
combined withUse textInOut.ch)
Begin with the code linked below. Load the code, check the comments and 
update the program to produce the appropriate results.

The first coupon code is already done, but needs to be modified to be able 
to recognize different codes: (else-if else)
ONEOFF = 10% Discount on one item (item1)
ALLOFF = 5% Discount on Subtotal
SHIPFREE = Free Shipping

Remember that Code Comments are like "showing your work" and can result in additional points and/or partial credit. 
You can gain additional points on this part by doing any of the following:

* Apply the ONEOFF coupon to the highest price item
* Create output file based on user input 
* Implement a Buy-one/Get-one free coupon
*/

// Declare 3 variables for item prices. item1, item2 and item3

double item1, item2, item3;
//declare variable taxRate for a tax rate of 8.5%
double taxRate = .085;
// vars for total and sub and tax
double subtotal, total, tax;

double shipping = 5;
double discount = 0;
string_t couponCode;
string_t haveCoupon;

//ask user fo input prices, 3 times
printf("What is the price of Item1: \n");
scanf("%lf", &item1);
printf("What is the price of Item2: \n");
scanf("%lf", &item2);
printf("What is the price of Item3: \n");
scanf("%lf", &item3);

printf("The standard shipping cost is $5.00\n");

double calcTotals() {
    tax = subtotal * taxRate;
    total = subtotal + tax + shipping;
    printf("Tax\t\t$%.2lf\n", tax);
    return total;
}

double calcSubtotal() {
    return item1 + item2 + item3;
}


subtotal = calcSubtotal();

/* Here is where we need the coupon codes added.
 The first one is already done, but needs to be modified
 to be able to recognize different codes:
    ONEOFF = 10% Discount on one item (item1)
    ALLOFF = 5% Discount on Subtotal
    SHIPFREE = Free Shipping



*/
void applyCoupon(string_t code) {
    if (code == "SHIPFREE") {
        shipping = 0;
    }
   // else shipping = 5;
    
}

printf("Do you have any coupons to apply? (Y or N)");
scanf("%string_t", &haveCoupon);
if (haveCoupon == "Y" || haveCoupon == "y") {

    printf("Enter your coupon code, or enter NONE:");
    scanf("%string_t", &couponCode);
    applyCoupon(couponCode);
}

// Print the subtotal and total
//shipping = applyShippingCoupon(couponCode);
printf("Item 1:\t\t$%.2lf\n", item1);
printf("Item 2:\t\t$%.2lf\n", item2);
printf("Item 3:\t\t$%.2lf\n", item3);
printf("Subtotal\t$%.2lf\n", calcSubtotal());
printf("Shipping\t$%.2lf\n", shipping);
printf("Total\t\t$%.2lf\n", calcTotals());
