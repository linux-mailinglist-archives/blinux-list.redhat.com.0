Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id B4C6318F516
	for <lists+blinux-list@lfdr.de>; Mon, 23 Mar 2020 13:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584968155;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=re/Tfjb8Wj25ZYSiKUi2mY8P628h+x1VtEzFGtfYPOw=;
	b=Rau22kOFpPNcGQcbMPh8VU+nxTL941OyKNnGfz0ZxQPXDqlwpOMAIDCBOxng5odki/5r35
	+Hy0sZk4jPiFnWPo5Mb3+KgQq5IrIAPtXC+VLIuuAAy/dmFPYzA1jNrU5b8c3ngpf95zXG
	JDGivHHGSCUxDxewYXjOdmAqfkqWQq8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-2zotemD7PN-eRcpq6YFA5Q-1; Mon, 23 Mar 2020 08:55:53 -0400
X-MC-Unique: 2zotemD7PN-eRcpq6YFA5Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E5851005513;
	Mon, 23 Mar 2020 12:55:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE4698AC30;
	Mon, 23 Mar 2020 12:55:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A1F018089CF;
	Mon, 23 Mar 2020 12:55:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02NCtRhs026965 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Mar 2020 08:55:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 48FF120316EF; Mon, 23 Mar 2020 12:55:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4566520316E0
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 12:55:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68EF1101A55F
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 12:55:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-170-N8OaDO6aMG6lI_gmyZFajA-1; Mon, 23 Mar 2020 08:55:22 -0400
X-MC-Unique: N8OaDO6aMG6lI_gmyZFajA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48mDrB3f9Lz1XhY
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 08:55:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48mDrB2cGHzcbc; Mon, 23 Mar 2020 08:55:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48mDrB2VM9zcbV
	for <blinux-list@redhat.com>; Mon, 23 Mar 2020 08:55:22 -0400 (EDT)
Date: Mon, 23 Mar 2020 08:55:22 -0400
To: blinux-list@redhat.com
Subject: Re: 2020-02-03 jenux iso (fwd)
Message-ID: <alpine.NEB.2.21.2003230855130.1753@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02NCtRhs026965
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-- 


---------- Forwarded message ----------
Date: Sun, 22 Mar 2020 19:09:27
From: Daniel Nash <dnl.nash@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>
Subject: Re: 2020-02-03 jenux iso

Hello:

The audio demonstration of the jenux install on a qemu vm, along with
playthroughs of audio games can be found at the following address:
https://nashcentral.duckdns.org/media/jenux_and_games.ogg
Enjoy.

Sincerely:

Daniel Nash
On Thu, Mar 19, 2020 at 06:39:22PM -0400, Jude DaShiell wrote:
> Base installs fine.
> mate fails with /etc/postinstall.sh no such file or directory and the
> error continues until the machine is rebooted.
> A file with a certain number wouldn't download in the gnome install I
> wrote about earlier.
> This error I caught since it kept repeating without any intervening text.
>
>
>
> --
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

