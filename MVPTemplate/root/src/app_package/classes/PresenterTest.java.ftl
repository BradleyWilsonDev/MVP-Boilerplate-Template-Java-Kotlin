package ${packageName}.${folderName};

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.Mockito.verify;
import org.mockito.MockitoAnnotations;

import static org.mockito.Mockito.verify;

public class ${className}PresenterTest {

    private ${className}Presenter presenter; 

    @Mock
    private ${className}Contract.View view; 

    @Before
    fun setup() {
        MockitoAnnotations.initMocks(this);
        presenter = new ${className}Presenter(view);
    }

    @Test
    fun createdAndAttachedToView() {
        presenter = ${className}Presenter.createAndAttach(view);
        verify(view).attachPresenter(presenter);
    }

    @Test
    fun presenterNowStarted() {
        presenter.start();

        //TODO verify behaviour
    }

    @Test
    fun presenterGettingCleaned() {
        presenter.cleanup();

        //TODO verify behaviour
    }

}