Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8F528A80F
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 17:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602431473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AgFcWyoVAK3omLbAxz2B6XvcLYlfpYivZUSkjkWnFgk=;
	b=ffyQ8dXo5iDJQlIbQh86btC7vyFaDMcXDxgUEGTEmj2khRK38CFJicDNv7v5tWP+mQ0s7v
	PR1xXkL/B0+B8J4uC+0FAJMwlDwllNVt5KfATOJxWOQK71PKV+fkbSFBsrsg2IiNzo5whu
	9eVYfgX7o/B9/daZq1OiRiOs4kwr8cU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-P2QHI2jKNwO2HdrLjjWH_g-1; Sun, 11 Oct 2020 11:51:10 -0400
X-MC-Unique: P2QHI2jKNwO2HdrLjjWH_g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C2FE107ACF9;
	Sun, 11 Oct 2020 15:51:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 030621964A;
	Sun, 11 Oct 2020 15:51:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 330BA180B657;
	Sun, 11 Oct 2020 15:51:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09BFp2lW013003 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 11:51:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EAE3F206323A; Sun, 11 Oct 2020 15:51:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E34E02064011
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 15:50:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AC15804C9D
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 15:50:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-175-503NMXevMa6KMksvaa75HA-1; Sun, 11 Oct 2020 11:50:57 -0400
X-MC-Unique: 503NMXevMa6KMksvaa75HA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C8R9X6GgFz1p0B
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 11:50:56 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C8R9X5MfHzcbc; Sun, 11 Oct 2020 11:50:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C8R9X4xk3zcbW
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 11:50:56 -0400 (EDT)
Date: Sun, 11 Oct 2020 11:50:56 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: have we any irc experts on the list?
Message-ID: <alpine.NEB.2.23.451.2010111148340.24507@panix1.panix.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Subject was wrong on last message I sent to blinux-list.
For irc does a way exist to read some of the past traffic that happened
in a room before the user entered the room?

On Sun, 11 Oct 2020, Linux for blind general discussion wrote:

> Date: Sun, 11 Oct 2020 11:42:22
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: have we any experts on the list?
>
> If yes, does a way exist for a user entering a room to list traffic that
> happened in the room before the user entered the room?
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

