from django.conf.urls import include, url
from rest_framework.routers import DefaultRouter

from chinook_media_store import views

# Create a router and register our viewsets with it.
router = DefaultRouter()
router.register(r'albums', views.AlbumViewSet)
router.register(r'artists', views.ArtistViewSet)
router.register(r'customers', views.CustomerViewSet)
router.register(r'employees', views.EmployeeViewSet)
router.register(r'genres', views.GenreViewSet)
router.register(r'invoices', views.InvoiceViewSet)
# router.register(r'users', views.Artist)
# router.register(r'users', views.Artist)
# router.register(r'users', views.Artist)
# router.register(r'users', views.Artist)
# router.register(r'users', views.Artist)


urlpatterns = [
    url(r'^', include(router.urls))
]
