Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E14461AC4
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638199528;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tvLUC5WKzFq2AjdUwq/f66Q09PTYE/MENPq9TEJBoxs=;
	b=ImpfLLuHwZG5Qs0kaA0z888EpKP3WScq69G7UJfwa4lQXTP/Nzuz0pyU4L8CyR00UX4RJ7
	VGO9C3ya3QO8J+5LM5epZ8xCpbcY5nayOq/oA8duUMWs+7tg1qkkdFad7jrMcjxEniSX0m
	qD5TnOzQVzCgUGVpRZs6jotl1I9Syeo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-219-JZO1IxHxMO2o-2Qcse4jmw-1; Mon, 29 Nov 2021 10:25:26 -0500
X-MC-Unique: JZO1IxHxMO2o-2Qcse4jmw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DB06100C660;
	Mon, 29 Nov 2021 15:25:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C1CB694BD;
	Mon, 29 Nov 2021 15:25:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 162464BB7B;
	Mon, 29 Nov 2021 15:25:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFPB97009650 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:25:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9416C218014C; Mon, 29 Nov 2021 15:25:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E4DE2180146
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:25:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63D21800141
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:25:08 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-500-iirfMiaxO5ORuU5J-Wy2UA-1; Mon, 29 Nov 2021 10:25:06 -0500
X-MC-Unique: iirfMiaxO5ORuU5J-Wy2UA-1
Received: by mail-wr1-f41.google.com with SMTP id u1so37582617wru.13
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:25:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=37jbRqWB4N3b/6cTODvuFP92/A+kWuolHFp2EZ86JUI=;
	b=WoSf8lr80Sg1LaBmCpZKNHAWLIbVMe0mm1cCQcLKJJNooS5H7s4i9gHIkTdHEWO0sz
	xjOSNVK1+CHfa+aoVVrVsQf/syzoM2qG2juHuqmrytyyrHX//53T3O5Fkn/8B5HLekan
	A5pn7053bNNWWkhUodhJy4rZ9k9ENDwfEN3gCprmG0MDO8x+elDsLEx1vUIGhPDuIDlV
	6gxaHpAU83etXpIuoM77KheFUD7F6HO6YVoO/Vnqt6Q2tl0TKrfqaECpkbtuqY4A16Bh
	8Ga3BCKPujo8mSzNrBOPBU6iwB1DAUUI18oZZUl3RWBpnhLGFDRTCncTdUgKcPnW5cgT
	U7SQ==
X-Gm-Message-State: AOAM533lZdoLXfCrhz+t3AfsexlToX7RhviibI69aI/0yubiEGGzrcFt
	FdFNb/1AB7TB/FvuoukOhUWjKSnhQ6Nhjg==
X-Google-Smtp-Source: ABdhPJxZ0G7xic32wC7yvsXqjb68yDZlSKolW86niP5ADdhSKW71KU7vLeuEI1swF2Y4+62WbhSKPg==
X-Received: by 2002:adf:ed83:: with SMTP id c3mr33564937wro.169.1638199504840; 
	Mon, 29 Nov 2021 07:25:04 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	j11sm13963289wrt.3.2021.11.29.07.25.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 07:25:04 -0800 (PST)
Message-ID: <4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
Date: Mon, 29 Nov 2021 15:25:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: --force-renderer-accessibility not working lately
To: blinux-list@redhat.com
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
In-Reply-To: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Do you have the right environment variables set? In my .bashrc I have


export ACCESSIBILITY_ENABLED=1


In it. That makes Chromium based things work on Arch/Ubuntu for me

On 11/29/21 15:13, Linux for blind general discussion wrote:
> Hi all,
>
>
> I have tried this in both Slint and Fedora, and I've not had any luck 
> making the --force-renderer-accessibility flag work with either 
> Google-Chrome or Skype, both applications for which this flag use to 
> work very well in the past.
>
>
> Am I missing something, or am I just out of luck here.
>
>
> Unfortunately, I actually need this to work, otherwise, I'll just have 
> to use the MacBook to do my job.
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

