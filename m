Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CD844F542
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 21:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636835009;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KiLH7+6QiLxmTB6iyRFy/p2ia54anAB26Ol7sIW+LqY=;
	b=bx/6ZuNP+plbp4nCo95CKxHXtnLO/Wyy9Yv6p9YIKjT0bhaFeJUh/AI5e5THU91FM1iF+6
	QC9CUAT6D8mIWK4GCom/rDQeQfFL2ueibb11z7wbX6FUym4dyja7+5ZOuSp9iU+R9DWDl+
	LiVtCYhcTkFVRhXoHRMI+NRMArw8vxQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-Fj475NOTPVqsF1jFsHb5_g-1; Sat, 13 Nov 2021 15:23:25 -0500
X-MC-Unique: Fj475NOTPVqsF1jFsHb5_g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0D4C1030C20;
	Sat, 13 Nov 2021 20:23:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 881875C1A1;
	Sat, 13 Nov 2021 20:23:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B76044E58F;
	Sat, 13 Nov 2021 20:23:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADKNFZ0021859 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 15:23:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5700D2166B26; Sat, 13 Nov 2021 20:23:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5101B2166B25
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:23:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5EAE0811E76
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 20:23:12 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-163-xuEKjKKCPfqANnNPCT50WQ-1; Sat, 13 Nov 2021 15:23:10 -0500
X-MC-Unique: xuEKjKKCPfqANnNPCT50WQ-1
Received: by mail-qv1-f46.google.com with SMTP id j9so8566881qvm.10
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 12:23:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Nej9EXkVhCFujXa9V3LnAetSFYrky3b25dSaUm/3R88=;
	b=fWu+vnxqTdnGS2J8QNy8wJQY7jHVHyJmAkycJik3sgyY+tprxVfwdmBeUDnREvy4uJ
	+d2XY8CfosMADyMopr2mVI/KynCZA+ue4PITBa2/ITwv1rguzDHuY+7DBWSffRd4AjzT
	Bo6u+mzp26Ro6glnO/N9pJmpSDoYi6ngbq0THoKLCM84GoM8kUmHWgaVQ8uzgV8pv9r8
	FJ7+pI/suMTPx5RSmLx0EutXQTRxAnDDTzQXCXwwBgrkv8C32W4Uy+hCl6SgMO7kXw8P
	FcSsgeYCRA0tHnMZFO1HPVKU8nJIGMaQ/LVY/WxPXLHA0pSKyC0DqsiTO3htdERZk9z8
	/T4Q==
X-Gm-Message-State: AOAM531A6R/YN6pthWd2YU5eXn13GZIRAl19Ibfm6A5aZPR9HDIyOmG8
	cHNOYElPHz6Hybr72g2JdFB9FeBrg5A=
X-Google-Smtp-Source: ABdhPJwbnH993jNrzmtUqJoatxI6Lhr0ZxAczZxc8TdHq5cw8vckNfOgAHn6MchjeRd85XsOICqofA==
X-Received: by 2002:a05:6214:1c0b:: with SMTP id
	u11mr24533227qvc.2.1636834990130; 
	Sat, 13 Nov 2021 12:23:10 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	h68sm4498077qkf.126.2021.11.13.12.23.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 12:23:09 -0800 (PST)
Message-ID: <32965805-ab69-0a83-37c0-b1a86b281e80@gmail.com>
Date: Sat, 13 Nov 2021 15:23:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
	<fb7c47d4-620f-b25f-e018-619dfde616c7@gmail.com>
In-Reply-To: <fb7c47d4-620f-b25f-e018-619dfde616c7@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

LOL lazy gui person. I must say I'm a desktop user, but I'm not lazy, I 
find it more productive in most cases. If I want to spend hours upon 
hours reading man pages and other documentation just to read email, then 
I'll use the terminal. When I want to really get something done, the 
MATE desktop and graphical applications make me productive, not lazy.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

