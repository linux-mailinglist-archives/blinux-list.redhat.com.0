Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6414AF313
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 14:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644414063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lG2twzOqOkBdUd0RoIIpDDm9RIoyX5gV3QvPf08OWoo=;
	b=S8ZOxg1UPhKu65Z1SXHksIZ4OUsj/ZjkEHm3hoyF23yF5wAVVjNh/1KSTPMPS0vcK1RG4b
	R91UbUdtKadytQfMSVu7dWxZwhTo7nwYm4jd/OfqBQvPm1BwrtIAgeDKRx6VQGk+KQ59Cx
	PnRzQdoz5M0HyCAawawlmauU/ZN5wEU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-516-SmHEddxxMKql9u2PyDfUoA-1; Wed, 09 Feb 2022 08:41:00 -0500
X-MC-Unique: SmHEddxxMKql9u2PyDfUoA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2055A81F039;
	Wed,  9 Feb 2022 13:40:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D64A105C735;
	Wed,  9 Feb 2022 13:40:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 255B01809CB8;
	Wed,  9 Feb 2022 13:40:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219DWuau022103 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 08:32:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BF9C3740C; Wed,  9 Feb 2022 13:32:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB5D5740A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:32:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79EC53C01B83
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:32:53 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-177-YDkTba-nPN26ZZNYyBnolw-1; Wed, 09 Feb 2022 08:32:50 -0500
X-MC-Unique: YDkTba-nPN26ZZNYyBnolw-1
Received: by mail-wm1-f42.google.com with SMTP id
	q198-20020a1ca7cf000000b0037bb52545c6so3203150wme.1
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 05:32:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=BUXVCSh7yioHIDV3vZd7nG8c8GpV+BbF/u7umIEOgNg=;
	b=sxKxAScavpTwPJdl+rDASSpN/ibk9tJKuDRuZ0pCenLnXQgEr7G9e83x6i74xOke33
	65cgLz56W/HwUhECHr2OuIHBt3utQxUGNILi6PrGbcTtRyowf5mG+JK8R1LiCWCkADdx
	H0lHtjc8puRJ1jGnsXsCZUk9i42EMhIddtOTAwKgkYNQWVsa6C50MVE5VX7Qc9QyyXX2
	XBSsyaTMCA/QF3wBRsfq2yizBZtoRwD5wJ3zEcgl7iHZLyA8YIkB1+h+WlOUVu7Jz/m0
	2hWUuw2WKz66/BZT9SYhe2N7GfB/l9d4JSjYWuKjUav4qPTCZqLxvF2beNqdlDPEnejn
	k3kw==
X-Gm-Message-State: AOAM530pmww7l7KDLVZjDNUwjpf9JGRyBKatLl/jTGypNq/wDh70EVs0
	d8tenELBF17JciplPbuulx2/niJe4lI=
X-Google-Smtp-Source: ABdhPJzy1KxJXO65wcfxbMqC1+mK00rzson+niibhj9iZ8wv8TMKK4yk18oAn4tp850jTRGldV7Ekw==
X-Received: by 2002:a05:600c:a4c:: with SMTP id
	c12mr2090563wmq.48.1644413569340; 
	Wed, 09 Feb 2022 05:32:49 -0800 (PST)
Received: from brandt-slint ([197.184.183.237])
	by smtp.gmail.com with ESMTPSA id
	r11sm7320113wrt.28.2022.02.09.05.32.41 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Feb 2022 05:32:48 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.study.home>
Date: Wed, 9 Feb 2022 15:32:26 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Revisiting Twitter clients
In-Reply-To: <20220207062713.4e674f58@bigbox.attlocal.net>
Message-ID: <d47a6890-d62-5cfe-b6bc-c6d59261f480@brandt-slint.study.home>
References: <59896164-9a9d-e3db-352-4bac97d2841@brandt-slint.study.home>
	<20220207062713.4e674f58@bigbox.attlocal.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Tim,

It is rather bad, about at the same level as "twterm".

I am just glad that if you want to, you can actually do this.

If I had a choice, I'd never touch a GUI interface again in my life, 
however, I think that may just be me wishfully dreaming of something that 
will never happen.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Mon, 7 Feb 2022, Linux for blind general discussion wrote:

> Date: Mon, 7 Feb 2022 06:27:13 -0600
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Revisiting Twitter clients
> 
> Tim here.  A while back I tried a smattering of CLI Twitter clients
> and was pretty disappointed.  Rainbowstream was the least bad of
> them, so that's where I'd start.
>
> https://github.com/orakaro/rainbowstream
>
> It required the ability to do an OAUTH credential thing, but I think
> it can be completed using an external browser (such as one on a phone
> or on a different computer) since all it needs to do is get
> confirmation from Twitter that the login is legit.
>
> -Tim
>
>
> On February  1, 2022, Linux for blind general discussion wrote:
>> Hi all,
>>
>> I find myself often starting the PC and just doing what I needed to
>> do without starting an XSession at all.
>>
>> Quickly editing a document using, in my case, Nano, simply because
>> I actually like it for being simple, easy and effective. Maybe
>> playing some music, and now that I've figured it out, reading my
>> mail using alpine.
>>
>> Is there a reasonably good TUI Twitter client that doesn't rely on
>> any kind of XSession?
>>
>> I know this has been discussed but, since stuff change so darn fast
>> in tech, and particularly in the FOS world, maybe there's something
>> new to say on the topic.
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from the Slint console using Alpine
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

