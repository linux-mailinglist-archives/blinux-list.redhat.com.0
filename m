Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ADA45654E
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 23:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637273043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a2cZ67mMnNpoU34EO8lbT+jeE90Qt1+HPCevEesf2yc=;
	b=dh1LlUoXqx6TeLPMwjJ+hkMtTWbiV57uGw+ex570IQ/3EPSSflHOW7VzwBjHKdI9XymOkO
	hGx/JZ3uLPcimRY0Zgo7ieCRUmUghSSvEjfwmepPHf/gupLLTItmkFSImFZxJABUmyDffc
	TgqDJEjVPCQ4x0SIYPA+KzGUJyjsrc8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-473-mXOtLJyFN-WeZ21QIck9WA-1; Thu, 18 Nov 2021 17:03:59 -0500
X-MC-Unique: mXOtLJyFN-WeZ21QIck9WA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74BCA87D543;
	Thu, 18 Nov 2021 22:03:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B84BC99CC;
	Thu, 18 Nov 2021 22:03:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB9BA4A704;
	Thu, 18 Nov 2021 22:03:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AIM0eCu025109 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 17:00:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2E2AA40CFD12; Thu, 18 Nov 2021 22:00:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2948D40CFD11
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 22:00:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1076A185A7B4
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 22:00:40 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-328-BX0Nds3gMher3aIQBYTIqg-1; Thu, 18 Nov 2021 17:00:38 -0500
X-MC-Unique: BX0Nds3gMher3aIQBYTIqg-1
Received: by mail-qt1-f171.google.com with SMTP id t34so7618781qtc.7
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 14:00:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=6E4JO+M2qzEBo3QqcuwIZGaGBP6IWrzpjB4om42HFgs=;
	b=Jqo6Mv5MJEeWYVG/jir/2ruJ4jO/74KBVr4L5XH+F0mNFSgGk2rIldTUVwgYrn6jif
	ExGtpt1t0yy6FjZcybs/Fc2ZJq6LXMVwl/IOi8vdYQPDu/eXQNwdncRAf+ybJk3dgh+u
	srwIhNM1r5oHzbaZy68yqwpYTRMOr0SZD/xvdFiys1RYcQkClo61ZaaIG1ZcrVPnkbPG
	wADKfzCrLdpH6fODoeHxjB+uRW97Qstd6j14aR40EKKWGrLGsXJ0qS0iLOKrQKQPmAHP
	4H/4gb9PoBLBp5IGCLtIiJQ9O8RcRMWxzKMqlzDK7FJZgsTKdEWtmruDB+Z2SzbY6Cr9
	Bctw==
X-Gm-Message-State: AOAM532njWF6uefC5oPZ8g2DXLdJ5gsK8uELB7ZG7H1nfNdLcuPXB0rS
	VhSfKA1nq88EFPipSFMiLLgr7YKglQk=
X-Google-Smtp-Source: ABdhPJzeEndYjPrpv12ozrR7DFD9jfG5EZXQi8g8a9Bbf6sR1+LuCe0fCJq7/ADyU1Mil1/xzp0iWA==
X-Received: by 2002:ac8:6158:: with SMTP id d24mr865195qtm.115.1637272837725; 
	Thu, 18 Nov 2021 14:00:37 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id v10sm578410qtk.13.2021.11.18.14.00.37
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 14:00:37 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
Message-ID: <1999065e-b9ce-59bb-5fe6-5da2e528628d@gmail.com>
Date: Thu, 18 Nov 2021 17:00:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

If you like Ubuntu, you will pretty much feel at home on Mint or even Coconut. 
That said, the original Mint uses the Cinnamon desktop, and I haven't tried that 
out. All these children and grandchildren of Debian tend to mix versions of 
components of desktop environments though, which I found to be a major 
inconvenience. I found this to be especially bad where GNOME was concerned, but 
my guess is that other desktop environments probably have similar issues, with 
the possible exception of Cinnamon, which is developed by Mint I believe. The 
other problem I found in such distros is that many software packages and 
libraries are especially old, so they tend to be a better fit for servers, where 
for some reason administrators seem to like their software to be old. That said, 
I installed Ubuntu to my servers, since at that time, most of the software, 
though old, was newer than the software in the Debian repositories at that time. 
Still, I find it hard to recommend Debian or Ubuntu derivatives for desktop 
users who want to keep their systems updated with the latest software.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

