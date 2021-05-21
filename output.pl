	
#
p
r
o
b
_
2
.
p
l
:
 
W
r
i
t
e
 
a
 
p
r
o
g
r
a
m
 
t
o
 
d
i
s
p
l
a
y
 
c
o
n
t
e
n
t
 
o
f


	
#
 
a
 
f
i
l
e
 
c
o
l
u
m
n
 
w
i
s
e
.
 
T
r
a
n
s
f
e
r
 
t
h
e
 
c
o
n
t
e
n
t
 
t
o
 


	
#
t
o
 
a
n
o
t
h
e
r
 
o
u
t
p
u
t
 
f
i
l
e
.
 
D
i
s
p
l
a
y
 
h
o
w
 
m
a
n
y
 
b
y
t
e
s


	
#
c
o
p
i
e
d
 
t
o
 
o
u
t
p
u
t
 
f
i
l
e


	
s
y
s
t
e
m
(
"
C
l
e
a
r
"
)
;


	
p
r
i
n
t
f
(
"
\
n
E
n
t
e
r
 
I
n
p
u
t
 
F
i
l
e
 
N
a
m
e
=
"
)
;


	
c
h
o
p
(
$
f
i
l
e
1
=
<
S
T
D
I
N
>
)
;


	
p
r
i
n
t
f
(
"
E
n
t
e
r
 
O
u
t
p
u
t
 
F
i
l
e
 
N
a
m
e
=
"
)
;


	
c
h
o
p
(
$
f
i
l
e
2
=
<
S
T
D
I
N
>
)
;


	
o
p
e
n
(
f
i
n
,
$
f
i
l
e
1
)
;
 
 
 
#
 
t
o
 
o
p
e
n
 
f
i
l
e
 
i
n
 
i
n
p
u
t
 
m
o
d
e


	
o
p
e
n
(
f
o
u
t
,
"
>
$
f
i
l
e
2
"
)
;
#
 
t
o
 
o
p
e
n
 
f
i
l
e
 
i
n
 
o
u
t
p
u
t
 
m
o
d
e


	
$
n
=
0
;
 
#
 
$
n
=
n
u
m
b
e
r
 
o
f
 
b
y
t
e
s
 
c
o
p
i
e
d
 
t
o
 
o
u
t
p
u
t
 
f
i
l
e


	
	
w
h
i
l
e
(
<
f
i
n
>
)
{


	
	
$
s
=
$
_
;


	
	
$
n
=
$
n
+
l
e
n
g
t
h
(
$
s
)
;
 
#
 
t
o
 
a
d
d
 
l
e
n
g
t
h
 
o
f
 
o
n
e
 
l
i
n
e


	
	
	
f
o
r
(
$
i
=
0
;
$
i
<
l
e
n
g
t
h
(
$
s
)
;
$
i
+
+
)
{


	
	
	
$
s
1
=
s
u
b
s
t
r
(
$
s
,
$
i
,
1
)
;


	
	
	
p
r
i
n
t
f
(
"
%
s
\
n
"
,
$
s
1
)
;


	
	
	
p
r
i
n
t
 
f
o
u
t
 
$
s
1
;


	
	
	
p
r
i
n
t
 
f
o
u
t
 
"
\
n
"
;


	
	
	
}


	
	
}


	
p
r
i
n
t
f
(
"
\
n
N
u
m
b
e
r
 
o
f
 
B
y
t
e
s
 
c
o
p
i
e
d
=
%
d
\
n
"
,
$
n
)
;


	
c
l
o
s
e
(
f
i
n
)
;


	
c
l
o
s
e
(
f
o
u
t
)
;


	
#
E
n
d
 
o
f
 
p
r
o
g
r
a
m










	


