#
# Autogenerated by Thrift Compiler (0.7.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

module Apache
  module Hadoop
    module Hbase
      module Thrift
                # TCell - Used to transport a cell value (byte[]) and the timestamp it was
                # stored with together as a result for get and getRow methods. This promotes
                # the timestamp of a cell to a first-class value, making it easy to take
                # note of temporal data. Cell is used all the way from HStore up to HTable.
                class TCell
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  VALUE = 1
                  TIMESTAMP = 2

                  FIELDS = {
                    VALUE => {:type => ::Thrift::Types::STRING, :name => 'value', :binary => true},
                    TIMESTAMP => {:type => ::Thrift::Types::I64, :name => 'timestamp'}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # An HColumnDescriptor contains information about a column family
                # such as the number of versions, compression settings, etc. It is
                # used as input when creating a table or adding a column.
                class ColumnDescriptor
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  NAME = 1
                  MAXVERSIONS = 2
                  COMPRESSION = 3
                  INMEMORY = 4
                  BLOOMFILTERTYPE = 5
                  BLOOMFILTERVECTORSIZE = 6
                  BLOOMFILTERNBHASHES = 7
                  BLOCKCACHEENABLED = 8
                  TIMETOLIVE = 9

                  FIELDS = {
                    NAME => {:type => ::Thrift::Types::STRING, :name => 'name', :binary => true},
                    MAXVERSIONS => {:type => ::Thrift::Types::I32, :name => 'maxVersions', :default => 3},
                    COMPRESSION => {:type => ::Thrift::Types::STRING, :name => 'compression', :default => %q"NONE"},
                    INMEMORY => {:type => ::Thrift::Types::BOOL, :name => 'inMemory', :default => false},
                    BLOOMFILTERTYPE => {:type => ::Thrift::Types::STRING, :name => 'bloomFilterType', :default => %q"NONE"},
                    BLOOMFILTERVECTORSIZE => {:type => ::Thrift::Types::I32, :name => 'bloomFilterVectorSize', :default => 0},
                    BLOOMFILTERNBHASHES => {:type => ::Thrift::Types::I32, :name => 'bloomFilterNbHashes', :default => 0},
                    BLOCKCACHEENABLED => {:type => ::Thrift::Types::BOOL, :name => 'blockCacheEnabled', :default => false},
                    TIMETOLIVE => {:type => ::Thrift::Types::I32, :name => 'timeToLive', :default => -1}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # A TRegionInfo contains information about an HTable region.
                class TRegionInfo
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  STARTKEY = 1
                  ENDKEY = 2
                  ID = 3
                  NAME = 4
                  VERSION = 5

                  FIELDS = {
                    STARTKEY => {:type => ::Thrift::Types::STRING, :name => 'startKey', :binary => true},
                    ENDKEY => {:type => ::Thrift::Types::STRING, :name => 'endKey', :binary => true},
                    ID => {:type => ::Thrift::Types::I64, :name => 'id'},
                    NAME => {:type => ::Thrift::Types::STRING, :name => 'name', :binary => true},
                    VERSION => {:type => ::Thrift::Types::BYTE, :name => 'version'}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # A Mutation object is used to either update or delete a column-value.
                class Mutation
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  ISDELETE = 1
                  COLUMN = 2
                  VALUE = 3

                  FIELDS = {
                    ISDELETE => {:type => ::Thrift::Types::BOOL, :name => 'isDelete', :default => false},
                    COLUMN => {:type => ::Thrift::Types::STRING, :name => 'column', :binary => true},
                    VALUE => {:type => ::Thrift::Types::STRING, :name => 'value', :binary => true}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # A BatchMutation object is used to apply a number of Mutations to a single row.
                class BatchMutation
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  ROW = 1
                  MUTATIONS = 2

                  FIELDS = {
                    ROW => {:type => ::Thrift::Types::STRING, :name => 'row', :binary => true},
                    MUTATIONS => {:type => ::Thrift::Types::LIST, :name => 'mutations', :element => {:type => ::Thrift::Types::STRUCT, :class => Apache::Hadoop::Hbase::Thrift::Mutation}}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # Holds row name and then a map of columns to cells.
                class TRowResult
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  ROW = 1
                  COLUMNS = 2

                  FIELDS = {
                    ROW => {:type => ::Thrift::Types::STRING, :name => 'row', :binary => true},
                    COLUMNS => {:type => ::Thrift::Types::MAP, :name => 'columns', :key => {:type => ::Thrift::Types::STRING, :binary => true}, :value => {:type => ::Thrift::Types::STRUCT, :class => Apache::Hadoop::Hbase::Thrift::TCell}}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # An IOError exception signals that an error occurred communicating
                # to the Hbase master or an Hbase region server.  Also used to return
                # more general Hbase error conditions.
                class IOError < ::Thrift::Exception
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  def initialize(message=nil)
                    super()
                    self.message = message
                  end

                  MESSAGE = 1

                  FIELDS = {
                    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # An IllegalArgument exception indicates an illegal or invalid
                # argument was passed into a procedure.
                class IllegalArgument < ::Thrift::Exception
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  def initialize(message=nil)
                    super()
                    self.message = message
                  end

                  MESSAGE = 1

                  FIELDS = {
                    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

                # An AlreadyExists exceptions signals that a table with the specified
                # name already exists
                class AlreadyExists < ::Thrift::Exception
                  include ::Thrift::Struct, ::Thrift::Struct_Union
                  def initialize(message=nil)
                    super()
                    self.message = message
                  end

                  MESSAGE = 1

                  FIELDS = {
                    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
                  }

                  def struct_fields; FIELDS; end

                  def validate
                  end

                  ::Thrift::Struct.generate_accessors self
                end

              end
            end
          end
        end
