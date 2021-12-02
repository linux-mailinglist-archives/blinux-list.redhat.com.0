Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BBADF465B13
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 01:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638405567;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U13Xhx4Oy+diCb3kNR68s6awJXiwq8M1U0Ox2MkGfGI=;
	b=hlChzceLaIQtM+r4y0IfGd4W9teOBS4eTUUSGj0NQNcpPUxzs5UXy4R2RGeI16oGAQ39Kf
	eFabj+sPjThlN74/oa1B2k+gN0yUxCOhvjlEImJ+U0R900A8kFaJseNHspQZPOb3WYwOcA
	OqihvJmXZXDhrMXi3vDjygNkAM9+itU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-443-2FT6s9fLO8SCjNWBjmPsmw-1; Wed, 01 Dec 2021 19:39:26 -0500
X-MC-Unique: 2FT6s9fLO8SCjNWBjmPsmw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39D8A81EE62;
	Thu,  2 Dec 2021 00:39:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0ECB45D6BA;
	Thu,  2 Dec 2021 00:39:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E8991809C89;
	Thu,  2 Dec 2021 00:39:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B20dBQu023440 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 19:39:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EFCB11402406; Thu,  2 Dec 2021 00:39:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA4FC1402400
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:39:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D066B811E76
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:39:10 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-241-KGIImeZYN86BN08dhbqnPw-1; Wed, 01 Dec 2021 19:39:09 -0500
X-MC-Unique: KGIImeZYN86BN08dhbqnPw-1
Received: by mail-qt1-f175.google.com with SMTP id o17so25960837qtk.1
	for <blinux-list@redhat.com>; Wed, 01 Dec 2021 16:39:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=HKcBspSGt+/mEIEv/EAtaMVM1RyyhFAhd6auCAFEaL8=;
	b=YcLJHOOzeMRASOblOEmuD+eFKR5BlsfCiyYvaxT6sjKpefMTcAdqrnT2Z+9tHZJdy0
	tXMwTDkZLbFMb6ydIg0f8zW+QiU92TwUDjExaS8qEHmPhNiU9UFeKhD3iWOeJ2CoqyiN
	ZuOftE7+wBfw7/kI1XLQo3HjtFWsu9jfWN1wjc5tTrgCvDFuh13nWucCRvBlv/JIsGeY
	YyCcbNzQ0GjPmTSpSTAviF8vM9b5B1x7DIMf4v6XKLSmzRXl2xmCqiKLyB+psYSi12H1
	QA340cumPZqFTr8+8HTKgqRmNvndAHQSpU+nWh36O/8oBN/RNAueVWSj38gKf455UB29
	91Mw==
X-Gm-Message-State: AOAM531ZKJMQyuKUwdlPH2whbwjEKg2MZ8yAQr6NQObp6U32tQehPM9x
	CiM3smrN9P6axFFI1YGACVukBS3gDVO76vEe
X-Google-Smtp-Source: ABdhPJxtt8kFKktRZ4riVAhNzgXFs1g6e0X1XUxEtftHptrzw4UMk8v7mC5DQMMOyCoz/iSuSjf8Rw==
X-Received: by 2002:a05:622a:115:: with SMTP id
	u21mr10974530qtw.540.1638405548644; 
	Wed, 01 Dec 2021 16:39:08 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	x190sm624045qkb.115.2021.12.01.16.39.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 01 Dec 2021 16:39:08 -0800 (PST)
Subject: Re: New packages available for Slint: flatpak and pipe-viewer
To: blinux-list@redhat.com
References: <4d45f962-8735-59f4-695e-81e786b33a1e@slint.fr>
	<ad22b7a0-fddf-7a44-6f83-58d382ff2e51@slint.fr>
Message-ID: <3fb18e63-60f5-8a00-14c6-e52342cd3e00@gmail.com>
Date: Wed, 1 Dec 2021 19:39:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ad22b7a0-fddf-7a44-6f83-58d382ff2e51@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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

Thanks Didier. I like the GUI of Pipe-Viewer. I like the fact that you 
can play audio and video without the annoying youtube ads. I will be 
using it a lot from now on.

Cheers,

Ibrahim

On 12/1/21 7:40 PM, Linux for blind general discussion wrote:
> Hello,
>
> to install flatpak and pipe-viewer in Slint type as root:
> slapt-get -u
> slapt-get --install-set slint
>
> Top of https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt 
> below:
>
> In this batch of updates are provided:
> 1. flatpak and its dependencies
> 2. pipe-viewer and its *many* dependencies
> Suggested readings after installation:
> /usr/doc/flatpak-1.12.2/README.Slint
> /usr/doc/bubblewrap-0.5.0/README.Slint (flatpak relies on bubblewrap)
> /usr/doc/pipe-viewer-0.1.7/README.Slint
> pipe viewer has also a GUI: gtk-pipe-viewer with a menu entry in the 
> Audio and
> Video sub-menu of the Applications menu.
>
> Cheers,
>
> Didier
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

