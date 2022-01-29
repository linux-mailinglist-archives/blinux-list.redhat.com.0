Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7966D4A2E28
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 12:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643455240;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gxaBKnrTqj38VE6LSPA0+8rVedwnf2VIhfi89a8AvFc=;
	b=P0WdP/MxKxx3wabWnQz/wtAzh74QtEoe2Mvkbz5VPxqRHqMZStfw2xqQ9Fcb/da18OClQE
	jePbJ/+EGAN/N0vDXT60cggLVj5Nf78sLB5+fUtjB0GeOj+BZU4ijiNqZ/qwrwnZMkiPB6
	cSZFhuqu9lkGlRP0TjQyXteVMAtmmCs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-EMHQpghbNBetkSUt8R1t1w-1; Sat, 29 Jan 2022 06:20:38 -0500
X-MC-Unique: EMHQpghbNBetkSUt8R1t1w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E708A814245;
	Sat, 29 Jan 2022 11:20:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FB377B6CC;
	Sat, 29 Jan 2022 11:20:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B0CA1809C88;
	Sat, 29 Jan 2022 11:20:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TBKD12006688 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 06:20:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C2FD5492CA8; Sat, 29 Jan 2022 11:20:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE579492CA7
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 11:20:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A33893C01B83
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 11:20:13 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-590-LfuzcILON-yyhqW76FEJdw-1; Sat, 29 Jan 2022 06:20:11 -0500
X-MC-Unique: LfuzcILON-yyhqW76FEJdw-1
Received: by mail-ej1-f50.google.com with SMTP id s13so25339798ejy.3
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 03:20:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=z3RdcVcHfgYenfx8ff4fNrGwZRVkMKvE34bUzsjuEhg=;
	b=EyKmWTs4IHjWUoSGK2OPSXYWJg8MAAufI8UAA86qi9Q3dexLvfhxstKUUixRduHPpE
	sJyJBehvmPEhe5zVAMuKxrhK/GbiiBN8wyOhPYyAwa6S+tFpic4nU5cTFvGeHIBCfGwx
	f1mxlkyT0SPE2RXgBmTUilRQ8dDbRUyYyQFHZZaabgbaQWcoR78pMv611yX8yUO5grNN
	xQgP6A5KU/BHzR70jooIzsOogzqsPK/L6qaGjloIkK6NA8NLHutCTI+I9PfmTNjsNskb
	MgPFpCWIHGIuhNoGoWg6X5EnVTS6ad8ZXX6ynZ6DpMomD+/4iwj7H05M1BCoWK27qUTg
	Ix2Q==
X-Gm-Message-State: AOAM530XX4DUsA5Ntye61ewClQX0AYrJpAWYaeCw8UD7+paMZWeLFvNg
	4AErk1qn018Cj23j+kirU1HKMUSw6EkgAA==
X-Google-Smtp-Source: ABdhPJzkWhQ4v5BpUKa6Xr2zRwbXHSLrG0JQCojupzIp/anpGiC4W96dkY1/SB/TVrdXDT7g2QfBZA==
X-Received: by 2002:a17:907:6096:: with SMTP id
	ht22mr9956084ejc.611.1643455210243; 
	Sat, 29 Jan 2022 03:20:10 -0800 (PST)
Received: from [192.168.178.28]
	(dynamic-077-183-225-123.77.183.pool.telefonica.de. [77.183.225.123])
	by smtp.gmail.com with ESMTPSA id
	lc22sm11014959ejc.74.2022.01.29.03.20.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 03:20:09 -0800 (PST)
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
	<20220128.190302.486.6@[192.168.1.100]>
Message-ID: <1c8b1a72-b4c1-f8bb-714d-68d0c7bbfe79@googlemail.com>
Date: Sat, 29 Jan 2022 12:20:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <20220128.190302.486.6@[192.168.1.100]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

OK, thanks.
Greetings,
Wolfram

Am 28.01.22 um 20:03 schrieb Linux for blind general discussion:
> the say command in the voxin package has a wave option.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Fri, 28 Jan 2022 19:39:09 +0100
> Subject: Re: Converting text to mp3
>
>> Hello,
>> is there a way to use Voxin for that, too?
>> Greetings,
>> Wolfram
>>
>> Am 26.01.22 um 18:21 schrieb Linux for blind general discussion:
>>> # convert text file to wave
>>> espeak -f file.txt -w file.wav
>>> #then convert wave file to mp3
>>> lame -m s file.wav -o file.mp3
>>>
>>> On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general discussion wrote:
>>>> Hello,
>>>>
>>>> is some way to convert text file to mp3 files and option length of them? In
>>>> Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
>>>>
>>>> Thanks a lot and take care.
>>>>
>>>> Best regards
>>>>
>>>> Vojta.
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

