from django.contrib.auth.models import User
from rest_framework import permissions, renderers, viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.request import Request

from chinook_media_store.models import *
from chinook_media_store.serializers import *


class AlbumViewSet(viewsets.ModelViewSet):

    queryset = Album.objects.all()
    serializer_class = AlbumSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class ArtistViewSet(viewsets.ModelViewSet):

    queryset = Artist.objects.all()
    serializer_class = ArtistSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class CustomerViewSet(viewsets.ModelViewSet):

    queryset = Customer.objects.all()
    serializer_class = CustomerSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class EmployeeViewSet(viewsets.ModelViewSet):

    queryset = Employee.objects.all()
    serializer_class = EmployeeSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class GenreViewSet(viewsets.ModelViewSet):

    queryset = Genre.objects.all()
    serializer_class = GenreSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class InvoiceViewSet(viewsets.ModelViewSet):

    queryset = Invoice.objects.all()
    serializer_class = InvoiceSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class InvoiceLineViewSet(viewsets.ModelViewSet):

    queryset = InvoiceLine.objects.all()
    serializer_class = InvoiceLineSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class MediaTypeViewSet(viewsets.ModelViewSet):

    queryset = MediaType.objects.all()
    serializer_class = MediaTypeSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class PlaylistViewSet(viewsets.ModelViewSet):

    queryset = Playlist.objects.all()
    serializer_class = PlaylistSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class PlaylistTrackViewSet(viewsets.ModelViewSet):

    queryset = PlaylistTrack.objects.all()
    serializer_class = PlaylistTrackSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]


class TrackViewSet(viewsets.ModelViewSet):

    queryset = Track.objects.all()
    serializer_class = TrackSerializer

    permission_classes = [permissions.IsAuthenticatedOrReadOnly]

