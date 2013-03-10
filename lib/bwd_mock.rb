module Serve
  class Pipeline
    class Context
      def initialize(root_path, request, response)
        @root_path, @request, @response = root_path, request, response
        @custom_design = BwdMock::MockBrownWebsites.new
        @domain = "somedomain.com"
        @user = BwdMock::MockUser.new
        @content = ''
        install_view_helpers
      end
    end
  end
end

module BwdMock
  class MockBrownWebsites
    def image(image)
      "/images/#{image}"
    end

    def stylesheet
      "screen.css"
    end

    def partial(name)
      name
    end
  end

  class MockUser
    def setting
      MockSetting.new
    end
  end

  class MockSetting
    def company
      "Company Name"
    end
  end
end
