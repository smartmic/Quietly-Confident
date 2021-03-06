require 5.004;
use ExtUtils::MakeMaker;

WriteMakefile(
              'NAME'         => 'Quietly-Confident',
              'VERSION_FROM' => 'qc',
              'PREREQ_PM'    => {
                                 'Moo' => 0,
                                 'URI::Encode' => 0,
                                 'Sub::Quote' => 0,
                                 'Text::Markdown' => 0,
                                 'Git::Repository' => 0,
                                 'Config::General' => 0,
                                 'Template' => 0,
                                 'HTTP::Server::Brick' => 0,
                                 'IO::All' => 0,
                                 'Git::Repository::Plugin::Log' => 0,
                                },
	      'EXE_FILES'    => [ 'qc' ],
	      ($ExtUtils::MakeMaker::VERSION ge '6.31'? ('LICENSE'              => 'perl', ) : ()),
              'AUTHOR'       => 'TLINDEN',
              'clean'        => {
                                 FILES => 't/*.out *~ */*~ */*/*~ */*/*/*~'
                                },

);
