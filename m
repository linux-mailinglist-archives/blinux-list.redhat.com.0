Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D5F4580DB
	for <lists+blinux-list@lfdr.de>; Sun, 21 Nov 2021 00:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637449497;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QThQFNuoBlY5W4CrLDWNm0ykshdR0AseKfj3tTmOoms=;
	b=WBLKVFVZtUV8RGozWZgAYRREMrP6+Ef73o6CYYR/+enAp7YypcLQBXADp06d5uELYypAMk
	H1c1vg8YD5VXXsXnznjufBORPVEKT6usdJbzj9WmrBpd5tOF2QM7ASWp4UmMRiVIRo2Jvo
	w30gh0JmJdBjdNQnmFXeAzoAT9NEVIA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-401-Y1FRFkgBN8O5LmTdrDJ1IQ-1; Sat, 20 Nov 2021 18:04:53 -0500
X-MC-Unique: Y1FRFkgBN8O5LmTdrDJ1IQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4EC3806688;
	Sat, 20 Nov 2021 23:04:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EB3060C04;
	Sat, 20 Nov 2021 23:04:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 128961832E80;
	Sat, 20 Nov 2021 23:04:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKN4Xws001137 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 18:04:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43DF62026D5D; Sat, 20 Nov 2021 23:04:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EB252026D48
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 23:04:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CBE2800141
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 23:04:30 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-342-vuqQ1GoiPO2KrJipRf_u4w-1; Sat, 20 Nov 2021 18:04:28 -0500
X-MC-Unique: vuqQ1GoiPO2KrJipRf_u4w-1
Received: by mail-qv1-f43.google.com with SMTP id kl8so9704279qvb.3
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 15:04:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=VcAYvD9Cuaj8f2EO9AdReFiioC7+ZhHuRyD5+CcDfiY=;
	b=5GTVg4VtnNwyQOf8N7MD3Ocez+3Il+EGz/2wD9V5U4g3jTnpKvIMd5B41i1I0OQb0Q
	4HFI1PIhYRxb0Hp5Dp1WoMtYUK9RX7SDGowTJeI1po8PVBI0cR1b19DsZ4pEUfDsYsLO
	cRiuqCM5nw8GdYmooRz2ZdJh1gMZQ9pJf3EQWqN/hxLl27AT/u27srUBKukwIqFcfgW/
	jzcW2UAZxV5CLTi5Abe0uieG2GdKIVyVplgzRkCZxwxJKQwoRspPLF/xUrJC4OkQ88El
	X2n6ieRgAfSTg/TCblLxlZNDCBiQdpTZhlz7o7+e0AisNUHX0PnvoKusC5/nI9PbQP6J
	OSOg==
X-Gm-Message-State: AOAM531vKMnj7tQpflDt8ulrE8iarWdKvU2Mk4tF+8jPdBaHI2lNOSx3
	nApT5YqWXpIv5vO3lFPaJFVwis2fLcboXw==
X-Google-Smtp-Source: ABdhPJyXcQ0Vd6Uy6ns1ysUmZoiLQgZ8owCX4tJNkR1lwTQUWrZOWL5SA7Sclr5/b6smWuasWXGZmw==
X-Received: by 2002:ad4:4f2e:: with SMTP id fc14mr87023197qvb.66.1637449467218;
	Sat, 20 Nov 2021 15:04:27 -0800 (PST)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	y73sm1996411qkb.113.2021.11.20.15.04.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 20 Nov 2021 15:04:26 -0800 (PST)
Message-ID: <7f7274cf-ace2-abc4-c94c-3410fa61cff1@gmail.com>
Date: Sat, 20 Nov 2021 18:04:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Startup sound for Linux Mint 20.2?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <BE1579A1-9922-4342-9C4B-7BBF8D41F1A0@icloud.com>
In-Reply-To: <BE1579A1-9922-4342-9C4B-7BBF8D41F1A0@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
I added a new entry using the startup programs utility and used the 
following command:
paplay /usr/share/sounds/LinuxMint/stereo/desktop-login.ogg
Now, when I login, that sound plays.

I have not been able to find the various event sounds in Mint. I have 
even had a sighted person go into the sound utility and look for them 
and they just are not there.

This little workaround is better than nothing.

John

On 11/20/2021 3:33 PM, Linux for blind general discussion wrote:
> Hi,
> Accessible Coconut has a nice startup sound.
> But Mint has no sound. Is there a way to have a sound play at startup?
> 
> Thanks,
> Rob
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

