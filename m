Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F0145AB62
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 19:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637692784;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ey6b1uXJU29lmBQxuulFM9otMIJXXS2ebkNXE5AHP10=;
	b=ainQkbNXPpAzWC/C/Im0wAlAaWOvMXr3t0dIqOM6uTvo3k3mk6IMQg0yglwCUmXw7Qu/oP
	dhqJ7ecKLk52hQ+Cdh7e7lySdKqn9aCi1k1+gnSuEIiRLWQkqc17tTK07S5lF7CbWRxanx
	ftKxBBC5zGkLuPkWNgwuWOzSiSiUENI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-316-M8RT8_RuNMiaPGs23UOonA-1; Tue, 23 Nov 2021 13:39:40 -0500
X-MC-Unique: M8RT8_RuNMiaPGs23UOonA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C99B61923762;
	Tue, 23 Nov 2021 18:39:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0F4660C2F;
	Tue, 23 Nov 2021 18:39:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B4354A703;
	Tue, 23 Nov 2021 18:39:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANIdTQJ032730 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 13:39:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 80CD84047279; Tue, 23 Nov 2021 18:39:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C6734047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:39:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62821800141
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:39:29 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-45-WW_eDX1YObmYFOlEQg3qoA-1; Tue, 23 Nov 2021 13:39:25 -0500
X-MC-Unique: WW_eDX1YObmYFOlEQg3qoA-1
Received: by mail-wm1-f41.google.com with SMTP id
	d72-20020a1c1d4b000000b00331140f3dc8so3401141wmd.1
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 10:39:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=rYsPkABdd3tDBT0AGk1eE2coc6x5z2CRwFKtL7Smmyk=;
	b=OjEvLkF0AbIioWNfWGnoavCNzGyGEHCkKi6wzx1lPDQLixzSnH+qdIaN+k6YZUy6Rl
	WzO6DMo9ZNAXQQwUTLaIdJQo1dLtzsosV2tg0H55bvaBuyQ4x3LVw6i/ezeIfUElbS3G
	uAxqdXt3w64LE8k/+70az4JWgjIx6ZGfeJ2smbFIW0RMWJcRpIDxpZgt+1f8fupDUH74
	lT4olwgO9ogGdbJeR3rrDgCdTyPnK7hMHsLdCTkCeL2u7cAqizEJvndt3wkpVKG/EQp8
	TrJEme0M10kEFu1QDW3eOXFY0eXMh4gOfZ6wg0EM731EmFNixQjzUVW9EThn6mzwXu4M
	FP6g==
X-Gm-Message-State: AOAM532J2wdoCkmo+xZxpvtRwq6cs8Q6U+dh99THvOKTIXlRSTR1+Pst
	PSrztClLisKQ0Npcka2HZeoAcqtxOXuCXA==
X-Google-Smtp-Source: ABdhPJw6P6aJTKSSkatuHeY8gT/9xrnstGHVfIcegRwE5fEP2uk2ttFRUoePd68p+3m0hWQ6rhmDnw==
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr5985344wml.21.1637692764293; 
	Tue, 23 Nov 2021 10:39:24 -0800 (PST)
Received: from [192.168.8.113] ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	h17sm1983334wmb.44.2021.11.23.10.39.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 10:39:23 -0800 (PST)
Message-ID: <d5b573de-e7da-a651-b7c3-84fef12ce64d@gmail.com>
Date: Tue, 23 Nov 2021 20:39:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
In-Reply-To: <CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
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


For now, I decided to give Fedora a go.


If I decide to go with Debian for a bit, I'll have to go with a non-free 
ISO. My MateBook's WIFI drivers is not free at all.


All I'll say at this time, thank all that's good and holy for Linux. 
Windows was driving me up the wall!


Warm regards,


Brandt

On 2021/11/23 20:26, Linux for blind general discussion wrote:
> You could always give Debian a try. Ubuntu's based on it, but my
> understanding is that most people who dislike Ubuntu dislike it for
> the things it does that vanilla Debian doesn't.
>
> Granted, if you want a reasonably up-to-date system, you'll probably
> want to go for Debian Testing over Stable.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Warm regards,

Brandt Steenkamp

Sent from my Fedora Install using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

