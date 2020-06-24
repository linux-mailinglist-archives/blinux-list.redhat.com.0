Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E2FF9207CDC
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 22:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593030245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9oj/mTatCBph46hdaqW0GHkOixswRE1zl6qQ43hioC8=;
	b=UsoDm63eQoExQrDpvzdUNvS5CcE6yRjBpYkasR3h512JKh3LQP37jQHUbk7uzmNdqCbDMx
	/aLIVXnfOAnipoSjI1vfNyTm12ygmEtnmAmyCbWlwrpGyJenlxYKUuV4TGDSGSCwpbDNOs
	M0y4Ltw9NyYjWVlOwn/bn0vQ3UOsU+Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-BGnxYf_bNV2vHleN8F8L9w-1; Wed, 24 Jun 2020 16:24:03 -0400
X-MC-Unique: BGnxYf_bNV2vHleN8F8L9w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EA1D80402D;
	Wed, 24 Jun 2020 20:23:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F1F05D9C5;
	Wed, 24 Jun 2020 20:23:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 512F5833D3;
	Wed, 24 Jun 2020 20:23:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OKNm8B028519 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 16:23:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0559A1007381; Wed, 24 Jun 2020 20:23:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F42381007A50
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 20:23:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 951D6800883
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 20:23:45 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-292-BH_gahhTOXqS7cgo5XroSg-1; Wed, 24 Jun 2020 16:23:43 -0400
X-MC-Unique: BH_gahhTOXqS7cgo5XroSg-1
Received: by mail-ot1-f51.google.com with SMTP id m2so3155053otr.12
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 13:23:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=Eq1YEZDHnb+ZjZ3lUuxBx3AkuYWbGMEGJ5+OyZ8r4DA=;
	b=L87S6HKFmjHXCzu2VuqpvDjsvs3IEBj1ZZLLpeuMaYbP03uCIMTtpYvXnLMK/fF7rc
	ZJxXl6MZjPetBR7ixtsnFPv3IHhGwKSC/LkG96arr77GiwSlyE4POP0TVb9x6NwTf44w
	a9/TUSNkJOipbkJlNECZHRM5FyTHVMECsP7QfdkAIbnq5TJhSrrXf9Hl5xIxjTXOqL4Z
	Jn+uJ1bmMyw4i1rqYWf5IP1ZRZ9u1N1edVF5YOHcgnIo3rlurm7n+Hve/VnIt3LqZMGZ
	DjNPu/2QKatawtCRKaA8vD1ri4uNxMj2ucq0ACWO432okmGSr7Z/y9jMCABm3Zr74Eac
	1hmw==
X-Gm-Message-State: AOAM531/4RRbkg25FOkMtpuNLBsnKjw9Fnb36nQwfK6vJEVO8j6Xk4hL
	djbpFMs0hGOHk494WIpkzgHvdyY3C8M=
X-Google-Smtp-Source: ABdhPJx5GSeyU9j7GMFzrUqZ8BUTrV47Gzo/V8J5xlH/pEO8r3Rq2UiEi3WiVJbpVy0oQtMr6pJtWg==
X-Received: by 2002:a05:6830:15c3:: with SMTP id
	j3mr737521otr.353.1593030222097; 
	Wed, 24 Jun 2020 13:23:42 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:e1f0:c8d9:da89:32dc?
	([2601:3c2:8200:9360:e1f0:c8d9:da89:32dc])
	by smtp.gmail.com with ESMTPSA id o16sm2639255ooo.7.2020.06.24.13.23.40
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Jun 2020 13:23:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Wed, 24 Jun 2020 15:23:39 -0500
References: <EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <20200624120822.GG2690@rednote.net>
Message-Id: <83CB53E7-F6D3-4B37-BA8D-EE7DBA340BF8@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OKNm8B028519
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I will be happy to read about how this machine is for you.

> On Jun 24, 2020, at 7:08 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> OK, we're not quite communicating here.
> 
> System 76 systems come with Ubuntu 20.4 pre-installed. You want another
> distro, you pop in a usb stick and go for it, or launch over ethernet.
> 
> Asking for optical drives is a losing proposition these days, afaik.
> They're very yesterday.
> 
> I should be able to give yhou direct experience in a few weeks. I
> ordered my fully loaded MeerKat earlier this week. Delivery is around 3
> weeks.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
>> While a machine coming preloaded with Linux is nice and at least means
>> not having to fight Microsoft's latest attempts to dig their claws in
>> and make nuking the copy of Windows I didn't want and installing Linux
>> harder and means a better than average chance the hardware is fully
>> compatible with Linux and won't require proprietary drivers,
>> personally, the more important issue is whether a machine is
>> configured for optical and/or USB boot out of the box so I can just
>> install whichever distro I want and configure it from scratch without
>> the hassle of tracking down a monitor, a willing sighted assistent,
>> and walking them through the process of fixing the boot order(because
>> as hard as finding a sighted assistant is, finding one who actually
>> knows their way around a BIOS is even harder).
>> 
>> So anyone know if System76 or any other pro-linux PC makers ship
>> systems I can just pop an installation CD/DVD into and run an
>> installer on first boot? Or have all of them followed the mainstream
>> into the insanity of disabling all boottable devices that aren't the
>> primary harddrive or placing them so low in the boot order they'll
>> only boot if the system drive is borked?
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

