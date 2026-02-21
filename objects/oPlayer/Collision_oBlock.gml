var _grab = keyboard_check(ord("E"))

// grab block
if _grab
{ carrying = true; }


if (carrying)
{
	other.x=x + 20;
	other.y=y - 20;
}

if _grab && carrying 
{ carrying = false;}