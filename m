Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D1455EDF
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 16:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637247748;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Q+eimT62bi3a+WrfI9i7T/EeXB6PumbxvaghW1JtBQ=;
	b=FpVMsEdUG2jCzm9Cx9EoA6HorosBuEcNhY6yERD0IfWi/1LxPnh53TGoioss+0LM00lLt4
	vXwCr+WL56K08ZpZE+OjHHRkTH4E8ZM9rDlDdQe0gynitriQr14dXtqFNVqPSbElw+avsA
	eqO0RW13C9UvMpX7VfxwMtcGK2pWUeI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-rnRZYjonPjqE7EYkMbTb4w-1; Thu, 18 Nov 2021 10:02:24 -0500
X-MC-Unique: rnRZYjonPjqE7EYkMbTb4w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF012804141;
	Thu, 18 Nov 2021 15:02:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 381DE1037F59;
	Thu, 18 Nov 2021 15:02:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EED42181A1D1;
	Thu, 18 Nov 2021 15:02:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AIEwv1R019224 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 09:58:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9131F4010FDD; Thu, 18 Nov 2021 14:58:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C30E40CFD12
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 14:58:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73EC885A5B5
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 14:58:57 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-226-IdgfdVpIOeqDTjzIV9LxpQ-1; Thu, 18 Nov 2021 09:58:55 -0500
X-MC-Unique: IdgfdVpIOeqDTjzIV9LxpQ-1
Received: by mail-qt1-f182.google.com with SMTP id o17so6309278qtk.1
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 06:58:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=kgivLmoHSCQlVB5uRGUtgrNpLp+aX3IOqKPNIzzuj2M=;
	b=s5fUkwddsZiyzO1crB+ANZYqagiwFajHnU6+9/Bhe905+q+nN7+rLMzEp7iyzVjcTW
	kSk5rTmk7JZjo+sG+p2f8mww8fbHnLJkGe13XwBKdRA3k9JM4y7RlvMrLowIVPbl+jj3
	olHdyMHrBdW3WE6NHHhbdM/e/0QeK9ss7OMR9hMG0cIkyDcv+qfK228oZJzP9QuRFOog
	aN3Yb07+EZl+bXbvalca6/hUX1sUpmEP83Tts1CA5D8QiiShjZoyFrNII78ZQ3+bK1+B
	nu6/rkI1nBVNBeAIkghpSm6E1p09WtJQrRg0Oh9lnmGAZw7xa3QkGnIwzgfPZBaBCMfB
	GEPQ==
X-Gm-Message-State: AOAM533OrK7NquQbSvBP4kgms7bLgu7R0qaolnWOaFQm0yYUj3RZbQsb
	FHN8DME90ux2BHOApSf1Ly+FfzxiRFY=
X-Google-Smtp-Source: ABdhPJyU6nXaPandz1YDqXxtNbsVV88w5KGy1mXPVlzI6iTzQlSFUezV8A6oIjXgx7OuYCBYDasRVQ==
X-Received: by 2002:ac8:4e56:: with SMTP id e22mr26826558qtw.72.1637247535385; 
	Thu, 18 Nov 2021 06:58:55 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id u185sm41122qkd.48.2021.11.18.06.58.55
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 06:58:55 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
Message-ID: <9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
Date: Thu, 18 Nov 2021 09:58:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Fedora doesn't need Speakup for the installation process. Just boot up the live 
image, press alt+f2 and enter
orca
in the run window. Once Orca starts, you will find the installer on the desktop 
if you're running the MATE version. If you run the GNOME version, known as 
Fedora Workstation, you will need to hit the super key and find the installer 
from there. The MATE desktop tends to have better accessibility with Orca, so I 
use and highly recommend it. The installer will see your USB drive, which you 
can configure for automatic installation. Hope it helps.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

