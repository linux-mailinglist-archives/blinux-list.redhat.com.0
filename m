Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C654BBDB6
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 17:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645202499;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8om/H3hd1IS73rviKhx1SMvG0RyK6TxiOMXR0syUPcQ=;
	b=AUrSKTIz3hr6YHauER8VR/Z/OT0pH5V9j9Uf4lmf21KZylrt0LBUJSSXk2EIqXRPbsKCpo
	ec7fKzW2LTEPTW/hkk+RAD+ferpxDUG27hsqhF+ddyt1S4Jfao876iygEyoD7L2E3T+y7k
	ztOnTmKvQDYbBlxprW5V2VjNGHwunRU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-271-1X8bzUVjMaaWsClajlBL0A-1; Fri, 18 Feb 2022 11:41:35 -0500
X-MC-Unique: 1X8bzUVjMaaWsClajlBL0A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EEC8801ADB;
	Fri, 18 Feb 2022 16:41:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC3A838C7;
	Fri, 18 Feb 2022 16:41:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BB921809CAA;
	Fri, 18 Feb 2022 16:41:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IGfNY6020515 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 11:41:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 23E8E40FF6C4; Fri, 18 Feb 2022 16:41:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F5D740FF6C1
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:41:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07A7F3804087
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:41:23 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-197-SrUMfL2vPw-sJnIpzF7Bmw-1; Fri, 18 Feb 2022 11:41:20 -0500
X-MC-Unique: SrUMfL2vPw-sJnIpzF7Bmw-1
Received: by mail-wr1-f45.google.com with SMTP id p9so15490430wra.12
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:41:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=OH+xrpimEHCXp2Tz2DbHGG2Bg0UlL+lNgJ0CPSvxGYY=;
	b=hAL6ppfKOMEPUBgq4wILw+mM0M4ugPx4dxRuSQGrqKFO3W26P8JBg6iBrsWzqKXUny
	oB8H5rB98NUFmXdSq4vZ4CwLYjGX4qfq3pB8+uJsELxiMt2353/+bhlov8SdUyVumwd2
	aIrzYErqfnn3CqSvXGihrTuA+MPj+zrHjABg5wB4f/u0XlFNI5Roih8yDwEt8S941buA
	fxpP0Sx/SdmkXxKKedKrkgVteIV1fE+cqCUqwh4UzHO0h5XLbW/vieUcR3vW/sGIvreu
	q4A2M5P54gd2rlNUFxGNp83LhjTG+0+ZbyvpoV6dghyaawCuhJ7RrW+UjTxDD/CzToFr
	y/dg==
X-Gm-Message-State: AOAM533z6oRVdWliFPpapJZ38gexlKDKcF4nwDCi9VhJdayz135E4ns5
	fzwHpcWQy33sUzaNRh+FlNXqUuKGgUc=
X-Google-Smtp-Source: ABdhPJw+on33O9fx9f6O86xqEUzdwTrstNgGm0u8DUXtxujWAK7BPCoCprMujmZVl+YgGd3MvLAQKg==
X-Received: by 2002:a05:6000:1361:b0:1e3:231f:1c7d with SMTP id
	q1-20020a056000136100b001e3231f1c7dmr6522287wrz.547.1645202447228;
	Fri, 18 Feb 2022 08:40:47 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	a18sm38931400wrg.13.2022.02.18.08.40.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 08:40:46 -0800 (PST)
Subject: Re: Mutt or Alpine
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
	<f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
Message-ID: <2fdbd38e-eec9-dbf7-2ba4-3326a6bf4e75@gmail.com>
Date: Fri, 18 Feb 2022 16:40:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My issue with Alpine though is it's losing my IMAP mails, like I've 
several with attachments that Alpine skips right over and Mutt displays 
fine however, so I'm not sure if that's a problem with Alpine? My Gmail 
terminal setup works fine in Mutt however, which is doubly weird

Linux for blind general discussion wrote:
> If you want to use an email client with Orca, stick to Thunderbird.
>
> I find Orca unwieldy in the terminal anyway.
>
> If, however, you wish to do so with Speakup or Fenrir, I personally 
> prefer Alpine.
>
> Why? Simple. I don't know Mutt at all.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint console using Alpine
>
> On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
>
>> Date: Fri, 18 Feb 2022 16:00:22 +0000
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Mutt or Alpine
>>
>> So I'm using Mutt, but...
>>
>> What does Mutt have over Alpine and vice versa, why would I use one 
>> over the other?
>>
>> Mutt seems faster to me, but Alpine seems more user friendly without 
>> making temporary files while composing a message (unles I can tell 
>> Mutt/Neomutt to delete those automatically
>>
>> So is there a consensus of which is the easier choice to use with Orca?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

