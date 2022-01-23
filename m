Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4451749734F
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 17:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642957162;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J8L35TQJ78+6HT0ybaYDROuAfB9MnnLucAii+THWLNY=;
	b=LHKqn6/yt0YLzsNT+4OTrRZ5eLKT9pNY/e59anKZUd7zlergmAGfAsm/F9uIFxt5XUEMjD
	RVNT1cfLVmPosVNXxXFEbjwf0gY3JgCFDj4r4x4dwYYGGpEmh+tcf6H3CKgpP4wQkcAN5f
	wsmIs364mjCFKoDbw4eMfL48ZKPbJRo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-515-A6eYcyWcONi7wVw78GZFLg-1; Sun, 23 Jan 2022 11:59:18 -0500
X-MC-Unique: A6eYcyWcONi7wVw78GZFLg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 117CD1083F60;
	Sun, 23 Jan 2022 16:59:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 217507E64B;
	Sun, 23 Jan 2022 16:59:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F0AAA4BB7B;
	Sun, 23 Jan 2022 16:59:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NGoSmf017057 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 11:50:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A38EB40C1242; Sun, 23 Jan 2022 16:50:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EF01400E12B
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 16:50:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D44538030B8
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 16:50:28 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-473-wOemAOaeNdqmL17Qo14Chg-1; Sun, 23 Jan 2022 11:50:26 -0500
X-MC-Unique: wOemAOaeNdqmL17Qo14Chg-1
Received: by mail-ed1-f49.google.com with SMTP id p12so52183062edq.9
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 08:50:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=4HWpKgNS+S9Isoak6LStMItZopitBfVzNG3auyzzpm0=;
	b=bW1EqllLKrmi+ZiD8uPHWIoB5WpJSR4I14q+Flkp/Lb0wFwuCXOwZQlDtKfwWpLBxl
	/yzLDXawxSbqzPTaCkk3j1ut2xVPuQKeBtgbjRrg/UkdmjxiU8AsJKOGKJr0MgKF7II7
	rdihwo/zyeBVtKOjYVwUI3nZsLoZziAit0M8Bul9QRl0vENpNXcn/1NRLjDL92vUsZKz
	KUgPkSE4IqfWbD3QPHO4BSs6bdLxSDVEcS3xEqUTwt2x9ly70C604tdNBVTYWW3dO4Pv
	2YM/s0/5CJPFMaopkK7RVvSeAsPdYj73An2qeKSdDxXndocE7JYcrryqZ1OxnfSW3Ixe
	Kz2A==
X-Gm-Message-State: AOAM532ojpFfhaa2Sza4UkJTMQ9oyYHJ94QsXDCS6wo4O5F0io4WzPD9
	pfqvWYu55bdGhUZ/8okl4Xncc+OCxJo=
X-Google-Smtp-Source: ABdhPJw8eM8GfkT0BKOpF5GqVOLrGtHZxzVEwSobdpu9fovQG+KZhLJNnW5AyFoVVeq1rhqVSWjVTw==
X-Received: by 2002:a05:6402:214c:: with SMTP id
	bq12mr12393485edb.287.1642956624861; 
	Sun, 23 Jan 2022 08:50:24 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id
	lm6sm3955548ejb.46.2022.01.23.08.50.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 23 Jan 2022 08:50:24 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: how to get the shortcuts in ratpoison
Message-ID: <fa82e865-f3f2-1c9a-8a72-8b3b7a480abd@gmail.com>
Date: Sun, 23 Jan 2022 18:50:21 +0200
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

Hi all,


Not coming from a coding background, just wanting a productive, working 
system, reading the .ratpoisonrc gives me a headache.


How do you actually get the keybindings in a usable way?


Thanks so long.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

