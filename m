Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0787529714B
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 16:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603463215;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z8noTkRXPTKztSmtsPlUfrf/RcXAoO2XUkFItD6Qc28=;
	b=aUgWLSvrdzrBY239oRF57PoEUhnuGkx0FX/yaAZ1VMCId3cXhrppra66CllhjcZLgY+Gm3
	w5AKBcUdeNkkKO1gbcZ4fb6MhxEJHa6sfs24DNzrbXT7fvUwBdZ4kt7lf5ymSObmhnVzw9
	2Atxl7/HTemdp53t27hgs0fEqXnxtzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-oiqjYsmQNy--9SPMkJbv1w-1; Fri, 23 Oct 2020 10:26:54 -0400
X-MC-Unique: oiqjYsmQNy--9SPMkJbv1w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFD3F804B70;
	Fri, 23 Oct 2020 14:26:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90A3610013D0;
	Fri, 23 Oct 2020 14:26:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C432C92302;
	Fri, 23 Oct 2020 14:26:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NEQgR6009174 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 10:26:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1CB92110F75E; Fri, 23 Oct 2020 14:26:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18C6C110F75C
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 14:26:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD8BB8007D9
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 14:26:38 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-309-FeA1Bg9bOuK6QNnOVqVkNA-1; Fri, 23 Oct 2020 10:26:35 -0400
X-MC-Unique: FeA1Bg9bOuK6QNnOVqVkNA-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	48EF12978D77_F92E715B
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 14:22:13 +0000 (GMT)
Received: from pta-gwia2.csir.co.za (pta-gwia2.csir.co.za [146.64.54.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTPS id
	0786D297737E_F92E715F
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 14:22:13 +0000 (GMT)
Received: from marge.meraka.csir.co.za ([146.64.28.1])
	by pta-gwia2.csir.co.za with ESMTP (NOT encrypted);
	Fri, 23 Oct 2020 16:22:11 +0200
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 285078B44
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:22:11 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id HVgHLtQY9EEI for <blinux-list@redhat.com>;
	Fri, 23 Oct 2020 16:22:11 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:22:10 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1kVxxK-0006zA-I0
	for blinux-list@redhat.com; Fri, 23 Oct 2020 16:22:10 +0200
Date: Fri, 23 Oct 2020 16:22:10 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
Message-ID: <alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The sound card drivers are modules, so just build the module if need be.
Ac97 sounds pretty standard to me though, so I think it should be part of 
the standard setup already.
The pc speaker is something else though.
There is a module called pcspkr which allow the use of that.
All pc's does not have a speaker though.
Maybe I am missing something in your message?
Regards, Willem




On Fri, 23 Oct 2020, Linux for blind general discussion wrote:

> I have an ac97 sound card and a c-media usb sound card on a system.  I
> have only had success activating the pcspeaker when building a kernel for
> gentoo.  I have no clue as to what to enable to get this done.  This is
> even after having gone through lspci output and lsmod output with the
> install-minimal dvd running the operating system  The speaker-test utility
> puts out sound in the chroot environment and is silent after first boot
> into the new environment made by the compiled kernel.
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

