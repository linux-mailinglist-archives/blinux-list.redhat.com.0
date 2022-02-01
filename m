Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1154A64AA
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 20:10:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643742600;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9pp8foUwmkBjIBDsbSN9WUNpSaYj+zr++eIGkxm26qE=;
	b=UQWgNUU6PGoQqF2qXhSB+tEfC7QLy89OBBAwNg6TKZ5xKp4JHqTiyB7ykbWab1TfFoM2iH
	/O9wp1Q0bcA372bOd1zxnSCo1TordIktyFMtkf1EnhRHiOEQdTqqnpTWNBEIiJTWw4BUAj
	3XPXsXDuTVKpqk4lOrOU2P9Bg5DEaE8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-202-gErhCyZ6NW-2hTc4qtObkA-1; Tue, 01 Feb 2022 14:09:56 -0500
X-MC-Unique: gErhCyZ6NW-2hTc4qtObkA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 32ED339381;
	Tue,  1 Feb 2022 19:09:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 886C560C04;
	Tue,  1 Feb 2022 19:09:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 077781809C88;
	Tue,  1 Feb 2022 19:09:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211J6gxD005796 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 14:06:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5C5D62026985; Tue,  1 Feb 2022 19:06:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 581F22024CB8
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 19:06:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4908D3804063
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 19:06:39 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-48-fWJUtd3cMQOuak5EFgGptw-1; Tue, 01 Feb 2022 14:06:32 -0500
X-MC-Unique: fWJUtd3cMQOuak5EFgGptw-1
Received: by mail-ed1-f54.google.com with SMTP id r10so36697485edt.1
	for <blinux-list@redhat.com>; Tue, 01 Feb 2022 11:06:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:message-id:mime-version;
	bh=9ClYjmRWQzMlOVjbNzzR3SVQ9G8/cfujJUBQEKYAW7g=;
	b=kXI5lwQAQu2+8lPsEUBayU3jkbKIRRrxNuKFiXLi3BAJdmG9zrAxe9iRHT40FosaMU
	MIZbwGAont6KeMfTaNwXzj+pxGc+EUDO6R+41Qf+kI2fPdfWgT6MaFmCqYgMc97Lv5y1
	39yZmkepqTHvHfrVAZfQJtqSZLBVPeGitAWbses6Tzybl7iuXImfsdf9hSvwo+wzOVIc
	WvmeXhpxWno3CRzp7z74lzrWaOdVWL9Xueqp9TqSc1VCby3a9lS/xxeSvppeI14ZnL7X
	NWeKc2rdCa34Ba2185+/x8r1WGhSj/j89Cx6rRpAjg9q8ztkToQCg5fy9bJZETQMQEzW
	iWvQ==
X-Gm-Message-State: AOAM532+foKqCvgWREZx2GKW6kHb6zg7PGCqsJxDOdZuI8XoWyJVaoRl
	1zbr5daBP9+L6Gcj/OFy2ShU6i04DyY=
X-Google-Smtp-Source: ABdhPJxeKYbH+sIyTLHVZhcuRG/kj8AuCzw9y2M3e6eb4bPuTiuMZYpgmQQiEKsJ5bMk3zZF/YoIjw==
X-Received: by 2002:a05:6402:424a:: with SMTP id
	g10mr26853783edb.309.1643742390699; 
	Tue, 01 Feb 2022 11:06:30 -0800 (PST)
Received: from brandt-slint ([197.184.179.114])
	by smtp.gmail.com with ESMTPSA id
	w26sm19780897edq.81.2022.02.01.11.06.29 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Feb 2022 11:06:30 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.study.home>
Date: Tue, 1 Feb 2022 21:06:17 +0200 (SAST)
To: blinux-list@redhat.com
Subject: Revisiting Twitter clients
Message-ID: <59896164-9a9d-e3db-352-4bac97d2841@brandt-slint.study.home>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

I find myself often starting the PC and just doing what I needed to do 
without starting an XSession at all.

Quickly editing a document using, in my case, Nano, simply because I 
actually like it for being simple, easy and effective. Maybe playing some 
music, and now that I've figured it out, reading my mail using alpine.

Is there a reasonably good TUI Twitter client that doesn't rely on any 
kind of XSession?

I know this has been discussed but, since stuff change so darn fast in 
tech, and particularly in the FOS world, maybe there's something new to 
say on the topic.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

