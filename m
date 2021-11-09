Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A67449F47
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 01:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636416164;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+jhKnjeAMru95yW1XNA+uWw/26FNBX7+tpsXO64iGFE=;
	b=Ie8fNqRfZFmKVSpFTvlQ1Bl09bozfqruUhjty1o5WVOnTMYMTDbw0hfxuOqVMiYyEnzIdo
	43a5ySOt9fKytTQfyVvmSa6w73slZUEOOB+mbBs1ObItEks4hEbMxQKc4ErAA8QXFK/PO9
	yoVuG8gICWEkzqDQ6KYOV7G5LpT7f8k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-xZEmT6BDMUWGnmNtXl6BUQ-1; Mon, 08 Nov 2021 19:02:40 -0500
X-MC-Unique: xZEmT6BDMUWGnmNtXl6BUQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C44B01015DA0;
	Tue,  9 Nov 2021 00:02:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F0B05D9DE;
	Tue,  9 Nov 2021 00:02:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F62F180BAD1;
	Tue,  9 Nov 2021 00:02:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A901t7F007940 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 19:01:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D8F60404727A; Tue,  9 Nov 2021 00:01:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D4D164047272
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 00:01:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB58285A5A8
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 00:01:55 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
	[209.85.214.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-561-ikJQXqEpOxmbnxWNQxyT3w-1; Mon, 08 Nov 2021 19:01:54 -0500
X-MC-Unique: ikJQXqEpOxmbnxWNQxyT3w-1
Received: by mail-pl1-f170.google.com with SMTP id y7so512215plp.0
	for <blinux-list@redhat.com>; Mon, 08 Nov 2021 16:01:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=D1F/I/lZgkBLcBIXvs7EASDP1/goAIaL9JRT/snbI6I=;
	b=nrZDRmGsMUiwoiA33rEu8W0K6ORX/bu5Fyos7uTtAWhgYRvO4Purk9a3k5wOKAr1nH
	/vg5vz1z71dsUiXOmLva8wicQ+X/xKydZdoqrEx4HS/f2i3XRt0E88OlCA3M/4XoIpp8
	G2nbCqvdZVVLOE8GX2eNDQpkTNlgJQ4ySPmbYDlvuC8zcdTmTnKK8mFik3qe5yYIyMo+
	REc9w5ZwJbyH+mtYq/3iyvCobGZTjJZER68VOjdxagxOrDJMld7BBRMw2N5cAeRN2GWh
	iY/iAjHeJH8aYBHE6jf+upbDgQ9NEJjiEk50xbgR2WWDWN45+QZ8SrcjhcGa5JxXJwJo
	z/aA==
X-Gm-Message-State: AOAM5306pGFV5f1Zbsz5NTUpeZk3zT7ABXCPBMs2KHJpMKJmd7dHblIm
	m0nd5jb+/XydNRAoGFVFBTQYwJLjEXw=
X-Google-Smtp-Source: ABdhPJx3wqXKX0x/6ha23g62tG3cDRC8gQsr5MDjms0rRTGGrFmDwpo7fALZb7Yo0AZXTZgJjwwScw==
X-Received: by 2002:a17:90b:188e:: with SMTP id
	mn14mr2420707pjb.91.1636416112770; 
	Mon, 08 Nov 2021 16:01:52 -0800 (PST)
Received: from [10.200.2.40] ([103.233.155.115])
	by smtp.gmail.com with ESMTPSA id
	h12sm17546646pfv.117.2021.11.08.16.01.51 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 08 Nov 2021 16:01:52 -0800 (PST)
Message-ID: <9b43177a-bc75-0d92-bd91-cd8f6a335deb@gmail.com>
Date: Tue, 9 Nov 2021 07:01:50 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
In-Reply-To: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I'm using whatsapp web for communication. It works well with orca.

The missing feature is voice and video call. But we have our phone for that.


HtH

On 11/9/21 01:35, Linux for blind general discussion wrote:
> Hello folks,
>
> I am wondering if any of you use an accessible Linux client for 
> Whatsapp. What is the best way of using Whatsapp on Linux if no 
> accessible client is available?
>
> Any ideas?
>
> Cheers,
>
> Ibrahim
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

