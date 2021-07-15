Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DF8673C9C6A
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 12:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626343719;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8z23d89L1C5eL9taiujL+8yzGDlQ2QNNiNgU+QAnqww=;
	b=XREu84A704m7Tble5FieI6GokDm1ATDKgNiV+x5L2U+0gy/RFFkwzYLumXrRJYtXWDk9ua
	Oz5aCn5n45ZnoNwNSvFVnxCfkBjen8OO1Xh9xyR9Pf5o1nHVd5FV0VOJ+OTHyitNv6Ud33
	2cfX9U7xfLhVecA1/dA8kpN6s0gO8qc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592--Sqy-Tp9OV--U8v5TXpLjw-1; Thu, 15 Jul 2021 06:08:37 -0400
X-MC-Unique: -Sqy-Tp9OV--U8v5TXpLjw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA93F18414A0;
	Thu, 15 Jul 2021 10:08:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36F525D9DD;
	Thu, 15 Jul 2021 10:08:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EF741809C99;
	Thu, 15 Jul 2021 10:08:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FA8OW9011505 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 06:08:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8EACF1037BE; Thu, 15 Jul 2021 10:08:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83E4D1037B1
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 10:08:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B095D858F1E
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 10:08:16 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-308-40El_HtFP-2AIrNEn5GM7A-1; Thu, 15 Jul 2021 06:08:14 -0400
X-MC-Unique: 40El_HtFP-2AIrNEn5GM7A-1
Received: by mail-qv1-f48.google.com with SMTP id o9so2533799qvu.5
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 03:08:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=zgpjRPyegFGDpm0NXAeD/4kFApO7UwCQu0Al/WJI78k=;
	b=a1Bs75ESEYgpuBn45pmfg2PWpGgXbtasHC6tpwB1jqOehti04WBK6deoD3s89c5d2f
	xjt3TRIiWEeUALkQnt5zwIN1BgFSta60ouHkLaZDwE+TW2iG69WK0wsGn0bGnGF8pWgK
	p1OdTwFd60OTVdO+KXZISSx1IDUbWkIbvY/N0tLSZ1IIKj1TN5HTipuZxVdbpudQJjTM
	xpYT5t/trOJUdIJkNdGs86Sa3VtanyrucHIWtGA+xYc+JfKeh86iJxNKue45a9eMYTlP
	mOpJ3MVVyBD7fmxncDsOAU1wUHLnA3ni71rwHh8o+aqRm3MNo9X4KXC/6GvtfgThOxEV
	xbHw==
X-Gm-Message-State: AOAM5310TDFrMhbjFlNcgFpwiDq6EL8szwh6dSjlBnnqOlshv3zmHqJ3
	efa1LeNad7t/kgdgKh+CBaUKwxSrUp4=
X-Google-Smtp-Source: ABdhPJyrZ9lQ0S86SeZ9ChuzncTvBU+/fXajCl0Q8jKIL1JrB825siAFikJ1AY10pPvoVc7ygj6Btg==
X-Received: by 2002:ad4:568a:: with SMTP id bc10mr3605846qvb.20.1626343693391; 
	Thu, 15 Jul 2021 03:08:13 -0700 (PDT)
Received: from smtpclient.apple (024-197-047-106.biz.spectrum.com.
	[24.197.47.106]) by smtp.gmail.com with ESMTPSA id
	z12sm1847241qtw.90.2021.07.15.03.08.12 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jul 2021 03:08:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3681.0.2.1.2\))
Subject: Re: Nextcloud was Re: Cloud service
Date: Thu, 15 Jul 2021 05:08:11 -0500
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
	<e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
	<15bce51f-2b5e-91f2-c1ae-2bcfdad07cef@gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <15bce51f-2b5e-91f2-c1ae-2bcfdad07cef@gmail.com>
Message-Id: <F9AE84FA-6262-4563-BD99-CA5E6AB4DDA7@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I mean, I just installed the nextcloud client from the package manager and it works fine there.
Devin Prater
r.d.t.prater@gmail.com

Https://devinprater.flounder.online

> On Jul 15, 2021, at 2:36 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi,
> 
> so I choosed Nextcloud by webo and for now, I am searching for accessible client. I downloaded the official nextcloud appimage client, but my computer says, can not run binary file. Can you give me some recommendations?
> 
> Thanks,
> 
> Pavel
> 
> 
> 
> 
> Dne 14. 07. 21 v 18:03 Linux for blind general discussion napsal(a):
>> I recommend either self-hosted OwnCloud or NextCloud, or a service provider that offers one of these options. Far more than storage, both of these solutions offer powerful collaboration tools and can even sync contacts and calendars, and both are open source and secure. Check out
>> 
>> https://nextcloud.com/providers/
>> 
>> for available hosted NextCloud providers. All the private use providers will offer at least 2GB of storage, which is comparable to Dropbox, but some offer more free space.
>> 
>> It seems to be more difficult to find OwnCloud providers with free storage space, but it's usually better if you can do so to set up your own host, either at home or through a VPS (virtual private server) in any case.
>> 
>> ~Kyle
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

