Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 69B2F24D8AC
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 17:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598024138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/SczLwTj744nezQa9Ao3Z9HvhRhG1QcnWTnUODp4ntA=;
	b=Sdf7FxOcq/+gz6b/0A76igdE2hVF2/WPjr+5THf2biaXRlT3amuteyXSGRONEK2+Xt5CFp
	LlLwdRQeGkQQzKZwhgcD1glA5Oc7dni0JyTyujKzRUN7OdSCPaGITRwK1AQAGpqNulutKd
	LNEYmoBLtpTvT4cYAv6LflmUJf3jVOA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-2KjdDUW0MrWYnOuMVN7oFg-1; Fri, 21 Aug 2020 11:35:36 -0400
X-MC-Unique: 2KjdDUW0MrWYnOuMVN7oFg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A23D51084C91;
	Fri, 21 Aug 2020 15:35:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 873FF5C89C;
	Fri, 21 Aug 2020 15:35:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B8EE662BB;
	Fri, 21 Aug 2020 15:35:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LFZRLj014214 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 11:35:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 11CFA2157F24; Fri, 21 Aug 2020 15:35:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D9812166BA4
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:35:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9930518AE958
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:35:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-60-G2ABGytmMIyd6wviQrx6NQ-1; Fri, 21 Aug 2020 11:35:21 -0400
X-MC-Unique: G2ABGytmMIyd6wviQrx6NQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BY5Dn1L5Xz10ly
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 11:35:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BY5Dn14zvzcbY; Fri, 21 Aug 2020 11:35:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BY5Dn120RzcbV
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 11:35:05 -0400 (EDT)
Date: Fri, 21 Aug 2020 11:35:05 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <CAO2sX32A8QuCvc_o8QERqgjr4k_w_CRq0nwpSLosESQ1mLkzAA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2008211134250.8148@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<68ff810e-ebd5-8eb4-f6db-5c268f40d837@gmail.com>
	<CAO2sX32A8QuCvc_o8QERqgjr4k_w_CRq0nwpSLosESQ1mLkzAA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Another possibility may be satogo that though is a web application.

On Fri, 21 Aug 2020, Linux for blind general discussion wrote:

> Date: Fri, 21 Aug 2020 08:57:22
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Accessible Distros for a beginner?
>
> And even if NVDA can run under Wine, I would expect it to only work
> with other Windows applications running under Wine.
>
> And honestly, I remember Wine being fairly frustrating to work with
> even as a sighted user, and while there's been nearly a decade for it
> to improve since I last used it, Microsoft's fondness for overhauling
> UI every other version and making changes seemingly for the sake of
> change means the Wine devs have been dealing with a moving target...
> wouldn't be surprised if Wine offers better support for older Windows
> software than Windows itself does these days though.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

