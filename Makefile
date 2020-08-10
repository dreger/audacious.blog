# SRC_DIR := public/
# CF_DIST := ABCDEFG1234567
# BUCKET := my-destination-bucket

# build:
#     @hugo

# upload:
#     @s3deploy -source=$(SRC_DIR) -region=us-east-1 -bucket=$(BUCKET)

# invalidate:
#     @aws cloudfront create-invalidation --distribution $(CF_DIST) \
#     --paths / /archives/ /categories/ /feed.xml

# deploy: build upload invalidate

# server:
#     -@hugo server

# clean:
#     @rm -rf $(SRC_DIR)

# Examples above: 

gen: 
	hugo --cleanDestinationDir && git add . && git commit -a && git push

serve: 
	hugo serve -w --disableFastRender

serve-drafts: 
	hugo serve -w --disableFastRender --buildDrafts