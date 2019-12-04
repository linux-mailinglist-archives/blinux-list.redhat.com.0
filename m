Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 78CD7112631
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2019 09:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1575449993;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wshmJJphekH/ChyZAiyq13xJrwHFoI5UU0K3S4B1+eg=;
	b=I5ZecbjAPFq7mi0Z3VB4TsQDvS8VV6x5/Dm68iKDLM7qCieUosavglhjQThp+aKWAehodJ
	7Uz70nYp364Sik3ne+B8dHGoZvtzvMFTtZObQCTrHdOOJlzKY52TlweWj1NeE0n+A7kRsv
	7p54BKMvd52IXW0euKmlsjFYcDgw1dg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-modRBBMjPa2KxaGodRIEew-1; Wed, 04 Dec 2019 03:59:50 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26ABC1052216;
	Wed,  4 Dec 2019 08:59:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D31960BE0;
	Wed,  4 Dec 2019 08:59:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F19FB18089C8;
	Wed,  4 Dec 2019 08:59:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xB48xJ3T019449 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Dec 2019 03:59:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1EAF12166B35; Wed,  4 Dec 2019 08:59:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18EEE2166B32
	for <blinux-list@redhat.com>; Wed,  4 Dec 2019 08:59:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D45DA185B0B8
	for <blinux-list@redhat.com>; Wed,  4 Dec 2019 08:59:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-17-3RylGQZZMHuMJJIVxOLsPQ-1; Wed, 04 Dec 2019 03:59:14 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47SXpV2ffxz1M5S
	for <blinux-list@redhat.com>; Wed,  4 Dec 2019 03:59:14 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47SXpV123szcbX; Wed,  4 Dec 2019 03:59:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47SXpV0btHzcbW
	for <blinux-list@redhat.com>; Wed,  4 Dec 2019 03:59:14 -0500 (EST)
Date: Wed, 4 Dec 2019 03:59:13 -0500
To: blinux-list@redhat.com
Subject: rclone and dropbox
Message-ID: <alpine.NEB.2.21.1912040357120.27575@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: 3RylGQZZMHuMJJIVxOLsPQ-1
X-MC-Unique: modRBBMjPa2KxaGodRIEew-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xB48xJ3T019449
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
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Has anyone managed to configure rclone to work with dropbox yet?
I'm running latest version of the program and the local authorization url
doesn't work in any browser I've tried so far.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

