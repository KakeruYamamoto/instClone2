# frozen_string_literal: true

json.array! @feeds, partial: 'feeds/feed', as: :feed
