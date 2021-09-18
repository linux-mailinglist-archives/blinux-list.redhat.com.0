Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8870C410891
	for <lists+blinux-list@lfdr.de>; Sat, 18 Sep 2021 22:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631996955;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KGaXNhxYEHyY6+U5rxQ+yWS5EUL9WTn770TLFNM4Ht0=;
	b=OyVoL0gWyXE0Ekc56762FnWIST3RZLamPxZ5PGV5kb122Gx5GPpEg0WGvls7AlmN4hJR6t
	ear1F3eByUysFBuAQ1vwoHIzWqab1Cc6foyWl5DGi9wq8sQETtwzme0wuHvl9V1iIUElZ9
	8Sqy+DHTsoBhv4kjqCg9ZU1FEwJ+hI0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-550-rTGVU-VGNxe6aEEqiLURaQ-1; Sat, 18 Sep 2021 16:29:13 -0400
X-MC-Unique: rTGVU-VGNxe6aEEqiLURaQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18798362F8;
	Sat, 18 Sep 2021 20:29:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1F425D9C6;
	Sat, 18 Sep 2021 20:29:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3F3301803B30;
	Sat, 18 Sep 2021 20:28:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18IKRwRF020715 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 16:27:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 57BEF63F2C; Sat, 18 Sep 2021 20:27:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51E0B63F29
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 20:27:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE8CD811E76
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 20:27:55 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-487-HgWKsQ8lOnC2qMbO8UjFjQ-1; Sat, 18 Sep 2021 16:27:53 -0400
X-MC-Unique: HgWKsQ8lOnC2qMbO8UjFjQ-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id C83D1FA657
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 16:27:51 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net C83D1FA657
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IKRpoR035806
	for blinux-list@redhat.com; Sat, 18 Sep 2021 16:27:51 -0400
Date: Sat, 18 Sep 2021 16:27:51 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: rhvoice broken on Arch
Message-ID: <YUZLxwecoZ479b/5@rednote.net>
References: <YUXl/70G69mzJqvV@rednote.net> <YUYJPmtUN850ISXK@rednote.net>
	<b723b98a-aec9-938f-fae3-53e2259ac145@slint.fr>
MIME-Version: 1.0
In-Reply-To: <b723b98a-aec9-938f-fae3-53e2259ac145@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18IKRwRF020715
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Again, Didier:

Hmmm, I'm always nervous to use the Orca Preferences to pick TTS,
because it switches immediately, and if there's a problem you have to
remember exactly what you did and undo it.

Instead, I set via AddModule and then DefaultModule in
/etc/speech-dispatcher/speechd.conf.

Best,

Janina

Linux for blind general discussion writes:
> Hi Janina,
>=20
> I am but puzzled as RHVoice 1.4.2 works here (Slint).
>=20
> AFAIK the only thing that changed since I have built it is the packaging.
>=20
> Is rhvoice listed among the available synthesizers in the Orca preference=
s
> GUI?
>=20
> Cheers,
> Didier
>=20
> Le 18/09/2021 =E0 17:43, Linux for blind general discussion a =E9crit=A0:
> > Dear All:
> >=20
> > As is my usual practice, I did a full -Syu upgrade of my two Arch Linux
> > systems this morning.
> >=20
> > rhvoice is one package that was new this week. It's not working with
> > Speech-Dispatcher. When I do a Alt+F2 and type 'orca -r' I hear the
> > dummy driver audio message.
> >=20
> > I've reset for espeak-ng in my /etc/Speech-Dispatcher/speechd.conf, and
> > Orca is happy. Yes, I was previously not loading that model (nor Voxin)=
.
> >=20
> > Sorry, Alexander!
> >=20
> > Best,
> >=20
> > Janina
> >=20
> > Linux for blind general discussion writes:
> > > Hi, All:
> > >=20
> > > I thought I should forward my response to Kirk Reiser below to the
> > > blinux list, as we've discussed this here previously.
> > >=20
> > > I've no idea whether or not Kirk's problem with Debian is the same. I
> > > can only confirm that Espeakup-0.90 and alsa-lib-1.2.5 are still
> > > nonfunctional for me with Arch.
> > >=20
> > > Here's my email to Kirk on the Speakup list ...
> > >=20
> > >=20
> > > Hi, Kirk:
> > >=20
> > > I'm on Arch, not Debian, but I've had broken Espeakup ever since
> > > alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
> > > 0.90, but this has not fixed things for me, though apparently it has =
for
> > > Alexander now maintaning Espeakup.
> > >=20
> > > I currently have two functional Linux machines, both fully upgraded a=
s
> > > of just about half an hour ago except as described below.
> > >=20
> > > The newer hardware will run by hand with the command: 'espeakup -d', =
but
> > > it's highly brittle and prone to crash the system so that a three fin=
ger
> > > salute is needed.
> > >=20
> > > If I want console access on this 2020 era box, I have to turn to fenr=
ir,
> > > which I'm just not as comfortable with--but that's another story.
> > >=20
> > > My older machine is prevented by my /etc/pacman.conf from updating
> > > alsa-lib and espeakup, and it runs just fine.
> > >=20
> > > So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
> > > latest espeakup-0.8 you have, and you should be fine until someone
> > > figures out what's really going on.
> > >=20
> > > For anyone running Arch you want the following in your /etc/pacman.co=
nf:
> > >=20
> > > IgnorePkg   =3Despeakup
> > > IgnorePkg   =3Dalsa-lib
> > >=20
> > > If you've already updated your Arch beyond these versions, you can
> > > downgrade. You'll find a cache of previous versions in:
> > >=20
> > > /var/cache/pacman/pkg/
> > > Just cd on over there as root and check what you have with a command
> > > like:
> > >=20
> > > ls -1 alsa-lib* espeakup*
> > >=20
> > > You can then downversion with pacman like this:
> > >=20
> > > pacman -U ./[filename]
> > >=20
> > > where [filename] is the full name you got from ls. I recommend using =
the
> > > Speakup clipboard to get the command right.
> > >=20
> > > Best,
> > >=20
> > > Janina
> > >=20
> > >=20
> > > Kirk Reiser writes:
> > > > Hi folks: Does anyone have espeakup running on debian sid with
> > > > libasound2 1.2.5? After I upgraded a few days ago I lost my speech
> > > > output. I have built espeakup and espeak-ng from the current repo o=
n
> > > > them with no joy either.
> > > >=20
> > > > Curious minds and all that type thing.
> > > >=20
> > > >    Kirk
> > > >=20
> > >=20
> > > --=20
> > >=20
> > > Janina Sajka
> > > https://linkedin.com/in/jsajka
> > >=20
> > > Linux Foundation Fellow
> > > Executive Chair, Accessibility Workgroup:=09http://a11y.org
> > >=20
> > > The World Wide Web Consortium (W3C), Web Accessibility Initiative (WA=
I)
> > > Co-Chair, Accessible Platform Architectures=09http://www.w3.org/wai/a=
pa
> > >=20
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> >=20
>=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

--=20

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:=09http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures=09http://www.w3.org/wai/apa


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

