# =============================================================================
# Make variables
# =============================================================================
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=solo
IMAGE_TAG=latest
OUTPUT_DIR=.site-build
SAMPLER_DIR=sampler
SAMPLER_DEMO_REPO=solo-sampler
# -----------------------------------------------------------------------------
# Targets for working with a single site build of Solo.
# -----------------------------------------------------------------------------
clean:
	@rm -rf $(OUTPUT_DIR)/*

site:
	@jekyll build --config _config.yml
# -----------------------------------------------------------------------------
# Initialize sampler .site-build directory to build each theme into.
# -----------------------------------------------------------------------------
sampler-init:
	@mkdir -p $(OUTPUT_DIR)/$(SAMPLER_DIR)
	@echo "sampler: true" > $(OUTPUT_DIR)/_sampler.yml
# -----------------------------------------------------------------------------
# 1. Perform jekyll build of Solo for every style (light, dark...etc).
# 2. Build default site.
# 3. Copy default site into sampler web root.
# -----------------------------------------------------------------------------
sampler-site: sampler-init \
	arcade \
	blue \
	corbs \
	dark \
	dracula \
	eightyfour \
	githubdark \
	green \
	light \
	monokai \
	nightowl \
	purple \
	red \
	soft \
	solarized
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_sampler.yml
	@cp -R _site/ $(OUTPUT_DIR)/$(SAMPLER_DIR)

# -----------------------------------------------------------------------------
# Copy the new sampler in .site-build to the local demo repo and commit.
# -----------------------------------------------------------------------------
update-solo-sampler:
	@cp -R $(OUTPUT_DIR)/$(SAMPLER_DIR)/ ../$(SAMPLER_DEMO_REPO)

# -----------------------------------------------------------------------------
# Targets for running "jekyll build" for every Solo style.
# -----------------------------------------------------------------------------
arcade:
	@echo "style: arcade" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/arcade

blue:
	@echo "style: blue" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/blue

corbs:
	@echo "style: corbs" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/corbs

dark:
	@echo "style: dark" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/dark

dracula:
	@echo "style: dracula" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/dracula

eightyfour:
	@echo "style: eightyfour" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/eightyfour

githubdark:
	@echo "style: githubdark" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/githubdark

green:
	@echo "style: green" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/green

light:
	@echo "style: light" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/light

monokai:
	@echo "style: monokai" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/monokai

nightowl:
	@echo "style: nightowl" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/nightowl

purple:
	@echo "style: purple" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/purple

red:
	@echo "style: red" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/red

soft:
	@echo "style: soft" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/soft

solarized:
	@echo "style: solarized" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_sampler.yml --destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/solarized
