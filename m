Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE71345D1FF
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 01:26:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637799994;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WbC4keuhvc8f9VRkRsQSbMBDCMesjPl+Y7TrtD/T66M=;
	b=S5kVxWSbI755Seem+y765sQzTmoegFjSCyys39LueVq7Zgn9IEDEI5KNjIig2HWrRM9ja4
	ImWvByQk6d4Ilo6WM9UwQuXOW6kEGhTxfnxDJK3Hmnqd1YedJZ4Z8bEI2lV770Xbc71JGK
	pde0Zqy8gtI44t/Rv5Esi/jR7Kx/WQ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-269-Ys_UvRPeNwGfYDc7Z8oFYg-1; Wed, 24 Nov 2021 19:26:33 -0500
X-MC-Unique: Ys_UvRPeNwGfYDc7Z8oFYg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD084802924;
	Thu, 25 Nov 2021 00:26:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0457D60C05;
	Thu, 25 Nov 2021 00:26:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77FC14BB7C;
	Thu, 25 Nov 2021 00:26:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AP0Q3mT002653 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 19:26:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E7DF12166B2D; Thu, 25 Nov 2021 00:26:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E238C2166B25
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:25:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C94B801212
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 00:25:59 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-11-LjdcnrsWN76Le8JU39iGKA-1; Wed, 24 Nov 2021 19:25:57 -0500
X-MC-Unique: LjdcnrsWN76Le8JU39iGKA-1
Received: by mail-qv1-f51.google.com with SMTP id jo22so2897011qvb.13
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:25:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ScTPbRByvM4MQJW6iUlVDb2LD46o2NQeDcGcRaFBAbI=;
	b=O0KjRfUglIZOEZaXgVGXXqZhCI4aSIFioMcuRGPn7dVEOOCgQ47N4Mw5nwdGPEkCvW
	0minp7+hCdo+143J+HLx4Sl3GKYH+XM+3DfS4gZmZOTDxwx+kapk6F8pbpCR8Bf35QgJ
	igMlCGPJBP91VYV7j0AqqYXrR6V9sPiltiQo0KDez91wtw4wVf7juyOOHrfZKYFwvV7i
	iIp9CtUYQ5aS27AcL7dEcth9Nl9P9PiDs6VsHrwtNmcFEU5Fcoeu/7uBiyMuUQR7DljC
	gn16TZaAlnzP3DN9OIO7KJhw+kVHBmaWwhFItQi7tbt0ulmg5/N8qJSjPY9svR2Qi4Ga
	jR7Q==
X-Gm-Message-State: AOAM53381bnQYQNas0ecb9EPLCzFntaTZPgImDxCoQa7W5xrNS9OzGoW
	NOSrqvqrZYloTp2DJafZaHotKNfVx7I=
X-Google-Smtp-Source: ABdhPJzGvvx/SwjGMroYIwSs5IuSpb0Ie5JI4RVHlYqEFW/3mRcTNXrCHt7CGSmvhsseSrgX1P0zDw==
X-Received: by 2002:a05:6214:984:: with SMTP id
	dt4mr729038qvb.120.1637799956689; 
	Wed, 24 Nov 2021 16:25:56 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id j19sm668550qkp.28.2021.11.24.16.25.55
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 16:25:56 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
	<e0e1f20e-e4cd-1c84-d620-a0aee6c7e8ba@gmail.com>
Message-ID: <ff690e73-0230-0613-a70e-653ce98a1f5c@gmail.com>
Date: Wed, 24 Nov 2021 19:25:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <e0e1f20e-e4cd-1c84-d620-a0aee6c7e8ba@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Could be something with Solus. I get no sound at all using 34 MATE or 
Workstation in plain qemu. But this seems odd, considering all the audio issues 
I've had with Solus, both in vm's and on bare metal. That said, I wonder if I 
should try this using a snap or flatpak if either is available, since I have 
issues with Fedora's version of MAME that I don't have with the snap, although I 
can't say that I've had any other issues with Fedora's default packages.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

