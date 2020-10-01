class PagesController < ApplicationController
  def index
    response.headers['X-FRAME-OPTIONS'] = 'ALLOWALL'

    client = Storyblok::Client.new(
      logger: logger,
      cache_version: Time.now.to_i,
      token: 'f8i6QCQTe6rgEYL8iRhVmwtt',
      version: 'draft'
    )

    assigns = {
      story: client.story(params[:path])['data']['story'],
      global: client.story('global')['data']['story']
    }

    Liquid::Template.file_system = Liquid::LocalFileSystem.new('app/views/components')

    template = Liquid::Template.parse(File.read('app/views/layouts/page.liquid'))
    render text: template.render!(assigns.stringify_keys, {})
  end
end
