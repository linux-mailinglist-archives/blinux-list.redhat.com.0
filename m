Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 60B29375D1C
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 00:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620339329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SfY/NkbT7u5mkAeifZwlVwPRDsxsvRJTLto+HQM8Irs=;
	b=YbtrRe8nUL/cR+qpI6eAztik19bBJ5TtpNzIvt2Qr8/MinibldM8uD57WXaFB/KF5K9Avb
	QnyXq+s+nwwaQ193qP8vZuAwZcaGGLwTzQRTK9TWllUCO+4weJlNFuyQfKUl3WUKvhDNa0
	R196ZFax7SWZCdoNZ7igJ+3KLs0QZhA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-m5dq3MuqNAGLJ3Yy98E4ZA-1; Thu, 06 May 2021 18:15:27 -0400
X-MC-Unique: m5dq3MuqNAGLJ3Yy98E4ZA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A76D18397A4;
	Thu,  6 May 2021 22:15:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51BAA18101;
	Thu,  6 May 2021 22:15:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 240EC18095C4;
	Thu,  6 May 2021 22:15:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 146MFEBP014378 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 6 May 2021 18:15:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 96F0121B1B24; Thu,  6 May 2021 22:15:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 928F621AF2B7
	for <blinux-list@redhat.com>; Thu,  6 May 2021 22:15:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F1771066558
	for <blinux-list@redhat.com>; Thu,  6 May 2021 22:15:11 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
	[209.85.219.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-89-MqBX_ySNPjaK0MwpOOsd-A-1; Thu, 06 May 2021 18:15:08 -0400
X-MC-Unique: MqBX_ySNPjaK0MwpOOsd-A-1
Received: by mail-yb1-f180.google.com with SMTP id 15so9480370ybc.0
	for <blinux-list@redhat.com>; Thu, 06 May 2021 15:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Du40UxkT2tIosvF3dJgSh7z0I0Rldzj3KBBNqbH0HwY=;
	b=btL0btzQyGScGLVry5VqQSQOr+SnXpyseLExNfr+81MEyZ77CiJ4xKR8hCZUCzyh3c
	zeKLwOk+1WVdA9vF5AVmmocZQO7Pd8+GKlL/J6fmbuI5BQQxt1yQGl0uayfPz0DNIZ8R
	axNDaQdQVzao1xQSsKFdw2aOSeuft1d4kqziv7gyNHLiS3RJVDLJV4Ne3TdhKfFaIhRs
	FFpJRZkLPNtYZaXQvk5tj1wnuRKpttxttaR8VReGtI0YCWgpSHDSVu6LJoZWPdVkyCfe
	48GnmfxTBMLZeV2B4NbB1C9WMyP5Rd1oihuDmGdKdvyx7UYLoeAotG8DYotkYdIGjh2p
	OVuQ==
X-Gm-Message-State: AOAM530xNYTGT/ujimJsI3oAODtSza83YGYa//nnw5WbA5Em5jRF1K1Q
	awNckymGtFMxaZpudY3xeL5YL1mUIMoT25uUrp5cx/8hZnc=
X-Google-Smtp-Source: ABdhPJwNIflWk8OZkj0QHb73/hH4DWRcGVkIsL0YASkAh756PWk2ttMiG+bu0yz5owxJb6qi1M7dKJo+AqyN7+ezHVQ=
X-Received: by 2002:a25:d8d6:: with SMTP id p205mr9107152ybg.252.1620339307441;
	Thu, 06 May 2021 15:15:07 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 6 May 2021 18:14:56 -0400
Message-ID: <CAGz84J+eDUuaXq-xrdVuS8XhWYMwoVcByhqrf9CuVvObm744QQ@mail.gmail.com>
Subject: No Talking GDM in Fedora 34 (workstation)
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Oh, and I had to use an ocr tool, on my smart phone, to get through the
initial user setup, too, but, how do I get the login screen talking?  There
appears to be sound; the volume pops play.  Maybe the 'alt+super+s'
shortcut isn't bound on login screen?  Maybe some gsettings thing isn't
set?  Whatever the case, I cannot get a talking login screen. Since I'm the
only user, it's not a huge thing, but, this should work, as it has done, in
prior versions.


Thanks,


Dave  Hunt
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

