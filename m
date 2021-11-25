Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2CF45DD77
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637854176;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C7i+5tyoif0+NymTtsffqrmBczM3DGnWbt5tF9O2ars=;
	b=fLKHth9qhnhWlQBMXWfPNbLkVX1nHOH00XMELHnlE5jFXEmYDRUhYPduZKcdaptAwDFnSl
	1KWigyLc94PmfeJsw1bR2TXOKhMooTrT9XWUdcS7lAkguNZSc9KQs5dql0uTufEVQZaAw0
	xVMUSZYmJYyGHkyBe64J9GTFXR/cE1c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-NAdCpowJOxizzM0OT4Ao7A-1; Thu, 25 Nov 2021 10:29:33 -0500
X-MC-Unique: NAdCpowJOxizzM0OT4Ao7A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BC58609;
	Thu, 25 Nov 2021 15:29:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 183B25C1CF;
	Thu, 25 Nov 2021 15:29:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67ABA4A7C8;
	Thu, 25 Nov 2021 15:29:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFMSQN011826 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:22:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D93B11121315; Thu, 25 Nov 2021 15:22:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D48B01121314
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:22:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD81A811E76
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:22:25 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-147-PtmaqkzXP8m9zJyaAB8i1A-1; Thu, 25 Nov 2021 10:22:24 -0500
X-MC-Unique: PtmaqkzXP8m9zJyaAB8i1A-1
Received: by mail-wr1-f45.google.com with SMTP id v11so12374954wrw.10
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 07:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=TisUzti3NvXhX+c1tSGvzdv9x/BVyvyVbGyW77y+RCM=;
	b=WOQc53pC1imF564vSnhdgXjvxXx56N3V3MY99nrAAHrK/b+XRnQ/Dc5irrSzYNsW8W
	J1UabCf5oUj49yoX7hmLpmkq0Ib4r2dosZluWDoKy80XIxNjTRQsvaEykwgeWiaaK0pH
	pHxHlBCMkGVoSQ1ugAgLYwT6UeT8u3OlLMPQrAkCsRMtuVUWQlXkfLRng0pRJeZXMcAT
	lL5W8gioTUjSHs5O0DTfGjEO1u4HsEsKnhMzqNvUTJnO64127JGxS3fZYRW4koPvteuS
	9TMty9M/r73t/y5qT2IC9DjPPVtVp8kSW8wnwR4vXctzCufIS8AhtVHtdnM+hqTGUUGP
	tfQg==
X-Gm-Message-State: AOAM530OACtfPVXkcsKuFhxQ8bIOHcSy9FhLvQ/nhnQ+vvMfv8CgqHf2
	bW5/LV1+cggRLbu3SWauFHpb1TAl6vfgcg==
X-Google-Smtp-Source: ABdhPJxBVP1c2QpHbNI0gi0S7FD3GTa95f03pZ/AMCQftSFVbptlYHu1VPBkclaq9rbQXWQgMBBzsw==
X-Received: by 2002:adf:fa4b:: with SMTP id y11mr7640363wrr.460.1637853742513; 
	Thu, 25 Nov 2021 07:22:22 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id 10sm4202376wrb.75.2021.11.25.07.22.21
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 07:22:22 -0800 (PST)
Message-ID: <6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
Date: Thu, 25 Nov 2021 15:22:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Converting epubs to Plain-Text?
To: blinux-list@redhat.com
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
In-Reply-To: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

There's a script to do that en masse yes, I don't have the askubuntu 
link yet but I've converted epubs to txt files no problem, though 
stripping the DRM from books I own is something I've had to do to 
convert some of them however, others converted without issue.

So yes. It's doable, it's ebook-convert and a shell script is how I do 
it. I'd put them all in one folder, then make a shell scrip tthat takes 
the *.epub and converts it to *.txt, where * is the input and output names.

Such as book1.epub would be converted to book1.txt

On 11/25/21 15:15, Linux for blind general discussion wrote:
> We interrupt these Fedora discussions to bring you a separate subject.
> I have several, maybe 18 ebooks in an epub format, from 
> BookShare-and-Usenet. In looking around, an only tool I can find is 
> "ebook-convert" part of a Calibre package to convert these. However, 
> following cryptic instructions in its man-page, as well as what I see 
> in duckduckgo, I am getting no where. Are their other better tools I 
> need to grab in a Debian SID console? In addition, I really would like 
> to convert all of these at once, in a batch. Thanks so much in advance 
> for any-and-all guidance. We now resume our regularly scheduled 
> programming
> Chime
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

