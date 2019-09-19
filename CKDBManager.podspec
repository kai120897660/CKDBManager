
Pod::Spec.new do |spec|


  spec.name         = "CKDBManager"
  spec.version      = "1.1.0"
  spec.summary      = "net swift"
  spec.description  = <<-DESC
                      this project is DB manager for FMDB, and auto create table    
                   DESC

  spec.homepage     = "https://github.com/kai120897660/CKDBManager"

  spec.license      = "MIT"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "陈凯文" => "kai120897660@sina.com" }

  spec.swift_version= "5.0"
  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/kai120897660/CKDBManager.git", :tag => "#{spec.version}" }


  spec.subspec "DBManager" do |ss|
    ss.source_files = "BDManager"
    ss.dependency "FMDB",     "~> 2.7.5"
  end
  

  spec.requires_arc = true


end
