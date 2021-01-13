Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3CFF22F5046
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 17:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610556356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=umWHl+nFRHakPUqcPU1wGDPjGixK9PnKub7D4PNh3jw=;
	b=XEgc5DmWoi25LEhDqkZkBTomE9sN3CpEV3bsbr9DncW8til3rd35geEoYoKjCI75dHuDIF
	6ybKLeEoRyaRPpnW5n542VRwJCGft/zDmxrz+nG1H2mkVy4Y9ysFZ085v1A7K8W2z8lgdi
	1rccDMdQjvHp5Z/rejHRnxV3F9GUvLc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-536-32dvfsrLOIS-lR5FySzfbw-1; Wed, 13 Jan 2021 11:45:52 -0500
X-MC-Unique: 32dvfsrLOIS-lR5FySzfbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F3AC19251A0;
	Wed, 13 Jan 2021 16:45:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B0596F977;
	Wed, 13 Jan 2021 16:45:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACA7C4BB7B;
	Wed, 13 Jan 2021 16:45:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DGjZWF032431 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 11:45:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 970322166B2C; Wed, 13 Jan 2021 16:45:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 911142166B2A
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 16:45:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1FFDD18039C4
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 16:45:33 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
	[209.85.216.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-436-zkvOYuejObKHMkBLxOzvWw-1; Wed, 13 Jan 2021 11:45:30 -0500
X-MC-Unique: zkvOYuejObKHMkBLxOzvWw-1
Received: by mail-pj1-f49.google.com with SMTP id y12so1492162pji.1
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 08:45:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:in-reply-to
	:message-id:references:user-agent:mime-version;
	bh=RDQxFzyxlLRMmvNrNZpHqcbYZITKrouuz9uchAu1QzI=;
	b=Ukf3IuMbpMzoSmXUT+6SJJNpeHXLKuILImYQ84d6L6NpUGp0MjCrPqAN13OXjhm+sg
	l6bpbeZCPOWVrpGXfzxPvSkyhJ8GTylrYJV6VU/3/02JPP8d/Eq0F/585RhwLotP+D3n
	z8W64uAf/7UO7DfxlDmNqykYZobyhHPvXGDlqmbi05UxkTnK/xAmDgN0lWRFuw5dCJV3
	71DPVWuMQ62v2DjjSOT7ydZv2h5H2tKvh+b38XJYbO7hTd2jnrqjzBYjZ+QIiVsPiStv
	T7xfQN9mY6bxIOiYyp7mVTsslFJdCrxCLjPhgvSmYzSHyDLzN+5xjhjn0NrLy/A4eo70
	aKng==
X-Gm-Message-State: AOAM5327S3BtdbnQ3Z+7dIK8pwSOQhXLSLasaB/OSc5Ba/I5LewucUDq
	AjXtZ9iFjIgApEfkH6WKypXEiQr/eXw=
X-Google-Smtp-Source: ABdhPJwWRd7t/IaELwzgNtMWBmwmyzn+Mkp6eXT92BRiF8iQvuE8Nr432iQQ18kGWVD1BPmcRhedgw==
X-Received: by 2002:a17:902:ba84:b029:dc:f27:dd4e with SMTP id
	k4-20020a170902ba84b02900dc0f27dd4emr3079363pls.61.1610556328834;
	Wed, 13 Jan 2021 08:45:28 -0800 (PST)
Received: from precision-M2800 (72-160-108-238.dyn.centurytel.net.
	[72.160.108.238]) by smtp.gmail.com with ESMTPSA id
	z23sm3073589pfn.202.2021.01.13.08.45.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Jan 2021 08:45:28 -0800 (PST)
Date: Wed, 13 Jan 2021 08:45:20 -0800 (PST)
X-X-Sender: tom@precision-M2800
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fwd: Does anyone on here read code in braille?
In-Reply-To: <A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
Message-ID: <alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="8323329-786854822-1610556328=:2197"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-786854822-1610556328=:2197
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

I use braille exclusively (or try to anyway) on linux and windows.  I use 
either an 40 or 80 cell one line display depending on desk space.  Yes 
they are expensive but for code I find them indispensible.  Especially if 
you are working with code that uses lots of short names.

Tom


On Wed, 13 Jan 2021, Linux for blind general discussion wrote:

>
>
> Ashley
>
> Begin forwarded message:
>
>> From: Ashley Breger <abreger@ivytech.edu>
>> Date: January 13, 2021 at 12:35:19 AM CST
>> To: Ashley Breger <ashbreger@yahoo.com>
>> Subject: Fwd: Does anyone on here read code in braille?
>> 
>> ﻿
>> 
>> Ashley
>> 
>> Begin forwarded message:
>> 
>>> From: Ashley Breger <abreger@ivytech.edu>
>>> Date: January 13, 2021 at 12:25:11 AM CST
>>> To: Linux <blinux-list@redhat.com>
>>> Subject: Does anyone on here read code in braille?
>>> 
>>> ﻿Hi guys I was wondering if anyone on here reads code in braille? If so do you read it line by line or are you able to read multiple lines at once? And what displays do you use for reading code?
>>> 
>>> 
>>> Ashley
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
--8323329-786854822-1610556328=:2197
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--8323329-786854822-1610556328=:2197--

