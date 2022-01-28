Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E7D49F05F
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 02:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643332395;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5NQnc/e79xKARtyZqejFZp05UFUIVgm1iVKLrSASEZw=;
	b=JmdiUEenXT1E0INJH99sxG2D3TtZXT2+vGY9jR3Ws9vX8mKHlQGXpG9gGC7VnX68hzheHA
	56DDv92ICejAIvGQcZ6CKwuBYyD61nw/91h9+pMN4a+vniGrJxGw1+XZan6CjU5vLqR/ms
	19ehcwYuIToyua58zQE3uoX8jatmu4U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-651-v_kq13ksNUKGLqyip1dGmA-1; Thu, 27 Jan 2022 20:13:10 -0500
X-MC-Unique: v_kq13ksNUKGLqyip1dGmA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 112281083F62;
	Fri, 28 Jan 2022 01:13:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E76B919724;
	Fri, 28 Jan 2022 01:13:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A63DF4CA93;
	Fri, 28 Jan 2022 01:13:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S1Cws6029146 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 20:12:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F0AF3C159B3; Fri, 28 Jan 2022 01:12:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECC2BC23DB0
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:12:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D286F8001EA
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:12:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-301-kqjmLXHXNKKbLQPJFUH-Eg-1; Thu, 27 Jan 2022 20:12:56 -0500
X-MC-Unique: kqjmLXHXNKKbLQPJFUH-Eg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JlKFf5lPvzvsV
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 20:12:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JlKFf5Z5lzcbc; Thu, 27 Jan 2022 20:12:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JlKFf5BpqzcbP
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 20:12:54 -0500 (EST)
Date: Thu, 27 Jan 2022 20:12:54 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
In-Reply-To: <2B6D227E-CAFB-42F3-926D-2728E4D7139D@icloud.com>
Message-ID: <9ae0dbd8-ea3c-1ca9-e64b-6bfe5ef59a96@panix.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
	<2B6D227E-CAFB-42F3-926D-2728E4D7139D@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When installing slint, speech starts up automatically when slint works
correctly.  You have to turn speech off once the installation starts if
you don't want speech.


On Thu, 27 Jan 2022, Linux for blind general discussion wrote:

> Hi Didier,
> I read the instructions but I was still confused.
> If I run Slint live ISO  in a VM, how do I get speech?
> Thanks,
> Rob
>
>
> > On Jan 27, 2022, at 6:44 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Hi Rob,
> >
> > did you try Slint?
> > https://slint.fr/doc/HandBook.html
> >
> > Cheers,
> > Didier
> >
> > Le 28/01/2022 ? 00:22, Linux for blind general discussion a ?crit :
> >> Dear List,
> >> This is my third attempt at Fedora.
> >> I setup a VM on my Mac to try
> >> Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso.
> >> I pressed alt+F2, typed orca and enter.
> >> I get no speech.
> >> What can be wrong?
> >> The same thing happened with Fedora Workstation 35.
> >> I?m about to give up and stick with Accessible Coconut and Linux Mint 20.03.
> >> They both work out of the box with no problems.
> >> Thanks,
> >> Rob
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

