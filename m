Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 46D9724EA7B
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 01:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598140596;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dhgf8FlQ1YKVGrg4uELEOyewMjOuA9FnqLma9kSEbms=;
	b=QdqtMEZA7yH3i1lp0AXaLN28vFZuBQUeeTCZxghplxuaL/4qy8CFXRNcDJEL3GLhV9saoX
	/i8g0PLm+NYbJpVzhKm9xXFlVWP46PMKwFCmyjHo5KjXV+JF6GLOAftRDxK4I8wYAC41Wy
	+WmaEdXIfaaUrog2JvfzKyaGmNOW180=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-u7d_7BsfO7epizD5Fx0fEQ-1; Sat, 22 Aug 2020 19:56:31 -0400
X-MC-Unique: u7d_7BsfO7epizD5Fx0fEQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1745107465D;
	Sat, 22 Aug 2020 23:56:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AF65756EA;
	Sat, 22 Aug 2020 23:56:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F2C0668E4;
	Sat, 22 Aug 2020 23:56:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MNuCY2032309 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 19:56:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DEB8E1111C77; Sat, 22 Aug 2020 23:56:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAEA61111C75
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 23:56:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69755811E7F
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 23:56:08 +0000 (UTC)
Received: from v.cs-x.de (v.cs-x.de [193.30.121.81]) by relay.mimecast.com
	with ESMTP id us-mta-33--ydpohMGNvurW-yr1YCK3w-1;
	Sat, 22 Aug 2020 19:56:05 -0400
X-MC-Unique: -ydpohMGNvurW-yr1YCK3w-1
Received: from [192.168.1.153] (p5b21167d.dip0.t-ipconnect.de [91.33.22.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (Client did not present a certificate)
	by v.cs-x.de (Postfix) with ESMTPSA id AE3F913C477
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 01:55:54 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Subject: Trying Slint
Message-Id: <6C4ABCA6-7F62-489D-B025-B06C680722D4@schoeppi.net>
Date: Sun, 23 Aug 2020 01:55:49 +0200
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07MNuCY2032309
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

is the SourceForge site for slint the right place to download the newest installer? Just wondering, because the latest update to the installer is from March 2019. Is this OK or is there a more recent installer somewhere?

Cheers,

  Schoepp


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

