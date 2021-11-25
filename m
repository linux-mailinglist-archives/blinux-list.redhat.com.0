Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5506B45DD85
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637854389;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ou0xrT3J3jUryWdK7IYycSfeALb9PXF/QDEIDBfsLN4=;
	b=SAbSAJxC7sgl1pLRp4Zb5+hahTFpPzRoDDB0mByPnGyDDL8wozEbnGvxtJYRHysYAiOwp8
	jynjpgpi7uHfnr/rb8XVPoja19PF3wrCr113PaxWZmPLORHkdpxQkTr02cnAbMuA1Mk1Eb
	LK7KlOmwRbN+srTSavn1LlfHiG2QWyA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-481-uF95uCmINsGcyM00JvkmSQ-1; Thu, 25 Nov 2021 10:33:08 -0500
X-MC-Unique: uF95uCmINsGcyM00JvkmSQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3D1510151E1;
	Thu, 25 Nov 2021 15:33:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADE345D6B1;
	Thu, 25 Nov 2021 15:33:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0421C1809CB9;
	Thu, 25 Nov 2021 15:33:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFWxS1012586 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:32:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 44F0F2166B25; Thu, 25 Nov 2021 15:32:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F67C2166B2F
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:32:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6148E185A7BA
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:32:56 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-379-WAzqk1mTOcSjRCpum6rPDw-1; Thu, 25 Nov 2021 10:32:54 -0500
X-MC-Unique: WAzqk1mTOcSjRCpum6rPDw-1
Received: by mail-wr1-f50.google.com with SMTP id b12so12491356wrh.4
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 07:32:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=YKrPH7hq2v06FEXXb6L7m+etRz/FVoavScqDepPV02M=;
	b=YdSHsHlK/8IxLQ0JBFs+Mo7lq29lDu7IRzox5CAGND3HOA2IYG+yaboDj4FrObJOPW
	RV6o+xZnm5KhSwumZs8Sm1SfmdQDRQiG3K6qV58qtfiWYWxdbY5/Ofqh6Jnu7ZQL3YO0
	77aRiZwjiNP7URfNI45N6l71+TDseiWOX6/wKgUa0f7znJleEGZ/1USspLUbkUMhuuFM
	6UR11l20E8duFxZ4WlJ2uEJxrErpO3XoG//6r0n3i5qy/TK4oTbRVPU42qxC0LLXFF45
	/wsRSfs6h/X30bPZxJGZgYwBQaiZZSkZJzYn295WuUVC4q2rcxbu+gmatMEC30FV02SJ
	IS6Q==
X-Gm-Message-State: AOAM531+H9qoqpptpKgqsdE/0AmfKVzl0YDgEA2Y1ZJ2QG7hM7pfVc1i
	xLF/Hw0R9VEWz7jZjmq8IUa79FN9c3ZbjQ==
X-Google-Smtp-Source: ABdhPJxx/79Poq5XpuLAPUSkJQ6trOvzipKQT+DbTNxZVcLB+llfCJzSlWPO68yUG8x+8WypABiM9w==
X-Received: by 2002:a5d:668c:: with SMTP id l12mr7687641wru.19.1637854373245; 
	Thu, 25 Nov 2021 07:32:53 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id p5sm3197447wrd.13.2021.11.25.07.32.52
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 07:32:52 -0800 (PST)
Message-ID: <f3a34b82-35cf-fce3-dfbb-263900ee6ac6@gmail.com>
Date: Thu, 25 Nov 2021 15:32:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<8901a934-19f9-f008-74c9-e48f00296f9c@gmail.com>
	<ca9cd873-a4ea-a98b-a926-015f91528a7f@gmail.com>
In-Reply-To: <ca9cd873-a4ea-a98b-a926-015f91528a7f@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm not sure if anyone's reported it yet, I don't have nearly enough 
info aside from this is what I'm doing with qemu and this si what I get, 
no detailed logs or anything and only you and Didier have run into 
things...but you sending in a bug report can't hurt right?

To add to the weirdness....once installed, even when booting from the 
.iso I don't get any sound at all however even after verifying it's 
booted from the image correctly. There's something odd going on with 
virtualizing and my setup and Fedora

On 11/25/21 15:11, Linux for blind general discussion wrote:
> Oddly, I got no sound using both Workstation and MATE-Compiz 34 isos 
> in qemu. This seems like a series of bugs with pipewire and/or 
> wireplumber, they don't like something having to do with 
> virtualization, either something with session management that is 
> different somehow or the virtual sound hardware implementations. 
> Either way, this would appear to explain why most other distros run 
> with sound on a vm, and why Fedora has sound on bare metal, but it 
> doesn't get sound in a virtual machine. Most other distros are still 
> using Pulseaudio out of the box and either haven't yet packaged 
> pipewire and wireplumber or haven't yet made them defaults. As most of 
> the time this kind of thing is tested on bare metal, vm bugs may take 
> longer to find in testing, so this will need to be reported on the bug 
> tracking system if it's not already there. I can take a look and 
> report the bug or either add my findings if it's already reported.
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

