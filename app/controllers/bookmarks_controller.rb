class BookmarksController < ApplicationController
  belongs_to :list
  belongs_to :movie
end
