Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E706D4971B2
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 14:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642945286;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cbFquEL3guTcoYgW/C7/xscfvimPO4dMDKpElk92a9w=;
	b=V1irvv/6Np5rPXdKpI69eMio4RRKGjLy6upUVCWzUMpZmiXxl22m6Eva3WqH1BDLtGRHnR
	q5z92Xy8maMO4Ffs2xi6LRGUWwDTxTS+KK1whg4aoXTaTdBxv6wneo7iaeIcLkQwy9FLVv
	nRBC8BVYoO4+Lv7i63ZG2bvLVRJhGc8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-29-Ks9l6JEqM2Whd2-q2D7UvA-1; Sun, 23 Jan 2022 08:41:22 -0500
X-MC-Unique: Ks9l6JEqM2Whd2-q2D7UvA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFD4B36393;
	Sun, 23 Jan 2022 13:41:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C1DD2BCC0;
	Sun, 23 Jan 2022 13:41:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F47A4BB7C;
	Sun, 23 Jan 2022 13:41:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NDeurD006078 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 08:40:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4FAEA141DEDD; Sun, 23 Jan 2022 13:40:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BB5C141DED8
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 13:40:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3157985A5A8
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 13:40:56 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-467-tjj3_MvtNQWmVwy2Wq8fzA-1; Sun, 23 Jan 2022 08:40:54 -0500
X-MC-Unique: tjj3_MvtNQWmVwy2Wq8fzA-1
Received: by mail-ed1-f45.google.com with SMTP id z22so51405719edd.12
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:40:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=d6cfBghwAdSpC2LgW0ZqnINgZhhxryINyIhNQOzHi2o=;
	b=WIu12wb3NnwSGUaUbxg+DuIKHDIJpUqDS1LPX8E80vHxlAcCHU+WCDJRSwkeBGsQ6Q
	LV6sMLkBYqQSf9AEcUs4NFOKgeydBVuDUpAZ1joYpBYK27aXXfFnrIDRcnP54QtMeWJz
	egI2EjwGQwljJBHNtkKgX41UQDawOfH20ltavTAZWRWQrnqpDgtsxDahik2XG+3kUU0u
	pwK3de5tL0CpBVv9ytDl15uXsR3BBeCRVzg5fvC+SRuQ0mj6wdJ5fR0P6pm7/KQUm+F2
	JyXkpAwwRGiew1Azu+K06/6IOiaY7ZoNzYmd/dCpOrEXADJpWiAlstbi0GavhwNsaJby
	VK/w==
X-Gm-Message-State: AOAM532PlnTNmpZiSor2tZ6bvIwupsBZciWadIYOh+9PGHeKTjdHXYMl
	B44ZDiiBasY8pajkMyrSSUhcjo5rPqc=
X-Google-Smtp-Source: ABdhPJyWedqHvBgTLyzoJYX2SWIBO+z2/I2Qfp8MGLcD56O/1wWm3wjzcJYvhoztxOm9w/ANdwQ0jw==
X-Received: by 2002:aa7:c6d8:: with SMTP id b24mr12039893eds.72.1642945252467; 
	Sun, 23 Jan 2022 05:40:52 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id
	d15sm3891630ejw.143.2022.01.23.05.40.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 23 Jan 2022 05:40:51 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Configuring ratpoison
Message-ID: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
Date: Sun, 23 Jan 2022 15:40:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all.


I installed ratpoison on my Slint system, and don't have either 
~/.ratpoisonrc or /etc/ratpoison.


Where can I get a good ratpoison config file? Does one of the Orca 
users, I'd assume that would be most of us, have one on github or someware?

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

