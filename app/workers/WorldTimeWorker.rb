class WorldTimeWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  WorldTimeWorker::RefreshRate = 30.seconds

  recurrence { secondly(5) }

  def perform
    World.all.each do |world|
      world.time = world.time + WorldTimeWorker::RefreshRate*world.tick_rate
      world.save
    end
  end
end