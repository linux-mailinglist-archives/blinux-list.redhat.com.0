Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BAB454AD5
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 17:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637166027;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h5XdDjgcckbt6mynzRkaaBXjDNGoF1uoZf0vK41PXck=;
	b=DFhUsLH6Su5t40Jdh+UPPuPmaab7aexAGOWmPEvdDzJp8POD4h2OZpZWK/a0NRSnnGF7Sn
	b0R+jSrxf23GHwlnOxlxCMcuKm+0UGMEoTwJf4krN9DQpUvhv0hp6iLIYGmAkDHgX12yj1
	MEoUKlh2HwXaIvr55g78BbQB49G0BGM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-31-fPFC2HVDPje9Y6rCi-hAZg-1; Wed, 17 Nov 2021 11:20:24 -0500
X-MC-Unique: fPFC2HVDPje9Y6rCi-hAZg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A381100D844;
	Wed, 17 Nov 2021 16:20:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 793CC5F4EE;
	Wed, 17 Nov 2021 16:20:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF022180BAD2;
	Wed, 17 Nov 2021 16:20:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AHGK3IG026931 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Nov 2021 11:20:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2BABF1121314; Wed, 17 Nov 2021 16:20:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 276AD1121315
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 16:19:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 462E5857BFA
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 16:19:58 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-494-Apa6Z-dqOgCquAcH5RfOZA-1; Wed, 17 Nov 2021 11:19:55 -0500
X-MC-Unique: Apa6Z-dqOgCquAcH5RfOZA-1
Received: by mail-qv1-f53.google.com with SMTP id s9so2365231qvk.12
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 08:19:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=FbB8xFWo099qa9ELfKyml1c3lyzH76Q6omS8YoCbC1E=;
	b=VvZN+9LEBd2Q8kTs/9ObNkyRYDW0BItdFUd6gURT3mU5fYF5/9gAZP0FLpcAP3oWF2
	eRFyOWqYmHf7W40E4Y+k7E0Fe71+l8XP/5JBx6YM/tddMpE5p+BfMNC3VkL+Pr/rC/Jk
	6nkd1WVU7rmUKG17pngZ5dgI1OkzRtjXFhfmPGQFzBlMBTCsUgplz3+FkUclYTE1ngcm
	GzI3bGM2/XRTi5q3LSukfYaoubMpr3ZgfbH5wu1llqbwnvYackg6i5PCAtklRW68sM64
	ENJvWKk5RCiwZLbFYRDk2OSSoOdiaLher3ulUfo9gpXuG2gEd8OUC2l/AgpeZsKbwi3k
	MoLQ==
X-Gm-Message-State: AOAM531o+eU7barctv+KzQ96XyAQyJJKM9HHkplpmr5/VSKzKo9X8+jp
	zzPW6yIC/Hvt+0SzqjTzpEpzhZyXiLmZ2w/f
X-Google-Smtp-Source: ABdhPJyoMTgE8JoknFsKUi6iRx57u9JKZqFYo6+St4RroqrLnLf8khPEFgPluvnAJy9Xh92UHGEI4Q==
X-Received: by 2002:a05:6214:f61:: with SMTP id
	iy1mr56318377qvb.0.1637165994572; 
	Wed, 17 Nov 2021 08:19:54 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id h12sm108075qkp.52.2021.11.17.08.19.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 17 Nov 2021 08:19:54 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<0a8fe3bb-93a5-6464-30ca-10a11eab942a@gmail.com>
Message-ID: <d5286639-7041-0b33-8a69-13a8604d76d7@gmail.com>
Date: Wed, 17 Nov 2021 11:19:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0a8fe3bb-93a5-6464-30ca-10a11eab942a@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am using Slint, which is based on Slackware distribution of Linux. I 
do not think you can run it in a virtual drive, but you can install it 
on an SD card. You need a good quality SD card with a capacity of at 
least 32 GB. I have it installed on a 128 GB SD card to give me enough 
space for installing and trying different packages. Slint comes talking 
rightaway, so you will be able to install it yourself without sighted help.


Cheers,

Ibrahim

On 11/17/21 8:17 AM, Linux for blind general discussion wrote:
> Fedora is a very good distribution. I personally recommend the 
> MATE-Compiz spin.
> https://spins.fedoraproject.org/en/mate-compiz
> It can certainly be installed easily, comes with the VirtualBox guest 
> editions and other similar helpers for running in virtual 
> environments, and also ships with orca out of the box. Eventually it 
> will be better to run any distribution on bare metal and run any other 
> operating system you want in the virtual environment, but for either 
> use case, Fedora-MATE-Compiz is very comprehensive, solid and stable.
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

