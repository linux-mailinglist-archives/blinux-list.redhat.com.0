Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E324B74D7
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 20:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644954669;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tIqm0sXq5r1De2vFZjiS24GuVLbPV3nsJ099gegTr+M=;
	b=Y1eV77tbnTqNubLzXjGfwZY6s/QgqdUJLf+iV59nQBEHyRXt8atsIFlY1kJz+XUCPwRgY4
	qvmY5mq3JEHBMombvbbEGHX+nlaCD0JeYFmgVMgceTwtYi8drWo0LKHmVFxYPhJJowlx8t
	nIi1ydhzwIHVUzW+Egjoi7VTGESmjIQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-gFUWh9k4O62kwNICIPOGcA-1; Tue, 15 Feb 2022 14:51:05 -0500
X-MC-Unique: gFUWh9k4O62kwNICIPOGcA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BACBF835B4D;
	Tue, 15 Feb 2022 19:51:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 506AE5DF21;
	Tue, 15 Feb 2022 19:51:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B2A524BB7C;
	Tue, 15 Feb 2022 19:51:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FJotdf002626 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 14:50:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BF36A2166B4F; Tue, 15 Feb 2022 19:50:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB0D32166B46
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:50:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 929AB1C05EA8
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:50:52 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-570-UtuiHfSUPW2NfMo50N58Kg-1; Tue, 15 Feb 2022 14:50:51 -0500
X-MC-Unique: UtuiHfSUPW2NfMo50N58Kg-1
Received: by mail-qk1-f181.google.com with SMTP id bs32so18349700qkb.1
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 11:50:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=vD+FHKfNiLozD5dTf79U4eGmp+W5EvfEjkxfmtU2xhU=;
	b=lGfhLiizqBLqT6bY0ZFd8afQM23PG5PmfmHD8OevI9X7OoCk5EGBe9INEYz21clkEz
	4ExytH0chq/efgkaETEYq7pAqCywnQKX3HBDxr/AcB9PANq34n1iv6j4NqtYF/GtY0AV
	KNbJyTWNjIRQ8oCrFgUZGAd4iYsQpX4RVAECM2Zs1TEYVhfJcgmLJ39SxqTdm/AiFqNU
	dkL33YGY6DXZJ5atuiBU+ZhZtCBMbDP2NJSAJd92trrC7g0WGGSom3psJZOsWtBNO663
	XdMX0NWAMNeXwLzlyIkLp1/Yl0+y4Z8M8jDeRmi0zb0t7wQFu45Dxq0qRuXBj/5LWn0n
	3aqQ==
X-Gm-Message-State: AOAM533AR3HGX6eSXkXRzduQfnhzitGcbuPrBStaRAmsU1Q4kE7pypy6
	cLyiMP8nJIXwF4ZEYEHKNGgeEusbiUys5g==
X-Google-Smtp-Source: ABdhPJxB5uaxMzBB8HbG0aePV2MJreKm4RkdgLmGPcRwgUdpslTbT3vrKb2jk9PvVkjNUvUmsniZNw==
X-Received: by 2002:a05:620a:15b2:: with SMTP id
	f18mr362434qkk.160.1644954650425; 
	Tue, 15 Feb 2022 11:50:50 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:7467:d1fd:59b:2e92?
	([2601:192:4c80:1420:7467:d1fd:59b:2e92])
	by smtp.gmail.com with ESMTPSA id
	x7sm14376616qkp.98.2022.02.15.11.50.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 15 Feb 2022 11:50:50 -0800 (PST)
Message-ID: <f756ee8f-b545-705f-63c2-8bbb0eb1366c@gmail.com>
Date: Tue, 15 Feb 2022 14:50:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
In-Reply-To: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

There's Fedora, Solus, Debian, Slint, Arch, that I can think of so far, 
excluding Ubuntu and spins.

On 2/15/22 14:47, Linux for blind general discussion wrote:
> What other options do we, the Blind Linux users have? And, no, I 
> really don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible 
> Coconut, etc.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

