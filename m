Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EF84AA75F
	for <lists+blinux-list@lfdr.de>; Sat,  5 Feb 2022 08:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644047264;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8c0ywbizkqoIKrYDFdxicFUyS6AE5inVHRzCQCwaUdg=;
	b=ajIdvgyTCtiXpoJhtZu6FNrtCr8J4kjGRsqCPeMZxT4JISPzkqx94zSE5WWpqTVJwD5Pdo
	or6hziRdH4ttM/9VaQcquoDTOw9+HYgOEcP6gGDc6/4pNQRQHYxSlOgVAQGMQCg7AZI7uS
	olwU+mzniJIb+F4ciUJGT/CA0jZw12c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-cJC8N7OkOKuGZMWtz7dxSg-1; Sat, 05 Feb 2022 02:47:40 -0500
X-MC-Unique: cJC8N7OkOKuGZMWtz7dxSg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7FB21853022;
	Sat,  5 Feb 2022 07:47:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29A28104A9EF;
	Sat,  5 Feb 2022 07:47:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6FC0E1809CB9;
	Sat,  5 Feb 2022 07:47:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2157lDip022921 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Feb 2022 02:47:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2B76DC017DB; Sat,  5 Feb 2022 07:47:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 273F6C15E71
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 07:47:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0AEBF802E5E
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 07:47:13 +0000 (UTC)
Received: from leibniz.telenet-ops.be (leibniz.telenet-ops.be
	[195.130.137.77]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-217-3RwKcHxcOCyMPc95Zt17PQ-1; Sat, 05 Feb 2022 02:47:10 -0500
X-MC-Unique: 3RwKcHxcOCyMPc95Zt17PQ-1
Received: from albert.telenet-ops.be (albert.telenet-ops.be
	[IPv6:2a02:1800:110:4::f00:1a])
	by leibniz.telenet-ops.be (Postfix) with ESMTPS id 4JrPSG4YnfzMqq94
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 08:39:42 +0100 (CET)
Received: from linuxcomputers ([IPv6:2a02:1811:b61c:2900:2dc3:8ccc:38e3:3567])
	by albert.telenet-ops.be with bizsmtp
	id rKfh260064AR51Y06Kfhbi; Sat, 05 Feb 2022 08:39:41 +0100
Received: from aldo by linuxcomputers with local (Exim 4.93)
	(envelope-from <yellowpenguin@telenet.be>) id 1nGFfY-0006I7-UT
	for blinux-list@redhat.com; Sat, 05 Feb 2022 08:39:40 +0100
Date: Sat, 5 Feb 2022 08:39:40 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help with YT-DLP
Message-ID: <20220205073940.GA23341@linuxcomputers>
References: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
	<87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
	<b6b3ae87-95f6-9e92-0d91-51da13c97572@icloud.com>
	<20220204.224600.337.7@[192.168.1.100]>
	<cb0030ca-3242-f314-2ded-fb385c9fb5d5@icloud.com>
MIME-Version: 1.0
In-Reply-To: <cb0030ca-3242-f314-2ded-fb385c9fb5d5@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 2157lDip022921
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Rob,=20

another solution could be this youtube_to_mp3 script.=20
It uses the latest ytdl bin from yt-dl.org :=20
- just have to put it in /usr/local/bin or in ~/bin and make it executable=
=20
- then enter the 11 chars part of a YT url like this:=20
  youtube_to_mp3 ANd_yT-C0de  ENTER=20
- the clip is downloaded and converted to mp3 (you can choose to keep or no=
t
  the mp4 file)=20
- the name is automatically something like=20
  Artist_or_File - Name - ANd_yT-C0de.mp3
- files are saved in ~/yt-dl/20220205/ (today)=20
- and you can uncomment lines in the script to check and get the latest ytd=
l
  bin automatically (if available)=20

Feel free to personalize it. HEre it is:

### <script> ###=20

#!/bin/bash=20
#=20
# YouTube_to_MP3-script  -  orig. by L. Berger  -  modified ver. by O. La R=
osa =20
# 2020.04.17=20

clear

## Inst. dir + YT base-URL + YT-DL binary name var=20
#InstRepo=3D"/usr/local/bin/"
InstRepo=3D"$HOME/bin/"
#YTDLName=3D"youtube-dl"
YTDLName=3D"yt-dl"
#YTBURL=3D"http://youtu.be/"
YTBURL=3D"http://www.youtube.com/watch?v=3D"
#YTBURL=3D"https://www.youtube.com/watch?v=3D"
=20
## Go !=20
echo "YouTube_to_MP3-script ! "

#echo "Positional parameters"
#echo '$0 =3D ' $0
#echo '$1 =3D ' $1

## Output=20
#OUTPUT=3D"/home/${USER}/Music"
#OUTPUT=3D"/home/${USER}/Musique"
#OUTPUT=3D"/home/${USER}/Muziek"
#OUTPUT=3D"/home/${USER}/Downloads"
OUTPUT=3D"/home/${USER}/yt-dl"
mkdir -p $OUTPUT
echo "  =20
   Binary name  &  destination is :    $InstRepo$YTDLName=20
   YouTube download repository is :    $OUTPUT "=20
echo "   YT base URL (to download from) is : $YTBURL"=20

## Date =20
NOWSHORT=3D`date +%Y%m%d`
#http://man7.org/linux/man-pages/man1/date.1.html
#NOWSHORT=3D`date '+%Y%m%d%H%M%S'`
#NOWSHORT=3D`date '+%Y%m%d-%H%M%S'`
#NOWSHORT=3D`date '+%Y%m%d.%H%M%S'`
echo "   Today : $NOWSHORT "=20
echo " "=20

## Download a full mix play list =20
## How to download YouTube playlist in Linux  =20
## http://xmodulo.com/how-to-download-youtube-playlist-in-linux.html

## YT-DL(.org) bin installation=20
#sudo curl -L https://yt-dl.org/latest/youtube-dl -o $InstRepo$YTDLName
#curl -L https://yt-dl.org/latest/youtube-dl -o $InstRepo$YTDLName
#sudo chmod a+rx $InstRepo$YTDLName=20
#chmod a+rx $InstRepo$YTDLName=20
ls -l $InstRepo$YTDLName

echo " "=20
#read -p "Press a key to continue  ... "=20
#clear=20

## Updating ...=20
#$InstRepo$YTDLName -U=20

echo " "=20
#read -p "Press a key to continue  ... "=20
#clear=20

## Added --exec touch in place !!
## https://superuser.com/questions/731227/how-to-extract-the-filename-witho=
ut-the-extension-from-a-full-path
#FILENAME=3D${1%.*}

# help =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
if [ -z $1 ]; then
   echo "Version `$YTDLName --version`"
#=09echo "Usage : $(basename $0) youtube_full_address (keep)"
=09echo "Usage : $(basename $0) youtube ID (11 chars) (keep)"
=09echo "   If 'keep' is specified, it will keep a copy of the orig. files"
#=09echo "Example:  youtube_to_mp3  https://www.youtube.com/watch?v=3DcFMnG=
4cSVJM"
#=09echo "Example:  youtube_to_mp3  https://www.youtube.com/watch?v=3DcFMnG=
4cSVJM  keep"
=09echo "Example:  youtube_to_mp3  cFMnG4cSVJM"
=09echo "Example:  youtube_to_mp3  cFMnG4cSVJM  keep"
   echo " "=20
=09exit 1
fi
# help =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

echo "
---------------------------------------------------------------------------=
"
echo "Date is : $NOWSHORT"=20
echo "Making dir $NOWSHORT (if not exist) to store new files ..."=20
mkdir -p $OUTPUT/$NOWSHORT
#echo "--- $OUTPUT/$NOWSHORT ---"
echo "--- URL $YTBURL$1 @ $OUTPUT/$NOWSHORT ---"

echo " "=20
#read -p "Press a key to continue  ... "=20
clear=20

echo "YouTube_to_MP3-script !
 "

echo Downloading
echo and converting to=20
echo "   $OUTPUT/$NOWSHORT"
echo "(Please note, file's date is NOT today : Search by file name.) "
echo ....... Busy .......=20
echo    $FILENAME
cd $OUTPUT/$NOWSHORT

echo " "
#read -p "Press a key to continue  ... "=20
#clear=20

## --audio-quality QUALITY          Specify ffmpeg/avconv audio quality,=20
## Insert a value between 0 (better) and 9

if [ "$2" =3D=3D "keep" ]; then
=09echo "Will keep source video =B4$1=B4"
#    =09$InstRepo$YTDLName --exec touch {} -i -x -k --audio-quality 0 --aud=
io-format mp3 $1
#    =09$InstRepo$YTDLName --exec touch {} -i -x -k --audio-quality 0 --aud=
io-format mp3 $YTBURL$1
    =09$InstRepo$YTDLName --exec touch {} -i -x -k --no-check-certificate -=
-audio-quality 0 --audio-format mp3 $YTBURL$1
else
#=09$YTDLName --exec touch {} -i -x --audio-quality 0 --audio-format mp3 $1
#=09$YTDLName --exec touch {} -i -x --audio-quality 0 --audio-format mp3 $Y=
TBURL$1
=09$YTDLName --exec touch {} -i -x --no-check-certificate --audio-quality 0=
 --audio-format mp3 $YTBURL$1
fi

echo "
---------------------------------------------------------------------------=
"
#touch $FILENAME".mp3"
cd $OUTPUT/$NOWSHORT
ls -lrt

echo " "=20
read -p "Press a key to continue / CTRL+C to quit now without reupdating yo=
utube-dl ... "=20
#clear=20

echo "--- Updating youtube-dl (yt-dl) : Please type root / sudo pwd (if req=
uired) ---"
#sudo YTDLName --update
$InstRepo$YTDLName --update
echo "--- End updating youtube-dl ($InstRepo$YTDLName) ---"

echo "------  Done youtube_to_mp3  ----------------------------------------=
-"
echo " "

## End of script ! =20
exit

### </script> ###=20

Osvaldo La Rosa  aka  Aldo.=20


--- Your session ---=20
On Fri, Feb 04, 2022 at 07:02:58PM -0500, Linux for blind general discussio=
n wrote:
> OK thanks,
>=20
> I like this, having the link at the end is easier.
>=20
> Thanks,
>=20
> Rob
>=20
>=20
> On 2/4/22 17:46, Linux for blind general discussion wrote:
> > My usual youtube-dl line is as follows
> > yt-dlp -ciw -x --audio-format mp3 -o "%(title)s.%(ext)s" <video-link>
> > This names the file as title.mp3
> > ----- Original Message -----
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Date: Fri, 4 Feb 2022 17:19:23 -0500
> > Subject: Re: Help with YT-DLP
> >=20
> > > Thank you Chrys,
> > That fixed it.
> >=20
> > Now I need to find out how to have the video named, instead of just
> > letters and numbers.
> >=20
> > Thanks,
> >=20
> > Rob
> >=20
> >=20
> > On 2/4/22 16:57, Linux for blind general discussion wrote:
> > > Howdy Rob,
> > >=20
> > > Well there is an open single tick but missing the closing one in -o p=
arameter. So the string is not terminated.
> > >=20
> > > Cheers chrys
> > >=20
> > > > Am 04.02.2022 um 22:40 schrieb Linux for blind general discussion <=
blinux-list@redhat.com>:
> > > >=20
> > > > ?Hi,
> > > >=20
> > > > I am trying to use yt-dlp to convert YouTube video to mp3.
> > > >=20
> > > > I installed the latest version of yt-dlp using the info below.
> > > >=20
> > > > sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download=
/yt-dlp -O /usr/local/bin/yt-dlp
> > > >=20
> > > > sudo chmod a+rx /usr/local/bin/yt-dlp
> > > >=20
> > > > update command
> > > > yt-dlp -U
> > > >=20
> > > > When I use the below command, I get nothing but a greater than sign=
.
> > > >=20
> > > > yt-dlp -f 'ba' -x --audio-format mp3 https://www.youtube.com/watch?=
v=3DdQw4w9WgXcQ -o '%(id)s.mp3
> > > >=20
> > > >=20
> > > > Thanks,
> > > >=20
> > > > Rob
> > > >=20
> > > >=20
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >=20
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> >=20
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >=20
> >=20
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>=20

--=20
  |  Verstuurd vanaf mijn GNU/Linux  |  Envoy=E9 de mon GNU/Linux  |=20
  |  -----------------  Sent from GNU/Linux  ------------------  |=20


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

