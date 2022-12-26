Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F906561CE
	for <lists+blinux-list@lfdr.de>; Mon, 26 Dec 2022 11:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672050267;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fn2qeEVExReNPokFfbVC8TzNSdYF22/tpVcgEQqMCs4=;
	b=WBE4fHZz/5eT5ISCCYoVtmGYGfdtCh6/GVJxrnVviw59ry5D/i3Ma2D9VhRCoYFxxMTpoS
	B7qmnjVdjdF4WMfcrP+rotE+BY2kr7nLvvLhlnyFGqog3hnDhAkQ5sWr5Eb9umJ8Tlb9XA
	95Zv1JC6J6nFGBFpxA6IurE8rZkF4Ls=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-232-MfE72CD4MX-eYdbOsxeE5Q-1; Mon, 26 Dec 2022 05:24:24 -0500
X-MC-Unique: MfE72CD4MX-eYdbOsxeE5Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8062485C064;
	Mon, 26 Dec 2022 10:24:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 36AA7492C14;
	Mon, 26 Dec 2022 10:24:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 737C21946594;
	Mon, 26 Dec 2022 10:24:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 1CE65FA237
Date: Mon, 26 Dec 2022 05:16:05 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is there a Fedora Espeakup Package?
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.6427.1665341560.6078.blinux-list@redhat.com>
Message-ID: <mailman.1245.1672050249.2515676.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Until his passing, Bill Acker would build kernels for Fedora releases
modified to include Speakup. I considered taking that up, but decided
the learning curve and time investment was greater than I cared to
commit to the task. Instead, I switched to Arch on my personal machines,
though my Linode hosted server still runs Fedora.

To put it differently, Fedora has not supported cli screen readers for
well over a decade. The last I recall Redhat including Speakup was the
ill-considered inclusion of it in Redhat 8.0. Why ill considered?
Because of unintended consequences for i18n.


If you must use Fedora in the cli you have to roll your own, or perhaps
more achievably simply run Fenrir.

Best,

Janina

Linux for blind general discussion writes:
> Hi,
>=20
> I had a look through the Fedora package search webpage:
> https://packages.fedoraproject.org/
> and found nothing.
> Moreover, no console screen reader at all in Fedora.
>=20
> Didier
> --=20
> Didier Spaier
>=20
>=20
> Le 09/10/2022 =E0 19:59, Linux for blind general discussion a =E9crit=A0:
> > Hi there,
> >=20
> > Just wondering how can one run Espeakup on Fedora? I am on Fedora 36, b=
ut can't
> > find Espeakup in its repositories. So how do we run the Speakup while i=
n the
> > console? Tried a search with yum search and dnf search for both speakup=
 and
> > espeakup, but to no avail. I even tried compiling the Github espeakup, =
but the
> > meson build fails with no espeak-ng dependency found (yet espeak-ng is =
installed).
> >=20
> >=20
> > Is there anyone using speakup on Fedora or any of the Red Hat derivativ=
es?
> >=20
> >=20
> > Thanks.
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

--=20

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures=09http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

