Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8CD5A28A5DF
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 08:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602396884;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cIw7WSxVk7UM4jf5En/fZgFMjkNUhjA/PXHF5fH8rpc=;
	b=HbSwWGsJP+bxc4HXc+ei7gWpUbmOdwgXqoml1Dv7PLJkuWUel9se6f6+ki8IQu+Q7SJJps
	5vqGi288CYPPyVUrz16Do4nn+iKrevN+eVmwOaEpM+KTkUPV9j/KDpiGLhFxTt5c/7Pn80
	HOMINEw4T/QUVLUgAc5lXytoVx7WXao=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-Qe6A6krkP2WmI1t2oigJBg-1; Sun, 11 Oct 2020 02:14:41 -0400
X-MC-Unique: Qe6A6krkP2WmI1t2oigJBg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 098501868421;
	Sun, 11 Oct 2020 06:14:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A65A66EF4F;
	Sun, 11 Oct 2020 06:14:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5449F92300;
	Sun, 11 Oct 2020 06:14:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09B6DoP0015216 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 02:13:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 218972166BA4; Sun, 11 Oct 2020 06:13:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BD9E2166B44
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 06:13:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02D741823602
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 06:13:44 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-79-5Gv3EXSzP8aNO_vgwJ5awA-1; Sun, 11 Oct 2020 02:13:40 -0400
X-MC-Unique: 5Gv3EXSzP8aNO_vgwJ5awA-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 09B6Dc0f369818
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 06:13:38 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 09B6Dc0f369818
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 09B6Dc0f369818
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 09B6DcGE369817
	for blinux-list@redhat.com; Sun, 11 Oct 2020 02:13:38 -0400
Date: Sun, 11 Oct 2020 02:13:38 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
Message-ID: <20201011061338.GD9202@rednote.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
	<e034b2f1-bfc5-d766-da46-5d14bbc587f4@slint.fr>
	<20201003131142.GC2173@rednote.net>
	<b9ca7f9c-ae39-997f-d0bb-16a326a3e322@slint.fr>
MIME-Version: 1.0
In-Reply-To: <b9ca7f9c-ae39-997f-d0bb-16a326a3e322@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.8.12-100.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by opera.rednote.net id
	09B6Dc0f369818
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09B6DoP0015216
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Just responding to say that Didier and Marco should now be in direct
email communication, in case others were wondering.

Best,

Janina

Linux for blind general discussion writes:
> Hi,
>=20
> thanks Janina,
>=20
> actually I could build SBL on Slint, but as it would need time to
> make a good package with the associated documentation including
> indeed the key bindings and as I already ship 3 console screen
> readers in Slint (fenrir, espeakup/speakup and speechd-up)
> this will have to wait after the release of the new Slint installer.
>=20
> However, please send me privately Marco's email address.
> I remind you that mine is didieratslintdotfr.=20
>=20
> Cheers, Didier
>=20
> PS I also read in the AUTHORS file of speech-dispatcher:
> "Thanks to Marco Skambraks for the libao audio output module."
>=20
> PPS There is some doculentation also available here:
> http://www.openblinux.de/en/index.php?page=3Dsbldoc
> I have no idea if its up to date.
>=20
>=20
> Le 03/10/2020 =E0 15:11, Linux for blind general discussion a =E9crit=A0:
> > I was present once when the developer of SBL, Marco Skambraks, did a
> > demo. He showed how SBL could let you work with Midnight Commander. I
> > was jealous to try SBL after that, but I never got it going at the time=
.
> >=20
> > Janina
> >=20
> > PS: Didier, I have an email address for him, should you need.
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

