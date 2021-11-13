Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BCA44F489
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 19:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636828104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=scchMDsVCqSSRu+ehZBTFh9WKDFHK2zT7lFwemPU4fI=;
	b=V+xN6eS8TWLxoppgfKRf2HHv035pLN+AzI7Dmw/BVN9Qvw2FnVxYudflYg6dFOkxpdVmk8
	4eT7CeErFAf8Ws8QAYAX3nTL0CdkPf5cNHfWoOLiAC7UZqNInMdC9k3aA+Vtg+xpY2n0eg
	5d0pWf05WrBs5hCnn4/Hkza53OyiFlc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-k11hl13TNmedsC_BnL2lXg-1; Sat, 13 Nov 2021 13:28:20 -0500
X-MC-Unique: k11hl13TNmedsC_BnL2lXg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79ECF802B7A;
	Sat, 13 Nov 2021 18:28:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B22135D6D7;
	Sat, 13 Nov 2021 18:28:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E0304A703;
	Sat, 13 Nov 2021 18:28:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADIS5Tj011999 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 13:28:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B29DD2026D64; Sat, 13 Nov 2021 18:28:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACFE12026D48
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 18:28:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C94B9801212
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 18:28:02 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-317-KWOBsgkjO-m1tKB21tWIQQ-1; Sat, 13 Nov 2021 13:28:01 -0500
X-MC-Unique: KWOBsgkjO-m1tKB21tWIQQ-1
Received: by mail-qt1-f176.google.com with SMTP id 8so2016479qtx.5
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 10:28:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=gUQikNvdwu7i6D5E8jixXr5YKJWaWEjd8Z8kPbBoo/A=;
	b=hy87dohxZbjlY571vrEcGjn2pndnQn7RFZsYhWG39J2KUcaIEuLDpjzLICEtRbN8Hk
	XdEtmvog3AHHS9DWfMza0ekmWUWY6e6xEI0JqaSuM95rCgH4nsu1kNO0B+H47cUUfnqN
	jmENDOxoY83G5KnVEth4+GkL3IgtmLYWGivb3XN4FKcHS4CyZnTEuoUcynIMxduR53g3
	WpQIm0Jyhu1WTUEcOSraJWTaQAyeHeZFdI3VLbLTirJU6br1GQWFrn+UOKM3MsbINbjr
	mmFBSC3smyU6kgefWKycjBE9AKaSL2ixyU0eLxJlC2+PcHuDRyC4U0Zs4fr95v4dC4eo
	ceAA==
X-Gm-Message-State: AOAM530btdmrDoaAFbNDq2Of9YMkADtZVn7GfWU1hQcxOzyat26kT2Je
	M9V5YMoC/6AExyi1H5W4eI9/FAPU59U=
X-Google-Smtp-Source: ABdhPJwIRoMA6tN+UOWUxj5tx3fdPmcqGl6QwPFIKUlOxAWMZd9OjDfl+2goyqD6aWpC8LnjV2QbPQ==
X-Received: by 2002:ac8:5956:: with SMTP id 22mr25536235qtz.277.1636828080139; 
	Sat, 13 Nov 2021 10:28:00 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	bi39sm4411514qkb.127.2021.11.13.10.27.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 10:27:59 -0800 (PST)
Message-ID: <07fbe018-aee8-bad0-b52b-5e3e3d6d7c32@gmail.com>
Date: Sat, 13 Nov 2021 13:27:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<4c8cbebd-3e7b-6ec3-6159-42ec37c53da6@gmail.com>
In-Reply-To: <4c8cbebd-3e7b-6ec3-6159-42ec37c53da6@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sylpheed is usable now? As I recall, the last time I tried it, I 
couldn't read ... something ... I forget ... I think it was the list of 
messages. I had the same trouble with Claws Mail as I recall, and I 
wasn't able to read a message body using Balsa either. The only email 
applications I've gotten nearly fully working with Orca are Thunderbird, 
which is by far the easiest to use, followed by Seamonkey with the 
--mail flag, followed by Evolution, which mostly works, but does have a 
long-standing bug that neither I nor the Evolution developers have been 
able to track down, where parts of some messages are not spoken. But if 
Sylpheed is in fact becoming usable, perhaps it can get to a level of 
usability and screen reader access that could surpass even Thunderbird 
and Seamonkey.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

