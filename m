Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 86A7C20C11B
	for <lists+blinux-list@lfdr.de>; Sat, 27 Jun 2020 13:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593258494;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Jh6ojlYjUd/8+6ec48/XWpwBasPyKrcWGXR/36sF2ZQ=;
	b=NAqMvH/GC7eL47YSUR5eHTTKlUnVo7AhmjUxPRdvHVVxobf/BhaD+vFrplG46/RY9R4R7l
	qXsXWYkEpq+nOsMM5UJ8kzQ8tRbwvWy9VfMPTnq3XcaIX2NktTXSLUKBf5giZDuAtLwo8L
	FkJjVmbbibKwMlXHdQZ1kGCQjNA2rh0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-p9uOeh3_MPK1ZDvUC5RnYA-1; Sat, 27 Jun 2020 07:48:12 -0400
X-MC-Unique: p9uOeh3_MPK1ZDvUC5RnYA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 029F8802ED6;
	Sat, 27 Jun 2020 11:48:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2EE760BF1;
	Sat, 27 Jun 2020 11:48:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 90BC387860;
	Sat, 27 Jun 2020 11:47:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05RBli6n028894 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Jun 2020 07:47:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 933BE1C0EFA; Sat, 27 Jun 2020 11:47:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EF43181507
	for <blinux-list@redhat.com>; Sat, 27 Jun 2020 11:47:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0C2B100CF81
	for <blinux-list@redhat.com>; Sat, 27 Jun 2020 11:47:41 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-336-bwNSYoKDOeSaU2t51pbhJQ-1; Sat, 27 Jun 2020 07:47:38 -0400
X-MC-Unique: bwNSYoKDOeSaU2t51pbhJQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05RBlbMP007789
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sat, 27 Jun 2020 11:47:37 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05RBlbMP007789
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05RBlbMP007789
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05RBlb7d007788
	for blinux-list@redhat.com; Sat, 27 Jun 2020 07:47:37 -0400
Date: Sat, 27 Jun 2020 07:47:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200627114737.GA2669@rednote.net>
References: <e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<83CB53E7-F6D3-4B37-BA8D-EE7DBA340BF8@gmail.com>
	<20200625121548.GB245455@rednote.net>
	<CAO2sX30VsKxkCqGryAoqeqKHhs1Bi-dLMamNmz21+F-7VrmY6w@mail.gmail.com>
	<CAO2sX32DGABVbzM0Fov2k+qkG=MqVc9EoBX9ZpN6490QNZY-XA@mail.gmail.com>
	<9d29efe4-f30d-c73b-e69f-f21626113962@slint.fr>
MIME-Version: 1.0
In-Reply-To: <9d29efe4-f30d-c73b-e69f-f21626113962@slint.fr>
X-Operating-System: Linux opera.rednote.net 5.6.19-200.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by opera.rednote.net id
	05RBlbMP007789
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05RBli6n028894
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Thanks for checking into this, Didier. With this established, I'l push
them on that point.

PS: Their ordering page needs a little a11y love, too. I ultimately placed =
my order
by phone.Ostensibly, my machine will be stock Ubuntu 20.4, but we'll
see.

Key request which they readily agreed to, is to enable sshd on boot.
That should give me the best access to get things configured for speech,
probably something I know more about than they
! <smile>

Best,

Janina


Linux for blind general discussion writes:
> On 25/06/2020 =E0 15:32, Jeff wrote:
> > Oh, and I also listen forward to reading about your experiences with
> > the MeerKat.
>=20
> Off topic, but I have looked into the ISO of Pop!OS, the distribution
> provided by System76, and it's clearly a customized Ubuntu 20.04, no
> more, no less. It would be fair to clearly state that on their website
> in my opinion.
>=20
> Didier Spaier
> didier at slint dot fr
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

