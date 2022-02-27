Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E35F4C5A11
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 09:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645950380;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i6VZv+jZjgOAJVP1d3Nyn43E+Fc7OSxwuyADw/mI8WA=;
	b=QDH9rpPdVpKW7nYqAR/8sbcFwuhwbb+Q6+AsjLHrWrA1I65VuQY2anOeVjthOtb5T7kIw1
	Vo82ikhPQKVA2jMwAg23ktyVuFADUJtQ1xSz/Y6qZD3BmhElo56CJEjhXjlKxuabuCLx+8
	sRCf+ytG5MEweqargVUD/ZbQmdQdFCY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-hUwNDDTLNLaYa11JBHpHlQ-1; Sun, 27 Feb 2022 03:26:15 -0500
X-MC-Unique: hUwNDDTLNLaYa11JBHpHlQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DD17800423;
	Sun, 27 Feb 2022 08:26:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84EFC1037F41;
	Sun, 27 Feb 2022 08:26:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA7B61809C83;
	Sun, 27 Feb 2022 08:25:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21R8Pnd5025773 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 03:25:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 87F247AC8; Sun, 27 Feb 2022 08:25:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 817F27AC4
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 08:25:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 571AD3C153BA
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 08:25:45 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-141-o_FFnnvwNMObIu0lC7fwkw-1; Sun, 27 Feb 2022 03:25:43 -0500
X-MC-Unique: o_FFnnvwNMObIu0lC7fwkw-1
Received: by mail-wr1-f53.google.com with SMTP id s13so10794998wrb.6
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 00:25:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=z0GML6V1xzOEtkUCbsI34cPkfEM48GzjW+5gSepY/Vw=;
	b=E3qJwLlH9up0UosKwdLXXnXK4j4bOUrPSbxZXpzyhjJUdLosjMLhfceYMp4vDtJwg8
	CcWWzs1+Tiv6N+4770kpE05v76k6gO6kVPdNT1D1uuClPfMUn5PQdauBsMUpVAf24WWg
	xvBng6uBllgLckxN07TehSrLfOv+y+euHvrihk+7+bCBGJmsYbdj5M2rAgHKX+ZAUoDY
	a9qedbZ7UUNkAZ8HNOGhFUDaZRoKnWUtni4VRD2xICOoyhB1TED3iDXTw13W1+aXUksp
	bExgh6yIU58XClmps7KmL/ZpzbLC9LQke8EbtWZKscg7z3pmRuCfAgrhRAi1QfTA+R4C
	9BGw==
X-Gm-Message-State: AOAM531wOK9/0JmB5zojWo/ZJ/m5AIRkuuw3nNBhuT3kSaRkqQeAXd08
	dm28kct2fkOjAWcenq2tUKbmUHShNEcoDg==
X-Google-Smtp-Source: ABdhPJyfe71KLFkYFEPRv7LM8avRUhgubDmSL/AXVdc6ygVWybCpr0tpk/yKII1cu5+MibYJneksgA==
X-Received: by 2002:a5d:548b:0:b0:1ed:e0b2:188c with SMTP id
	h11-20020a5d548b000000b001ede0b2188cmr11679172wrv.122.1645950341682;
	Sun, 27 Feb 2022 00:25:41 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	o22-20020a05600c4fd600b0038133076dcesm8059212wmq.16.2022.02.27.00.25.40
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 27 Feb 2022 00:25:41 -0800 (PST)
Message-ID: <8bd3c4a1-d001-3434-ce82-04967ad63c38@gmail.com>
Date: Sun, 27 Feb 2022 10:25:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Testing Linux distros
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
	<9a599fc5-a62-f1ed-94d2-a475ad65bd4d@panix.com>
In-Reply-To: <9a599fc5-a62-f1ed-94d2-a475ad65bd4d@panix.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have a 1 tb external USB3 drive which I will use then. Unfortunately 
it's not an SSD, but what can you do?


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

On 2022/02/26 23:51, Linux for blind general discussion wrote:
> A guess, you're not using an extractable ssd on that machine.  If correct,
> can the machine boot off an external drive in a USB port?  If not, you're
> left with kemu and the like.  If yes, and you can get a external ssd drive
> with usb connection put the testing system on that drive and replace it
> there as needed.  That keeps your main drive separate and you can use that
> for normal work.  External drive holders for the older type of drives like
> ide and sasi and scsi are also on the market though you'd need to get an
> extra drive or two for the holder.
>
>
>
> On Sat, 26 Feb 2022, Linux for blind general discussion wrote:
>
>> Hi all,
>>
>>
>> I am tired of having to reinstall my distro of choice every time I get fed up
>> of testing one distro or another.
>>
>>
>> How would you go about testing if, like me, you only have the one Linux
>> capable machine? Yes, I know you can technically run some distros on the M1
>> MacBook, but, just, no thanks.
>>
>>
>> I really, for one, don't like the VMware thing, and virtualbox is a pain.
>>
>>
>> I'm thinking qemu with virtManager, but would like some input. This is how I
>> run, only when really necessary, mind you, my production Windows.
>> Unfortunately I need it to do my work, so cannot kill the thing.
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

