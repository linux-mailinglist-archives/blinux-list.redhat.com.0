Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B8A163EA720
	for <lists+blinux-list@lfdr.de>; Thu, 12 Aug 2021 17:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628780901;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y02+ak4arqN6hBC4OgEZoAZpkiwllxodOWbCGIVNfO0=;
	b=OrW4G9yZJfDTTpwsXx1Hai+GKX/g9DRqUAMzxx+uQTOvc3/0EAhokQLXJFP32lyk6giTrz
	TYL9SXnz0d+/i3xXvd3P7gOSWvLDiZmRBsn/GHCu27jIssQYwtGkyvnQUGHLaNx+95rBQd
	WujtY8wowUJ48JnESkzyWkzGQi3kI94=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-dGS51h54MIqnhQaF8O0kcw-1; Thu, 12 Aug 2021 11:08:20 -0400
X-MC-Unique: dGS51h54MIqnhQaF8O0kcw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8348C73A6;
	Thu, 12 Aug 2021 15:08:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08F8960916;
	Thu, 12 Aug 2021 15:08:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2917D4BB7C;
	Thu, 12 Aug 2021 15:08:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17CF7fc4012003 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Aug 2021 11:07:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 901C91050187; Thu, 12 Aug 2021 15:07:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B0D4105456F
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 15:07:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 885C3800182
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 15:07:40 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-457-4PXuUhB5NBqGVqLwKOSpsQ-1; Thu, 12 Aug 2021 11:07:38 -0400
X-MC-Unique: 4PXuUhB5NBqGVqLwKOSpsQ-1
Received: by mail-ed1-f42.google.com with SMTP id by4so10287449edb.0
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 08:07:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=se5KwodvYhJAYCDRqpb0ZT4p/053kUmJ+iXWGgmPtYw=;
	b=g3GxfE76aLEGfSMcJQx1k2KhygF82amsiwtnHnY+zzeof1grZtq1f/oVO/hpNFCm6X
	u70OSkjdihmi+LZ96kVvF/wFXmtNcq1Y9RXn3ksAZT+Ed65zpaJHB5RTZStfGhXtmK5N
	Irbw/9DwVQrhMt13WKqQmGM8mQ9QqHcVRNNFuTpjjCPwAsfgEofOOmBQlqmKRyzGUwMc
	hlSrhb6YlFP9X5KtxpfmpttoCYoX/Rv6RV8Y5F6pbdOi6qIucFsgYr1jbsKdqgQ8yzXQ
	l3G6Gz3EPMcmCUoMk2KtBJooJ+M7Ukvh0dscz7SU9y7dxl4OoGPPpuDr14Qf9mo7PQXs
	hlnA==
X-Gm-Message-State: AOAM532i+Ij8IAmjhqOVplnsV1Bbtn0g2YmMLvbIXrZvyON1guuuE3mi
	NsYmIEazWsT7uIuZ9B5bROvvm+jIGAIpcA==
X-Google-Smtp-Source: ABdhPJzUg9//iiUhHhvp0p4wzt4kmEyfh81N039koGaqyYQyMOQokgPI1UsEVLRJO/kbqgszGm88Pg==
X-Received: by 2002:a05:6402:31ed:: with SMTP id
	dy13mr5977199edb.179.1628780856995; 
	Thu, 12 Aug 2021 08:07:36 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id
	c17sm1253172edu.11.2021.08.12.08.07.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 12 Aug 2021 08:07:36 -0700 (PDT)
Subject: Re: Installing using a service like "Be My Eyes"
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
	<20210812140740.qlkk7wajgogjktq6@alex-pc>
Message-ID: <c54cf737-95d1-e7b4-7a51-bde217deca0d@gmail.com>
Date: Thu, 12 Aug 2021 17:07:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210812140740.qlkk7wajgogjktq6@alex-pc>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Alexander,


I do not know why, but pulseaudio always breaks about a day or two after 
I install arch. I have no idea why. I am considdering doing a base arch 
install and installing my GUI after the fact; this would probably be 
either Mate or Rat Poison.


If you are willing to chat, you can find me on twitter and clubhouse 
both with user: brandtsteenkamp.


I am use to running static release distros, either Ubuntu based or my 
current, Slint, which I really love btw. I would like to spred my "Linux 
Wings" a bit more.


Yours,


Brandt Steenkamp

On 8/12/21 4:07 PM, Linux for blind general discussion wrote:
> On Thu, Aug 12, 2021 at 03:42:25PM +0200, Linux for blind general discussion wrote:
>> Hi all,
>>
> hello Brandt.
>> I would really like to run either Arch, which I always fail to install
>> correctly for some or other reason, or an Arch derivative, but, Calamaris,
>> enough said.
>>
> did you try new arch installer[1]?
> I'll be happy to help you install arch. but for this I need to know what
> exactly you are failing to do.
>
> [1]: https://archlinux.org/news/installation-medium-with-installer/
>
>> --
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from my steam powered Slint vacuum cleaner
> --
> Sincerely, Alexander
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Warm regards,

Brandt Steenkamp

Sent from my gass powered Slint hair dryer.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

