package ${packageName};

import io.reactivex.Observable;
import io.reactivex.Scheduler;

public abstract class BaseUseCase<R, T> {
    private Scheduler mWorkScheduler;
    private Scheduler mObserveScheduler;

    public BaseUseCase(Scheduler mWorkScheduler, Scheduler mObserveScheduler) {
        this.mWorkScheduler = mWorkScheduler;
        this.mObserveScheduler = mObserveScheduler;
    }

    Observable<R> run(T params) {
        return buildUseCaseObservable(params)
                .subscribeOn(mWorkScheduler)
                .observeOn(mObserveScheduler);
    }

    abstract Observable<R> buildUseCaseObservable(T params);
}
