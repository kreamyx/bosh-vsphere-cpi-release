module VSphereCloud
  class DiskPool
    attr_reader :datacenter, :type

    def initialize(datacenter, type, datastores)
      @datacenter = datacenter
      @type = type
      @datastores = datastores || []
    end

    def datastore_names
      @datastores.select do |entry|
        entry.is_a?(String)
      end
    end

    def datastore_clusters
      clusters = @datastores.find do |entry|
        hash = Hash.try_convert(entry)
        next if hash.nil?
        hash.key?('clusters')
      end
      return [] if clusters.nil?
      clusters.map do |cluster|
        StoragePod.find_storage_pod(cluster.key, @datacenter)
      end
    end
  end
end