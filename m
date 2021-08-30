Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C43A93FB24C
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 10:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630311380;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qk5Fxyan0vAa716sdY6sAdG9osG5/qPoW14tr+fiYNo=;
	b=AltGoUpt2hX1M585I05TDJNA89r7SVLRyIvvDOD4sokeziJ+Jdx2Kqq3TZezZuLh8j4yKS
	gUnKtDJVD4R9Nh9iXaAxI4zMEXafp7CICWpNA4Y0Ztxi8txm58cXl53RGmctLPrVK1RxiR
	Ljli9hCYpSuUhkPZGV1nhVb5myW+kEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-2Fm7mE7zOIitEwK5MlBoOw-1; Mon, 30 Aug 2021 04:16:19 -0400
X-MC-Unique: 2Fm7mE7zOIitEwK5MlBoOw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73AA3107B7C3;
	Mon, 30 Aug 2021 08:16:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19CA560CA0;
	Mon, 30 Aug 2021 08:16:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 161C94BB7C;
	Mon, 30 Aug 2021 08:16:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17U8Fta2000461 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Aug 2021 04:15:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F0C1B47CF3; Mon, 30 Aug 2021 08:15:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF6443F80
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 08:15:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E62B089C7DD
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 08:15:51 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-157-C2Rgg2YfPNqNZG5WM_07GA-1; Mon, 30 Aug 2021 04:15:48 -0400
X-MC-Unique: C2Rgg2YfPNqNZG5WM_07GA-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id A1B56FA278
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 04:15:47 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net A1B56FA278
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 17U8Flmq142089
	for blinux-list@redhat.com; Mon, 30 Aug 2021 04:15:47 -0400
Date: Mon, 30 Aug 2021 04:15:47 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help, I need a Windows VM for my work
Message-ID: <YSyTs/rmwwDGgMNH@rednote.net>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
	<9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
MIME-Version: 1.0
In-Reply-To: <9cb596b4-06dc-945d-972e-65e2a42630d5@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.13.12-200.fc34.x86_64
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17U8Fta2000461
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Yeah, I would never consider John a fool either. We met once at a CSUN,
so I personally know better.

But, Didier, I swear you don't look 72 in your photo! <smile>

And, I hope that special offer for W3C Chairs is still open, as my old
Macbook Air is coming to its end of life with Apple.

What's my worst fear of yet another Linux distro? Yet another set of
configuration options to grapple with.

What's the most enticing aspect? All that excellent support from
Professor Didier. These youngsters know what they're doing these days!
<big grin>

Janina

Linux for blind general discussion writes:
> Hi John,
>=20
> I don't think anyone here will mark you as a fool, certainly not me.
>=20
> Having one system par machine is certainly a trouble free solution.
>=20
> Another one is to have each system on a separate drive (one being possibl=
y
> removable)
>=20
> Or dual boot, if there is enough space on the drive and the machine boots=
 in
> EFI mode.
>=20
> I take this occasion to tell you that Slint that I maintain is free for
> people meeting all the conditions listed below:
> 1. Smart
> 2. Linux developer
> 3. Blind
> 4. Deaf
> 5. At least 2O years older that the Slint maintainer.
> Hint: I am 72 years old
>=20
> So, I'd be glad that you try Slint and give us a feedback. <smile>
>=20
> All you need to know should be in our handbook:
> https://slint.fr/doc/HandBook.html
>=20
> Please let us know also how to enhance Slint and its documentation.
>=20
> Warm regards,
> Didier
> --
> Didier Spaier
> Slint maintainer
>=20
>=20
> Le 10/08/2021 =E0 14:34, Linux for blind general discussion a =E9crit=A0:
> > Well, this will probably mark me as a fool, but I just use a Linux mach=
ine and a Windows machine connected by Samba.
> > Computers are relatively inexensive now, so why bother with virtual mac=
hines?
> >=20
> > John
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

