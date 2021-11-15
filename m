Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A39045081E
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 16:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636989575;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KhLGUXh42g+ZobTDwvIPV4E7L+QnzbI80rTr5GWuGSU=;
	b=GKX32dSjhRfRFMhz7dVQo9OCeO7Oa8WZd0d5dgmm4q9SfHFBfHVG7VwaBc7c1bEeqILTsZ
	q6rZg0aO7d0s3Sq2EPOET7uflcKnviVmrIMPy/qLLG8FF6fUSQx4Uhi26l68BVPCUUG1L8
	1PUE/AGsaAQKrfmLyHmpj6wyCYistsI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-N2cSbDjwMYW0STm9xx5BVg-1; Mon, 15 Nov 2021 10:19:31 -0500
X-MC-Unique: N2cSbDjwMYW0STm9xx5BVg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76F0BCC621;
	Mon, 15 Nov 2021 15:19:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 783E05B826;
	Mon, 15 Nov 2021 15:19:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C11C4A702;
	Mon, 15 Nov 2021 15:19:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFFJ6be022937 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 10:19:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 52FBF2026D11; Mon, 15 Nov 2021 15:19:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A1F32026D2D
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:19:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3DD10801212
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:19:03 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-544-5vZgczCDM9uzZHC5uKg4zg-1; Mon, 15 Nov 2021 10:19:01 -0500
X-MC-Unique: 5vZgczCDM9uzZHC5uKg4zg-1
Received: by mail-wm1-f48.google.com with SMTP id
	77-20020a1c0450000000b0033123de3425so16163410wme.0
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 07:19:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=9tz3HC5GAQ+dsn2/LchjMIHcHMCxmi2aAHUAVxflCLI=;
	b=npxoqtfPvDpeoRqOMxQGhRBd0tawLxqKMFLQmmDkpxpAMm+pKWQ8p5UueTSX7krPPf
	qOnNMYeCqidOFkwXxgvPfoxPiMKbwOIvbzL+at9AtoE1V6yagxD7hLIAZ6ubzDrFDW9M
	evFydh89W1m50dkjttRFm7Wvh1gJsbx3OMtaJZqEuLEzHynH2IxdBLza9uipgN0w63o2
	RYIXYqAUEL8fjtURtqFrNopKMUDRhxwKS6SDtLEOoVJe4d3o7Fl3CsyufphskGin/SdP
	VWS4AlFtm7ysEOTaIcXj7nsWTU/V/d69KjJz67vXV98woqBqbppVALQMQ0RRQG1ZJLvr
	AuOQ==
X-Gm-Message-State: AOAM5328D7QNArvHpJPDN4BFA8I3hDM6udY1GsX6gc0mbdPUm6RjuhZf
	xUGhvwPgYNMMWTXtt7K5eErE5qDjHHvImUUe
X-Google-Smtp-Source: ABdhPJxztHsfa/hVDHofJFoPChcHwBjo75RfLkotgJer95oOoi+cigM9j4/JtKVLLOiZbRgAUAj/Qg==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr60988957wml.80.1636989539596; 
	Mon, 15 Nov 2021 07:18:59 -0800 (PST)
Received: from [192.168.1.130] ([90.254.199.66])
	by smtp.gmail.com with ESMTPSA id
	h3sm14407031wrv.69.2021.11.15.07.18.58 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 07:18:58 -0800 (PST)
Message-ID: <e7972124-81a0-c317-6b97-5ae6dd1fcce3@gmail.com>
Date: Mon, 15 Nov 2021 15:19:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
	<alpine.NEB.2.23.451.2111150036130.24447@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111150036130.24447@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Speaking of Thunderbird...what's the easiest way to import from Tbird 
into Seamonkey? I'd like to have all my stuff in one place, really...and 
I like Seamonkey's interface more than Thunderibrd...so how would I 
import from Tbird to Seamonkey?

On 11/15/21 05:37, Linux for blind general discussion wrote:
> nmh is available though that's a very different email philosophy from most
> of the rest.
>
>
> On Sun, 14 Nov 2021, Linux for blind general discussion wrote:
>
>> I'm not sure about other distros, but on Fedora, my Seamonkey does have two
>> menu invocations. One is the mail application and the other is the web
>> browser. Both are located in my internet menu on my MATE desktop. Seamonkey
>> mail will import mailboxes directly from an existing Thunderbird installation,
>> and I am finding its accessibility with Orca to be quite good. Since I believe
>> Seamonkey to be based on somewhat older versions of Thunderbird and Firefox,
>> you may not see the calendar options, as you once needed an extension for
>> that. Chat is also a separate invocation of seamonkey, so it shouldn't be in
>> your main mail window either. The only thing that may possibly be considered a
>> drawback is that opening a link in an email message in seamonkey will open the
>> link in the seamonkey browser instead of the browser you set as the default.
>> So if you want to open links in another browser, you will need to copy the
>> link address to your clipboard. Other than that, I can recommend Seamonkey as
>> a pretty good email application. It's not actually a bad browser either from
>> my experience.
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

