Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 925C341BD81
	for <lists+blinux-list@lfdr.de>; Wed, 29 Sep 2021 05:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632886540;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/6G33ITWzbFAU2fKTKefB+DAzXHG3pz6VZjTa86l5Jw=;
	b=gLam3NdKcesnD+ktD0xPBls5T8tRbNmfEHehPUcngADPbTqAVIr0LWsBvWRl5JO3jzX4Uy
	trtBflf29SN2ZXecbA9iquOLrED0OmdbHR5oF3c5hJ6ShrdSHbn7EpQwd3fLe1G9nRShNw
	lrTWb211LMAHZzNz2NhFlf7xJ7LJGOM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-QY2vtg3iMS6cLakPBGwqXg-1; Tue, 28 Sep 2021 23:35:38 -0400
X-MC-Unique: QY2vtg3iMS6cLakPBGwqXg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2340E1006AA4;
	Wed, 29 Sep 2021 03:35:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3813100164A;
	Wed, 29 Sep 2021 03:35:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1C1C01800B9C;
	Wed, 29 Sep 2021 03:35:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18T3Z4SN007772 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 28 Sep 2021 23:35:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1B46F1008B99; Wed, 29 Sep 2021 03:35:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16C4911457E7
	for <blinux-list@redhat.com>; Wed, 29 Sep 2021 03:35:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6ABA918812CB
	for <blinux-list@redhat.com>; Wed, 29 Sep 2021 03:35:01 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-168-UQkSma3JMYyT69PANq5Iew-1; Tue, 28 Sep 2021 23:34:59 -0400
X-MC-Unique: UQkSma3JMYyT69PANq5Iew-1
Received: by mail-qk1-f179.google.com with SMTP id f130so1034568qke.6
	for <blinux-list@redhat.com>; Tue, 28 Sep 2021 20:34:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=+mIvLwnnPloWHZQgfBDuNRt697WE8qOtGlKaeWsfjsU=;
	b=V2HdSC8fIA8EczabcP7XlyKPAQtVKoUGKUAadnvOHKQQh+4HGzo2lZF45wjPB+0nzl
	LlCcmpj62r8gh+783QHK9nl5emccCch2/LKXF/+NZ1GD7PMkq7xRip3s2pPHtZl8UGb4
	9lYuLTtS70JV3Rk1vtEVDmXFDFbgT4Uuvbk2L4ZPCPGmFtGou/Vfuh9HOeRzcNU1FbWA
	RrpSmnp91r4N1n21lGkRQkcpONdZXPK94vMoqm11XSGcJLNERcxaxfogQUcF0hKi2Txa
	WdyFdIPpZrT9rzme1Src2B/EVysaEikAoskrppso6euankIsyD99uOpCRomhpwfFe5o/
	bgZw==
X-Gm-Message-State: AOAM531RSd4TYkQgFiCUMz3xIyjDLAbRdotEVUDBZDXzRxfg+TlcLnr3
	ABFEe6pFTORn5r9Zl87zQypn7zN7yxQ=
X-Google-Smtp-Source: ABdhPJyRbtO0tAsXqHhFIlYrXWkg1Fa4pyS/6OGM37gj82+UI1/x6mgDwyeOQmtSrrASj+qdDCThtQ==
X-Received: by 2002:a37:8a44:: with SMTP id m65mr3399269qkd.72.1632886499089; 
	Tue, 28 Sep 2021 20:34:59 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id o16sm888404qta.54.2021.09.28.20.34.58
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 28 Sep 2021 20:34:58 -0700 (PDT)
Message-ID: <d4cc05d5-7a39-d55c-32b9-e1577393b0b8@gmail.com>
Date: Tue, 28 Sep 2021 23:34:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
To: blinux-list@redhat.com
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
	<A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
	<CAO2sX33YfZE7V_8X4TAf7vqidQWg9nG=0WX_nP8LnK94UjYveg@mail.gmail.com>
	<YU89I8OoeDJ1edP5@rednote.net>
	<CAO2sX32bc2TRMJ9N7=FA8zeFfyy=-YauhztKzxUKSP1v3ca=hg@mail.gmail.com>
In-Reply-To: <CAO2sX32bc2TRMJ9N7=FA8zeFfyy=-YauhztKzxUKSP1v3ca=hg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Of those options, the G7 Power will give you the best battery life of 
just about anything, but the G7 Play will give you more internal storage 
and I believe a faster processor. I'm running the G7+ here, and my whole 
family has them actually. This is the 2020 model I believe. The shorter 
battery life in these is offset by the fact that the phone can be 
charged from 0 to full in about 1 hour, and lasts pretty much all day 
unless you watch a lot of Youtube. These say they can take an SD card up 
to 128GB, but i successfully added a Silicon Power roughly 230GB MicroSD 
to mine, and those are available from Amazon now for about $23 to $25. 
Both of these have headphone jacks as far as I know. I'm fairly certain 
that every Moto made to this day still has one, although I can't speak 
on the Stylus, since I haven't actually seen one of those yet. In any 
case, Moto is my go-to brand these days, as they give you the most 
features for the best price. You will want to purchase a case for your 
phone, no matter which one you get, because most of them are pretty 
slippery these days, and a good case can be had for $10 to $15, so it's 
pretty much a no-brainer. I hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

