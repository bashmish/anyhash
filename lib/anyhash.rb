require 'tempfile'

class Anyhash

  module Algorithms
    GOST = 'gost'
    GOST_CRYPTOPRO = 'gost-cryptopro'
  end

  def initialize(message)
    @message = message
  end

  def hash(type)
    create_tempfile
    write_message_to_tempfile
    hash = calculate_tempfile_hash_for(type)
    delete_tempfile
    hash
  end

  def self.gost(message)
    new(message).hash(Anyhash::Algorithms::GOST)
  end

  def self.gost_cryptopro(message)
    new(message).hash(Anyhash::Algorithms::GOST_CRYPTOPRO)
  end

  private

  def create_tempfile
    @tempfile = Tempfile.new('message_for_rhash')
  end

  def write_message_to_tempfile
    @tempfile.write(@message)
    @tempfile.rewind
  end

  def calculate_tempfile_hash_for(type)
    hash = `rhash --#{type} #{@tempfile.path}`
    hash.gsub(@tempfile.path, '').strip
  end

  def delete_tempfile
    @tempfile.close
    @tempfile.unlink
  end

end
