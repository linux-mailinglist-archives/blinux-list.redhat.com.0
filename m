Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3664B74E6
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 20:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644955159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g4Cq/+8QT6ON9a1dYsuxNo/7iBPa2F05P/IGITv4AFg=;
	b=IREPCoqGzMXqZnhWqee8Luve/9oUitB+sFsFGNHZpHycduodetuzJLAtPlpMdb0dTrMOvH
	lWCYhWO1CoMKZYbOhqe805a6QAkCb+OXBh7/m+sBmi9yPkF6qybsLEOjWyLoLGbPPJVVx4
	MMxym2gYKSbxpfV3Sb359Iye5m+DJ1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-496-ovzzaoitMtqihQMBErWdNg-1; Tue, 15 Feb 2022 14:59:15 -0500
X-MC-Unique: ovzzaoitMtqihQMBErWdNg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC08580573C;
	Tue, 15 Feb 2022 19:59:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A200D45D96;
	Tue, 15 Feb 2022 19:59:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A8BD44BB7C;
	Tue, 15 Feb 2022 19:59:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FJx5kw003258 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 14:59:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 880A54010A08; Tue, 15 Feb 2022 19:59:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 841F74010A04
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:59:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C51E1C068C2
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:59:05 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-368-LDY7sALHMN23D2LcbZFsLw-1; Tue, 15 Feb 2022 14:59:03 -0500
X-MC-Unique: LDY7sALHMN23D2LcbZFsLw-1
Received: by mail-qt1-f171.google.com with SMTP id b5so19663702qtq.11
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 11:59:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=8130BGPV/o9C6gdwBUDMHMchbotFloIjSGS0ZM7bVhs=;
	b=ltm69urEb+Rz3/FYGawpMZ05Dw+5Q1azIrOghrizYp8wd6ZKmwWGRUfuyXDchyCMfP
	GFWn0TLgT75UOM33y6Sm7bVx5qH5oFk+jxv7fFYAD3V9rLiiTtoOf2hMDUP8bTo8MIho
	V1sjvBHng42UH00Pd8JC9n0A29qqy6uTqVHirD8DiVbN5uOoXQe+kNmSjOGSeNuyRgCC
	QuWr41MCPv1HMlrKbJGM6ToLqVzX9ozs89UtgGHokkclCUIx9KQZcDHFxjfA4awfBQ81
	WwVNFTMvhnvD0JDPFdlqj2s8gu4h6VQlHwRzrO6QYKrDK6LSOSstCX5rmX8+n0v8vOj1
	mK1g==
X-Gm-Message-State: AOAM530CU2fxyaWSlQ/SvcPEjfCF/szxy95EHPEeIPwBiXqK8ivdozIG
	6gpKxFiOdv6nOUPA+LTMtwzQyqgnBatYgQ==
X-Google-Smtp-Source: ABdhPJyEDajMA5qIk9HcSMrkci3X6E0SKraxeO+Simpp9aGMBOo99J8s7Fx56CPDVYZgDvedMHwXwQ==
X-Received: by 2002:ac8:5a84:: with SMTP id c4mr590659qtc.604.1644955143161;
	Tue, 15 Feb 2022 11:59:03 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:7467:d1fd:59b:2e92?
	([2601:192:4c80:1420:7467:d1fd:59b:2e92])
	by smtp.gmail.com with ESMTPSA id
	x18sm20446786qta.57.2022.02.15.11.59.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 15 Feb 2022 11:59:02 -0800 (PST)
Message-ID: <288a2988-8039-3086-bc5e-5bc41429f3f1@gmail.com>
Date: Tue, 15 Feb 2022 14:59:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
In-Reply-To: <F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

It's Debian with your choice of init systems; default is sysv init (like 
Slint).

On 2/15/22 14:57, Linux for blind general discussion wrote:
> Never heard of this one.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

