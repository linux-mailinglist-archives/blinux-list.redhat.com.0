Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1354645AD22
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 21:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637698443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7N8ft6POxC493lbAFxKtaXBMvGIivOrLK3oNyXKgsfA=;
	b=B6y7pGdd67dI9kjHdAk4Qxh2wKlEiahgdDTAULi77BOKenbn38wjZSgdOX2jgNnkLCsEuJ
	N7knujE86LiUAGcxFLwwIchhfsJAiUEDcgl0EVA78T5wmlBq4SuQP7rStTe3LAbM+NBZUP
	UTMvmi821GbDZYFSbfgfsSHbs9/vBNo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-507-ouv8Cv8dNR-ocqxCuZOEeA-1; Tue, 23 Nov 2021 15:13:59 -0500
X-MC-Unique: ouv8Cv8dNR-ocqxCuZOEeA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B17C8EC1A4;
	Tue, 23 Nov 2021 20:13:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7399960843;
	Tue, 23 Nov 2021 20:13:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01BDC4A703;
	Tue, 23 Nov 2021 20:13:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANKDkx1006485 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 15:13:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8EC4C40CFD0D; Tue, 23 Nov 2021 20:13:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8820E40CFD04
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:13:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60F56823F8F
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:13:46 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-461-0kr9pMTFN0-8IGHEjyRUbA-1; Tue, 23 Nov 2021 15:13:44 -0500
X-MC-Unique: 0kr9pMTFN0-8IGHEjyRUbA-1
Received: by mail-ed1-f48.google.com with SMTP id x15so203018edv.1
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 12:13:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Ah4pd4c+qHLpWd/sal1iAJPME+eKCf9ZYgsZqlcwBBU=;
	b=ItHdiU/UkU+Z9fQyXAjt0EQ3/nRb967YdaNjZHTrHO4AZ+3ukes9DoS4yTZKRfHJBD
	UL2kAnSeqhF4TjcDaktnsRIdE9kONAaL2FLIAYFHdY2eWWKIsUECOrMl/tr1GGhVD5De
	vdmjNgjWbsnW0Ah/HfHbTsxySYtvrDQ2zzhj8lUFJ7zS4qMYnaEDpCh7oDbNIoeWOdOH
	mJuo49B6fj6XME4EGMkY7uC0wUnNFkKcxgN3IrejSHqla4j+adEcWQvbNxvYVHXU8vr6
	pOuKt5nuFBpd1hAfTWtDiD0t2G/+x+AHYcaXm1aSH20+sj9qig27Y5sry8KXQOvVZfYJ
	hzKg==
X-Gm-Message-State: AOAM533n9yt3155R+ClmhPXNxy4C3Od+7I5ZXJ7YHcTuClDgxOaoZ/UH
	QGzgBxQ64HV7jMSaWZlb+BKQpQphsA9AHQ==
X-Google-Smtp-Source: ABdhPJyHFva1x3F0lZzMrNcXuKYSoMuvsOP7uwvgfQdwqh6ovSi+yKbpuVoLsBQUfKxbObRV1U/XqQ==
X-Received: by 2002:aa7:c390:: with SMTP id k16mr13954167edq.161.1637698423074;
	Tue, 23 Nov 2021 12:13:43 -0800 (PST)
Received: from [192.168.8.113] ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	ar2sm5740166ejc.20.2021.11.23.12.13.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 12:13:42 -0800 (PST)
Message-ID: <551b47ab-e3ac-a4df-e812-539a07cd4c3f@gmail.com>
Date: Tue, 23 Nov 2021 22:13:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<5f7a6962-c4e8-4e5e-a3fd-f5afb304df54@gmail.com>
In-Reply-To: <5f7a6962-c4e8-4e5e-a3fd-f5afb304df54@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Good to know, thanks.


Warm regards,

Brandt Steenkamp

Sent from my Fedora Install using Thunderbird

On 2021/11/23 21:37, Linux for blind general discussion wrote:
> The release may be the best thing, and 35 is the newest release 
> currently available. So for now you're good. Rawhide is currently 
> numbered as 36, though that release number will change as soon as 36 
> is branched for alpha status. I would say stick with the 35 release 
> for now, unless you need to test rc kernels and such. The upgrade 
> process to 36 once it becomes available is much the same as upgrading 
> to Rawhide. Just as a test, I did upgrade to 35 before its release, 
> then to Rawhide, and neither upgrade broke my install, though you 
> don't get speech during the upgrade process, but then nothing is on 
> screen during that time either.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

