Pod::Spec.new do |s|
    
    # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  These will help people to find your library, and whilst it
    #  can feel like a chore to fill in it's definitely to your advantage. The
    #  summary should be tweet-length, and the description more in depth.
    
    s.name             = 'GoogleDirections-iOS'
    s.version          = '1.0'
    s.summary          = 'Google directions client written in swift'
    s.description      = 'Google directions client written in swift in order to make a easier way to consume the directions API.'
    s.homepage         = 'https://github.com/JDandini/GoogleDirections-iOS'
    
    # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Licensing your code is important. See http://choosealicense.com for more info.
    #  CocoaPods will detect a license file if there is a named LICENSE*
    #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
    #
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    
    # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Specify the authors of the library, with email addresses. Email addresses
    #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
    #  accepts just a name if you'd rather not provide an email address.
    #
    #  Specify a social_media_url where others can refer to, for example a twitter
    #  profile URL.
    #
    s.author           = { 'JDandini' => 'jdandini.jc@gmail.com' }
    s.social_media_url = 'https://twitter.com/JDandini'
    
    # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  If this Pod runs only on iOS or OS X, then specify the platform and
    #  the deployment target. You can optionally include the target after the platform.
    #
    s.ios.deployment_target = '9.0'
    s.swift_version = '4.0'
    
    # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  CocoaPods is smart about how it includes source code. For source files
    #  giving a folder will include any h, m, mm, c & cpp files. For header
    #  files it will include any header in the folder.
    #  Not including the public_header_files will make all headers public.
    #
    s.source_files = 'Classes/*.swift'
    
    # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Specify the location from where the source should be retrieved.
    #  Supports git, hg, bzr, svn and HTTP.
    #
    s.source           = { :git => 'https://github.com/JDandini/GoogleDirections-iOS.git', :tag => s.version.to_s }
    
    # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  Link your library with frameworks, or libraries. Libraries do not include
    #  the lib prefix of their name.
    #
    s.ios.frameworks = 'Foundation', 'CoreLocation'
    
    # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    #
    #  If your library depends on compiler flags you can set them in the xcconfig hash
    #  where they will only apply to your library. If you depend on other Podspecs
    #  you can include multiple dependencies to ensure it works.
    
    s.requires_arc = true
    
    # ――― Dependencies ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
    s.dependency 'Alamofire'
    s.dependency 'Unbox'
end
