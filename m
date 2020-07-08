Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id C259B21905C
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jul 2020 21:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594235917;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q8RURx27YgqhmIglKUatG+M6CM2Uu3LgXDia+Yc9TTM=;
	b=CKO3YOoaj9UCiVloOdB/6l/nxA3cgHLrWdUZtchQilpZAV3KV5pwlhUR6o/HLer34/DWPu
	VFgTOlmMRd7Pw/Vk+6sI5fOxLspledP0OtXWjNXgvMz7ZPthn6kkK8O8Xtu5uH1uBVDhCv
	uAZXB62tt8c7M3W97w7z6Vv4xdwGqmo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-jxHUw1rePkajC6xsuwQ9rw-1; Wed, 08 Jul 2020 15:18:35 -0400
X-MC-Unique: jxHUw1rePkajC6xsuwQ9rw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB809107ACF2;
	Wed,  8 Jul 2020 19:18:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA88710098A1;
	Wed,  8 Jul 2020 19:18:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02A95180954D;
	Wed,  8 Jul 2020 19:18:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 068JIB5i029050 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Jul 2020 15:18:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 41A162093CC6; Wed,  8 Jul 2020 19:18:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1853D2026D69
	for <blinux-list@redhat.com>; Wed,  8 Jul 2020 19:18:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28A6B924908
	for <blinux-list@redhat.com>; Wed,  8 Jul 2020 19:18:09 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-511-h3stLfiKO5qcwXoy5jLVug-1; Wed, 08 Jul 2020 15:18:07 -0400
X-MC-Unique: h3stLfiKO5qcwXoy5jLVug-1
Received: by mail-wm1-f48.google.com with SMTP id o2so4344190wmh.2
	for <blinux-list@redhat.com>; Wed, 08 Jul 2020 12:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vMzpQyLUggWgeFRJhypgphwm8MAvVRtHm5wmUHjyCmY=;
	b=TBjLF9lV51V/TFKCk3gr5z06JVEl+U3qd5mhFluVmwVCTbiwlS1zZEqqvoLRiNiuV2
	Zr5CNIbI/itvmHxYr7pd3WLZ9WrQelGH18+xpXaGdlrUWBJVVkH/Z0XZZbATzGUAfkj7
	GxFW/WS2ZZIThnxuVJVWJTNfgr5JYO4tF43Dn56V9BXhun+dJ1O/kx/wliIY22re60nL
	14x19zOy+xP+cOmArFQvTvgWmWEwCKYvPvhmoxTpRX/sKK56sBeJnO7en3txp3/eWV4S
	BLjs0ey21tuMZZrONsLgPQuM6glHmfa76ADCdBRf4eLzMHNRB0HwFq7wiGg5y2VYgwJ/
	8PZA==
X-Gm-Message-State: AOAM533RGraK+KSezFvqKgw1imKtSug4aH3RQBCuv89C4oeVivfp2KDl
	gwGdNsYCFyi/arZuIbeZ/Tf0iHB06TcgztA6uieUuEL8
X-Google-Smtp-Source: ABdhPJx5u6cnDsEB0q70AA91CigXcb8N5e+QeDCIrNGD7JreGVL/r3lknBI8pTrubJOTvRNt5C1bITo1L1erFFlgpBc=
X-Received: by 2002:a1c:6354:: with SMTP id x81mr10303971wmb.98.1594235885931; 
	Wed, 08 Jul 2020 12:18:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4688:0:0:0:0:0 with HTTP;
	Wed, 8 Jul 2020 12:18:05 -0700 (PDT)
Date: Wed, 8 Jul 2020 15:18:05 -0400
Message-ID: <CADj8Jxe8GZuE_9xVV7vAuXB7P+pXVEXMj+XPCRyqu8uB+1+a5g@mail.gmail.com>
Subject: jack and orca
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So I got the pulse modules installed and These are the commands in
order that I did.
jack_control start
sleep 2
pacmd set-default-sink jack_out
I got nothing is there something I was missing?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

