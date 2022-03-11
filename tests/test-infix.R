library(ymq)

ym <- as.integer(sprintf("%04d%02d", rep(c(2010, 2011), each = 12), 1:12))
yq <- as.integer(sprintf("%04d%02d", rep(c(2010, 2011), each = 4), 1:4))

ym %+m% 1
ym %-m% "1"
all.equal((ym %+m% 1:12) %-m% 1:12, ym)
all.equal(ym %+m% "-1", ym %-m% 1)
all.equal(ym %+m% 0.9, ym)
all.equal(201213 %+m% 0, 201301)

yq %+q% 1
yq %-q% "1"
all.equal((yq %+m% 1:4) %-m% 1:4, yq)
all.equal(yq %+m% "-1", yq %-m% 1)
all.equal(yq %+m% 0.9, yq)
all.equal(201205 %+q% 0, 201301)

ym %m-m% 201101
all.equal(201101 %+m% (ym %m-m% 201101), ym)
all.equal(ym %m-m% 201101, -(201101 %m-m% ym))
201315 %m-m% 201403

yq %q-q% 201101
all.equal(201101 %+q% (yq %q-q% 201101), yq)
all.equal(yq %q-q% 201101, -(201101 %q-q% yq))
201306 %q-q% 201402

all.equal(201007 %m:m% 201206, ym %+m% 6)
all.equal(201206 %m:m% 201007, rev(ym %+m% 6))

all.equal(201002 %q:q% 201201, yq %+q% 1)
all.equal(201201 %q:q% 201002, rev(yq %+q% 1))

m2q(202003)
q2m(202002)
all.equal(q2m(m2q(c(202001, 202004, 202007, 202010))), c(202001, 202004, 202007, 202010))
all.equal(q2m(m2q(c(202001, 202004, 202007, 202010) + 12)), c(202101, 202104, 202107, 202110))
