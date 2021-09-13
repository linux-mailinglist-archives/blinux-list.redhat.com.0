Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C98CA40A118
	for <lists+blinux-list@lfdr.de>; Tue, 14 Sep 2021 00:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631573677;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3Df0xDIgDaDhkqHaROZrhHKivFcyJmOqxVwNDcQfUM0=;
	b=SnC+aBTWTfM5P9sx6Nb3YvaBokgzvt+fcibm8UPLW/OQO1i9XU+7uyhDDRuMjho9UrfPBm
	JP24Zxzc8L3+dD+4hzU2QZkSpBqM0qXATC3G2denPVIY0PVn6e9eLzFtqT8jtb+TI/WoCn
	eVBmfhvAMsrEjVTSnmoKu2GMEVX0Qd0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-z8C7UG9eMsuxoEdy4mixyA-1; Mon, 13 Sep 2021 18:54:36 -0400
X-MC-Unique: z8C7UG9eMsuxoEdy4mixyA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F5B4801B3D;
	Mon, 13 Sep 2021 22:54:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3033210013C1;
	Mon, 13 Sep 2021 22:54:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1387A4E58E;
	Mon, 13 Sep 2021 22:54:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18DMqnKk032667 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 13 Sep 2021 18:52:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EAE001006F9F; Mon, 13 Sep 2021 22:52:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5BB911342E2
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 22:52:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58352101CC76
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 22:52:46 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
	[209.85.216.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-251-jHE2FlvJPbmLhAwP3ydvjg-1; Mon, 13 Sep 2021 18:52:44 -0400
X-MC-Unique: jHE2FlvJPbmLhAwP3ydvjg-1
Received: by mail-pj1-f46.google.com with SMTP id dw14so6573070pjb.1
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 15:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Wo23JR8lOqvilmUZs2W2350OC9cutN6l/xfgH0ypfLo=;
	b=4nHml0JR8G+VJr9uKX6LcBQO4Pa7K7Po7aLWXvCIOniiR87I+rXakFcU4MVK2OIN35
	NtTX/p70hazf1S0OdDD2CrE/ta1wOhzeRCwRHGZ/vd+C7mvQrLSUn4ML/tO7QuLo+Efd
	PZBRHziFrL+zvYYsBY92pUmQrxFeaQkZEYwI++2U94LDH3952f4sjJHeycPe1LnO/MlA
	yLnN41mtWXopRAurkszC+PcdrnRRFFDbYztwFRXh6/p/HXuQIy1MPSKKNB+0FvqSMW2Q
	j9Y4bZoZxDjKsdjpCVJaANCyeuiy8soVKSCE2jo6489ZHz/jTj5f2pKW2kalvu0P+jRp
	wqIA==
X-Gm-Message-State: AOAM533lToTfyQtx8Ruw4I7THHEutg76JtWAQhXixBMe7rhZVxlYd6VN
	vQeVQTJ4EPXbxm4IgFacTroWyeYUqvg=
X-Google-Smtp-Source: ABdhPJwOrPMLFi3a17f4t9ul84yR+XCpFTTHBK75iijOWCYKyzBdeflipmTaYvUA65+ykTHE4HRn9w==
X-Received: by 2002:a17:90a:182:: with SMTP id 2mr2067612pjc.107.1631573562791;
	Mon, 13 Sep 2021 15:52:42 -0700 (PDT)
Received: from [192.168.0.101] ([103.121.18.83])
	by smtp.gmail.com with ESMTPSA id
	u12sm3185788pfi.126.2021.09.13.15.52.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 13 Sep 2021 15:52:41 -0700 (PDT)
Subject: Re: best gui vm managers
To: blinux-list@redhat.com
References: <20210912.162536.058.3@[192.168.1.100]>
	<20210912172806.5dzxk7e3sj4u73it@alex-pc>
Message-ID: <2b09abee-375d-6391-7e74-6890b0a0dbaa@gmail.com>
Date: Tue, 14 Sep 2021 05:52:39 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210912172806.5dzxk7e3sj4u73it@alex-pc>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm using KVM for accessibility and performance.

NVDA performance is much smoother and snappier.

On 9/13/21 12:28 AM, Linux for blind general discussion wrote:
> On Sun, Sep 12, 2021 at 11:25:36AM -0500, Linux for blind general discussion wrote:
>> I'm looking at throwing another 16 gb ram into my linux box, and then switching over to it fulltime, running a win 7 vm for those times I need windows for something. What's the most accessible vm manager? VMWare player? Virtualbox? I'm on arch.
>> Thanks.
> I am using qemu with libvert and vert manager. it's the best option IMO.
>
> --
> Sincerely, Alexander
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

