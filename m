Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C980945DDE6
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637855275;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d+ZaIqHdmpvJxVIhbTbj++JRv/2bu5HRaF+tc3XLKsA=;
	b=ApwGjglVyMgsesBFYH1Ozr27IltkabT5tQm1wBh99TlDr9c3Y9Lkd9bzNQGnc3AwgCDrlf
	VuR/tDqHGtHuS2PyOfRPhlRTfiCapGstIYCD3rkJCcpxuRgOwGA0uxAaeeXLEKLjWs1rVa
	wIqZI0L4LhAfIhQg1wp47Crft/u9Vm8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-514-yaqfYQQAP36ox7of_Yd3Sg-1; Thu, 25 Nov 2021 10:47:51 -0500
X-MC-Unique: yaqfYQQAP36ox7of_Yd3Sg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9939381EE67;
	Thu, 25 Nov 2021 15:47:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 832F55C25A;
	Thu, 25 Nov 2021 15:47:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B6C2D1809C89;
	Thu, 25 Nov 2021 15:47:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFlemk014785 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:47:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 827882166B2D; Thu, 25 Nov 2021 15:47:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CC952166B25
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:47:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C6C9802802
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:47:37 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-444-NY4qduJaMYa-uboU5frwkg-1; Thu, 25 Nov 2021 10:47:36 -0500
X-MC-Unique: NY4qduJaMYa-uboU5frwkg-1
Received: by mail-qt1-f173.google.com with SMTP id t11so6505052qtw.3
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 07:47:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=4dzmyk585HspUuLKKIaQj7JaDf5qGN9VLcoa16Ojbew=;
	b=fZOdSRIF+cWvhy+jP0g/+z1roAZbqAu8aoU6SVHZoijeo8muUNcAc+MbVq/3OCkG/w
	T8yk+mpunLcg9FHgNCWNUudv2ZYQHlGBRxx5PFQCtZzViw4os2RthCBoBWuwqBKz6lck
	+0+XadzsZaXEYkchnzWl9yE3L+bjDTTU043fkGDCXyesBwQZjK06gIhCU0q4nQfOigRS
	GJgluHgx8U1fEiwwWGWamfE2l/SN4gkHFkFgclAxkzUf9aANAN5xUkZtHfsMmBZEE9lI
	5H5Re22UAmpQUX3cX7A1ONeassbn8QVXbFHT+xEdKkELA8WN5L0ZnQ3OkpfKDdwNlufm
	I4ig==
X-Gm-Message-State: AOAM531qoEcGaruXxWN13feiMisR3YGSEhbsqPWcCv6cbRWqiRiOj59F
	GtCZ2eNejiSrKDfk9oz/A2Vv13COOsYdA22kitPPvAgO
X-Google-Smtp-Source: ABdhPJw9L/2O360TO8ng0/tsU2JDmczzKX3OgJagYZ39gxviSAofc1tlSWj6YmaAxaSkt/42BqAmafYFjsh9aBDGgzM=
X-Received: by 2002:a05:622a:1114:: with SMTP id
	e20mr10031378qty.427.1637855255472; 
	Thu, 25 Nov 2021 07:47:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Thu, 25 Nov 2021 07:47:35
	-0800 (PST)
In-Reply-To: <946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
Date: Thu, 25 Nov 2021 15:47:35 +0000
Message-ID: <CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
Subject: Re: Converting epubs to Plain-Text?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't know of any tools specifically for ePub... but I recently
found out ePubs are just zip archives with most of the content stored
as html files and some metadata files used by ePub readers.

Also, I haven't used it, but I've heard others describe pandoc as the
anything to anything else of document conversion.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

