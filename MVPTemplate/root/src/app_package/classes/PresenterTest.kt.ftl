package ${packageName}.${folderName}

import org.junit.Before
import org.junit.Test
import org.mockito.Mock
import org.mockito.Mockito.verify
import org.mockito.MockitoAnnotations

class ${className}PresenterTest {

    private lateinit var presenter: ${className}Presenter

    @Mock
    private lateinit var view: ${className}Contract.View

    @Before
    fun setup() {
        MockitoAnnotations.initMocks(this)
        presenter = ${className}Presenter(view)
    }

    @Test
    fun `created and attached to view`() {
        val presenter = ${className}Presenter.createAndAttach(view)
        verify(view).attachPresenter(presenter)
    }

    @Test
    fun `when presenter has started`() {
        presenter.start()

        //TODO verify behaviour
    }

    @Test
    fun `when presenter is getting cleaned`() {
        presenter.cleanup()

        //TODO verify behaviour
    }

}