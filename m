Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A946D28243D
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 15:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601730806;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G/dKKtwn/BE6hHHi+EzG6Zunf1Ivgb2PSevMZOXvVFM=;
	b=PAo+xBPF5Z8JUBX6VljM7ZXxuDLdHOLXxXCblrPQ9SLEQBujW+0iXZHX4zyGMK6BOfEAjg
	U/ra0JJNaP4yJL28tz4RRWdFEjQUyhGQQhUBjCiRpsNDykfmgLZOteWtW4hJGITDRM1vaz
	7dHdByK3IeZ3qc6okWkMM5gIRh/Dx7M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-114-WgCTPjLkMdC91py-SnildQ-1; Sat, 03 Oct 2020 09:13:23 -0400
X-MC-Unique: WgCTPjLkMdC91py-SnildQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44A29807322;
	Sat,  3 Oct 2020 13:13:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C3C560C05;
	Sat,  3 Oct 2020 13:13:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC9FE1864DA1;
	Sat,  3 Oct 2020 13:13:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093DBm2N019039 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 09:11:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C7B1C215670A; Sat,  3 Oct 2020 13:11:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2EF12156708
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:11:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C8C5186E120
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:11:45 +0000 (UTC)
Received: from rednote.net (opera.rednote.net [66.228.34.147]) (Using TLS)
	by relay.mimecast.com with ESMTP id us-mta-409-v4fKe5UwOTy-E_ca3dHJFg-1;
	Sat, 03 Oct 2020 09:11:43 -0400
X-MC-Unique: v4fKe5UwOTy-E_ca3dHJFg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by rednote.net (8.15.2/8.15.2) with ESMTPS id 093DBgxT205110
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sat, 3 Oct 2020 13:11:42 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 rednote.net 093DBgxT205110
DKIM-Filter: OpenDKIM Filter v2.11.0 rednote.net 093DBgxT205110
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 093DBgWA205109
	for blinux-list@redhat.com; Sat, 3 Oct 2020 09:11:42 -0400
Date: Sat, 3 Oct 2020 09:11:42 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
Message-ID: <20201003131142.GC2173@rednote.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
	<e034b2f1-bfc5-d766-da46-5d14bbc587f4@slint.fr>
MIME-Version: 1.0
In-Reply-To: <e034b2f1-bfc5-d766-da46-5d14bbc587f4@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.8.11-100.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by rednote.net id
	093DBgxT205110
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 093DBm2N019039
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I was present once when the developer of SBL, Marco Skambraks, did a
demo. He showed how SBL could let you work with Midnight Commander. I
was jealous to try SBL after that, but I never got it going at the time.

Janina

PS: Didier, I have an email address for him, should you need.

Linux for blind general discussion writes:
> Hello,
>=20
> I have found a source package for SBL:
> http://download.opensuse.org/source/distribution/jump/15.2/repo/oss/src/s=
bl-3.5.0.20130317.git7a75bc29-2.46.src.rpm
>=20
> I will try to build it and add it to the Slint main repository
>=20
> Cheers, Didier
> Didier Spaier
> Slint maintainer
> https://slint.fr
>=20
> Le 30/09/2020 =E0 20:54, Linux for blind general discussion a =E9crit=A0:
> > I'm personally a fan of SBL, particularly for it's
> > hold down caps lock and use arrow keys to navigate the screen like a
> > text document" style of screen review and it generally only reading
> > the output from verbose commands that I tell it too instead of trying
> > to read absolutely everything like espeakup does... though admittedly,
> > I prefer espeakup's more verbose style when playing classic infocom
> > text adventures in Fizmo or Frotz since I don't have to manually
> > review the output of every action. I also find SBL works better with
> > scrolling curses-basedapps as espeakup has a bad habit of reading a
> > line that just scrolled on screen instead of the line that just came
> > into focus when the two happen simultaneously.
> >=20
> > Sadly, SBL is, as far as I know, only available for OpenSUse and
> > Knoppix as a precompiled package, and even then, Knoppix only has an
> > i386 version and the .deb isn't readily available ever since Alioth
> > was taken offline and too the Knoppix repository with it. SBL isn't in
> > active development either as far as I know, though I can't say I've
> > noticed any issues with the current version's age.
> >=20
> > About all I know about Fenrir is that it's userland-based while
> > espeakup requires the speakup kernel module and that it's written in
> > Python. I believe it also uses Speech dispatcher, which might make
> > using software speech synths other than espeak/espak-ng easier in some
> > cases(I've never had issues with espeak-ng, so I can't really comment
> > on other synths).
> >=20
> > I know even less about YASR than Fenrir, but I understand it requires
> > a hardware speech synth to function properly.
> >=20
> >=20
> > -Jeffery
> >=20
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >=20
>=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

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
https://www.redhat.com/mailman/listinfo/blinux-list

