import io.reactivex.Observable;
import io.reactivex.Scheduler;

public class ${useCaseName}UseCaseImpl extends BaseUseCase<${useCaseReturnTypeEntityName}, ${useCaseName}UseCase.${useCaseName}Param> {
    private ${repositoryName}Repository repository; 
    
    public ${useCaseName}UseCaseImpl(${repositoryName}Repository repository, Scheduler mWorkScheduler, Scheduler mObserveScheduler) {
        super(mWorkScheduler, mObserveScheduler);
        this.repository = repository;
    }

    @Override
    public Observable<${useCaseReturnTypeEntityName}> buildUseCaseObservable(${useCaseName}Param params) {
        return null;
    }

    class ${useCaseName}Param {

        public ${useCaseName}Param() {
            
        }
    }
}
