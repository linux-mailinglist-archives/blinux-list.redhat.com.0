Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADEE461B32
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:40:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638200442;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2kowGGChAy6sxnjFbXe7BC556OHi/B7P1eGlZO95qsY=;
	b=SORcmyZ+vbf7rj+3gIl/EBduwn7NdiO2zWs7dRo96kXc7GtHi81vM6dPihqPrHmtlVmIE5
	CqEp7eiCnNrNNBQ+74fnpLldQLws10384F6PgOkMdXqoINQSEb8RXb3gTR/U/UvZflk4Ax
	I1tLaOr7WKhM0AxMBbeI28XACtVQ3aE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-nEcmt7qAMjSGFetHja2FsA-1; Mon, 29 Nov 2021 10:40:38 -0500
X-MC-Unique: nEcmt7qAMjSGFetHja2FsA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB6D01934101;
	Mon, 29 Nov 2021 15:40:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BD785D6D7;
	Mon, 29 Nov 2021 15:40:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C9DD4BB7C;
	Mon, 29 Nov 2021 15:40:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFeRA6011928 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:40:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B21F71410DD8; Mon, 29 Nov 2021 15:40:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD9471410DD5
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:40:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92CED811E78
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:40:27 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-599-GwWJvrKeNRWew6CDMj9otA-1; Mon, 29 Nov 2021 10:40:25 -0500
X-MC-Unique: GwWJvrKeNRWew6CDMj9otA-1
Received: by mail-ed1-f41.google.com with SMTP id r11so73789059edd.9
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:40:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ZTx/48Syug++PRLNE4tXn5R2JidpK2443xc/jmi3xRY=;
	b=JaeCHc3i4BwhtJMbLgD+Kns1gp7BuTRer2QyEp2kB1g6JxNe+06/xwwYxdLouU7Jjx
	VyCVh0Lg71Wxamx5qFExFR06EBSzztM4qnVOoVl8+G4g4jjYqT1akQkl4+I3aWqPFEsY
	oRhhSJQLy0FfxLMD1UjS4UYG/6Cu7soyUgllWLYORddpwq3IWodhaHQwh5WWI+Yltr5R
	7UVYLJBmmOUWs4dhjm9qu+OQQ/k4tIrGKekXFElEAJqtGjcVsWCjGKjpq/UGjo13RQiX
	xa/z3Zsy14fyVEDwmS3mSI6Q7x8wYM9+TfvgBzj0aMGuUDtM9FOU5bm55Ga7M03dcdLk
	3Deg==
X-Gm-Message-State: AOAM533o21rs/TNW69uo0DFvsbyO/ruVOh3Vl+VqwxutwborOWp3vv29
	Ot57IKqOO2Egkw07DhZtZKSi7AlEAQYQCw==
X-Google-Smtp-Source: ABdhPJyzVcnJEFTC5dxjq5ij4fZ3DOe/f2EGFXry2QClSf/MEq/ggHUXgJ1tTTR2fLMk1P5aH/c6Ww==
X-Received: by 2002:a17:906:3b18:: with SMTP id
	g24mr61683136ejf.27.1638200424265; 
	Mon, 29 Nov 2021 07:40:24 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	b11sm10280602ede.62.2021.11.29.07.40.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 07:40:23 -0800 (PST)
Message-ID: <9fa55c55-42e2-c4e8-2ef1-21ccd5cf9259@gmail.com>
Date: Mon, 29 Nov 2021 17:40:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: --force-renderer-accessibility not working lately
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
	<4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
In-Reply-To: <4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ok, interesting, after rebooting my system it is working as expected. 
What the hell?


Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

On 2021/11/29 17:25, Linux for blind general discussion wrote:
> Do you have the right environment variables set? In my .bashrc I have
>
>
> export ACCESSIBILITY_ENABLED=1
>
>
> In it. That makes Chromium based things work on Arch/Ubuntu for me
>
> On 11/29/21 15:13, Linux for blind general discussion wrote:
>> Hi all,
>>
>>
>> I have tried this in both Slint and Fedora, and I've not had any luck 
>> making the --force-renderer-accessibility flag work with either 
>> Google-Chrome or Skype, both applications for which this flag use to 
>> work very well in the past.
>>
>>
>> Am I missing something, or am I just out of luck here.
>>
>>
>> Unfortunately, I actually need this to work, otherwise, I'll just 
>> have to use the MacBook to do my job.
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

