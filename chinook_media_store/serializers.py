from django.contrib.auth.models import User
from rest_framework import serializers

from chinook_media_store.models import *


class AlbumSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Album
        fields = '__all__'


class ArtistSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Artist
        fields = '__all__'



class CustomerSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Customer
        fields = '__all__'


class EmployeeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Employee
        fields = '__all__'


class GenreSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Genre
        fields = '__all__'


class InvoiceSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Invoice
        fields = '__all__'


class InvoiceLineSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = InvoiceLine
        fields = '__all__'


class MediaTypeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = MediaType
        fields = '__all__'


class PlaylistSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Playlist
        fields = '__all__'


class PlaylistTrackSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = PlaylistTrack
        fields = '__all__'


class TrackSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Track
        fields = '__all__'

