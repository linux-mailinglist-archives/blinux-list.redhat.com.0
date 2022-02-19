Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C59704BC703
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 09:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645261008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bjTAonAPITtNx6edQs7a6rlSa/u4tgxMSwEfsM3XSsA=;
	b=XciUpDJ3jNCcvSSjRiLf9a1LhD9GCrXrfVDWFcJ28hXr2FXo4uYSzr9+g7v5v8IgcWYgZZ
	rX5GjpquJW5NKfbWEMgts9hr5HpN0hJXeQK8MrpG8FjroQLlbTNQHeQt4/CtAZGgzQfa8r
	yO77uqLSodboTTFtPiv5BZ71nZaUfB4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-126-qAj11VZSMdKbtquoR-vAsQ-1; Sat, 19 Feb 2022 03:56:47 -0500
X-MC-Unique: qAj11VZSMdKbtquoR-vAsQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 508B82F4D;
	Sat, 19 Feb 2022 08:56:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8323162D53;
	Sat, 19 Feb 2022 08:56:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E125518095C9;
	Sat, 19 Feb 2022 08:56:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21J8q3j6021511 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 03:52:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6C0E920296A5; Sat, 19 Feb 2022 08:52:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6626A20296A2
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 08:52:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AA6C3804537
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 08:52:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-218-zxAFIRzVPRacUnP3nLegbw-1; Sat, 19 Feb 2022 03:51:58 -0500
X-MC-Unique: zxAFIRzVPRacUnP3nLegbw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K12P96dyWz2pdt
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 03:51:57 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K12P95ss3zcbc; Sat, 19 Feb 2022 03:51:57 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K12P95PHqzcbC
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 03:51:57 -0500 (EST)
Date: Sat, 19 Feb 2022 03:51:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <5d1f1698-1a37-1603-fd1d-9c08fb8ba5f8@gmail.com>
Message-ID: <ce3861c7-ecc7-b487-da18-60212e46199b@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<f756ee8f-b545-705f-63c2-8bbb0eb1366c@gmail.com>
	<82999c6-172-793e-3a66-37b9ba9bb5f6@panix.com>
	<5d1f1698-1a37-1603-fd1d-9c08fb8ba5f8@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Long time since I ran that one so if memory serves alt-f2 then type orca
then alt-tab then enter.


On Sat, 19 Feb 2022, Linux for blind general discussion wrote:

> how do you get uruk to come up talking?
>
> thanks
>
> Hank
>
>
> On 2/15/2022 1:44 PM, Linux for blind general discussion wrote:
> > uruk jenux and jenux can install android, kali opensuse tumbleweed knoppix
> > lives on usb.
> >
> >
> > On Tue, 15 Feb 2022, Linux for blind general discussion wrote:
> >
> >> There's Fedora, Solus, Debian, Slint, Arch, that I can think of so far,
> >> excluding Ubuntu and spins.
> >>
> >> On 2/15/22 14:47, Linux for blind general discussion wrote:
> >>> What other options do we, the Blind Linux users have? And, no, I really
> >>> don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut,
> >>> etc.)
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

