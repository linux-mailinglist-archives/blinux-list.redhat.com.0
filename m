Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5384A003B
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 19:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643395190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RErhztgzXpfLHuxdIBTtOx+IhP0eYBewyHHRgtW96tw=;
	b=drX2Dt/ydPTqESorXVfHAA6FGHsBmiNSP9ZtpcO1/bPYmy03Fp8SQjwD6+tuKMX8Hrdb4C
	ZgKst1veD12PRmLdeZ3npZkDmEjJbhpzjfYpz9dHkYrAg4qyvL45oMFw9fh5aAOMjnMf+a
	HyJeVhmW5mbEJ4SLokPl8RF/CeU4KhY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-8DlBhvMePWqd7qbEA54Wdg-1; Fri, 28 Jan 2022 13:39:47 -0500
X-MC-Unique: 8DlBhvMePWqd7qbEA54Wdg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79CF11018720;
	Fri, 28 Jan 2022 18:39:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63A4184D1E;
	Fri, 28 Jan 2022 18:39:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F30B01809CB8;
	Fri, 28 Jan 2022 18:39:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SIdEoK006089 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 13:39:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4234E14582FE; Fri, 28 Jan 2022 18:39:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E09414582F7
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 18:39:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2477780029D
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 18:39:14 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-623-ouLO8lL3NiiQ3r2nveA6hg-1; Fri, 28 Jan 2022 13:39:11 -0500
X-MC-Unique: ouLO8lL3NiiQ3r2nveA6hg-1
Received: by mail-ed1-f41.google.com with SMTP id j23so11563007edp.5
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 10:39:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=KFjakThYcvLwA+r8IZfokZkZagon6Gm2oXmN2bEVGB8=;
	b=FUdexEIvbfvbanPiNynQhfHE7x6Zptuaw1Pynea5KBazZcaaQQM4WWqqHAO2POn/s2
	rmNFpXOvdtWGClxCjr2cb8zC/79o1bNPwNrkEV490+/sm5mEv5rH6b8/a+tgTkoq+lG0
	DOoakB7w4/aWl/L/+9M0QYXOVM2vJiBodwlmHjb2EgLe1RqvEBj0HU5lfuwqzSk5yFwR
	HbxpLh+0lsIJEZGAQVfI6u9X8MOv9Qkagtv3aW1C8/kCBvKTU2TJmgkeyyP+xPhQsWJ9
	pniV3ImIQfdSpcQJBZpqRDe1+yHjROp/0AULIBKagSD5fLUzv3iJoa+ofawZc3IWdZWx
	GCUA==
X-Gm-Message-State: AOAM530Q137n6r6vq4W46ZPur9XQ4wZ1mWQBNX5TJtXICqWg/ARxA402
	XTj04mlWBKqwuXMgVfqR91YR5Zm4H8LRdA==
X-Google-Smtp-Source: ABdhPJwR0neC26s+B0BrNXGB9gZeEmyYQsdG7hTZXOrb46ubxxDo9QD5DM9wJs6lLB5AZie1Wsjl4g==
X-Received: by 2002:a05:6402:7d0:: with SMTP id
	u16mr9567983edy.9.1643395150214; 
	Fri, 28 Jan 2022 10:39:10 -0800 (PST)
Received: from [192.168.178.28]
	(dynamic-089-014-215-140.89.14.pool.telefonica.de. [89.14.215.140])
	by smtp.gmail.com with ESMTPSA id
	u6sm10369805ejn.181.2022.01.28.10.39.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 28 Jan 2022 10:39:09 -0800 (PST)
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
Message-ID: <3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
Date: Fri, 28 Jan 2022 19:39:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <YfGDHwxeIwHdYMsg@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,
is there a way to use Voxin for that, too?
Greetings,
Wolfram

Am 26.01.22 um 18:21 schrieb Linux for blind general discussion:
> # convert text file to wave
> espeak -f file.txt -w file.wav
> #then convert wave file to mp3
> lame -m s file.wav -o file.mp3
>
> On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general discussion wrote:
>> Hello,
>>
>> is some way to convert text file to mp3 files and option length of them? In
>> Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
>>
>> Thanks a lot and take care.
>>
>> Best regards
>>
>> Vojta.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

