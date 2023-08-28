# to-swing-3-0-or-not-to-swing-3-0
wOBA, wRAA, and ops of swinging or taking on 3-0

I've long had a discussion with various people about whether the general don't swing on 3-0 has any analytic validity. It's something I've been taught since Little League but I've never seen anyone test it out. 
So I decided to take a look using wOBA, wRAA, and just for fun OPS. Since wOBA tries to capture the same thing as OPS I thought it would be interesting to compare them. I used Fangraphs data for the value of a single, double, etc. I took my data from the last three full seasons (2019, 2021, 2022). 

I mainly calculated wRAA so that I could make a grid of every possible count and get the run value of a strike or ball over the last three full seasons. This was separate from my main goal as it was more for my own curiosity and potential analysis for other projects down the road. Since wRAA will follow directly from wOBA it doesn't give any extra insight other than a generic comparison in this 3-0 scenario. 

At the very bottom, I try to break up the data into 6 sinker ballers and 6 4-seam fastball guys. This doesn't carry the same statistical meaning as my general results since it doesn't have as much data and the results will be highly variable based on the people I picked. Also, certain pitchers didn't pitch all three years. Again this was mostly for my own curiosity with an eye towards a more in-depth project on how different kinds of pitchers could affect this data. For completeness, the 6 sinker ballers were: Logan Webb, Sandy Alcantra, Marcus Stroman, Ranger Suarez, Adrian Houser, and Zach Efflin. The 6 4-seam guys: Justin Verlander, Dylan Cease, Gerrit Cole, Hunter Brown, Tyler Glasnow, Logan Gilbet. For the sinker ballers taking wOBA was 0.532 and swinging wOBA was 0.392. For the 4-seam guys taking wOBA was 0.471 and swinging wOBA was 0.453.


RESULTS:

Swinging on 3-0:
wOBA - 0.478,
wRAA - 0.141,
OPS - 1.219

Taking on 3-0:
wOBA - 0.547, 
wRAA - 0.197,
OPS - 1.186,

Extra Results:
The percentage of fastballs in 3-0 count was 66.7%
The percentage of non-fastball in 3-0 was 33.3%
The percentage of walks on 3-0 33.1%
The percentage of times when 3-0 count becomes 3-1 when not swinging was 62.6% (Same as the percentage above but only taking non-swings into account)

X count start strike  ball wRAA.PA Run.Value.of.Strike Run.Value.of.Ball
1   0-0 0.309  0.261 0.351   0.000              -0.040             0.035
2   0-1 0.261  0.194 0.293  -0.040              -0.055             0.027
3   0-2 0.194  0.000 0.219  -0.095              -0.161             0.020
4   1-0 0.351  0.293 0.421   0.035              -0.048             0.058
5   1-1 0.293  0.219 0.351  -0.013              -0.062             0.048
6   1-2 0.219  0.000 0.264  -0.075              -0.181             0.038
7   2-0 0.421  0.351 0.540   0.093              -0.058             0.098
8   2-1 0.351  0.264 0.470   0.035              -0.072             0.099
9   2-2 0.264  0.000 0.373  -0.037              -0.219             0.090
10  3-0 0.540  0.470 0.689   0.191              -0.057             0.124
11  3-1 0.470  0.373 0.689   0.134              -0.081             0.181
12  3-2 0.373  0.000 0.689   0.053              -0.309             0.262

So interestingly enough in wOBA there is a pretty significant difference between taking on 3-0 vs. not taking. In this case, wOBA supports taking. However, OPS actually favors swinging on 3-0 albeit by a small amount. The reason for this comes from why wOBA was created in the first place. OPS undervalues OBP and therefore undervalues walks. wOBA by contrast attempts to treat every hit and walk by its actual worth and therefore more accurately evaluates walks compared to OPS. Since the main result of a 3-0 count is going to be a walk I believe that wOBA is a more accurate evaluation of whether you should swing or not. Also if you look at the run-value grid the wOBA of swinging in a 3-0 count is about the same as the start wOBA for a 3-1 count. This means you're basically giving yourself the same amount of success as an extra strike if you swing. 

