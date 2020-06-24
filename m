Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 5641420782B
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 17:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593014308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zQfHBqH25YNyQmIbjoeq8UIeR9C3ZXO6QuWX/Za4llA=;
	b=Gia/IV+6+feHZ/OXTFncVY72tPO/fZfRfUvLq8cE3oJt5gXUvDGN9D6mDaPMozMzpnyrKm
	HcD2kkxp/lbDMQVyiw0Daf8KosMD6w7u0AQmK9x2tgYVW4qYJv187X1GJvHjOd3kSCSomx
	zPZsBd9vRC2M07VhloE8XlMmp++ejjc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-sYgSjdItNX6SB827hdjjKQ-1; Wed, 24 Jun 2020 11:58:23 -0400
X-MC-Unique: sYgSjdItNX6SB827hdjjKQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D99D800C60;
	Wed, 24 Jun 2020 15:58:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 180771001925;
	Wed, 24 Jun 2020 15:58:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C7A41809542;
	Wed, 24 Jun 2020 15:58:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OFwBZd031713 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 11:58:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D7CD1EE877; Wed, 24 Jun 2020 15:58:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3A6DF1010
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:58:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FBFD1859160
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:58:09 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-342-QlvYaDX7OXmHSzEqmycA8Q-1; Wed, 24 Jun 2020 11:58:04 -0400
X-MC-Unique: QlvYaDX7OXmHSzEqmycA8Q-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 55902103B6E5
	for <Blinux-list@redhat.com>; Wed, 24 Jun 2020 08:52:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: anonymity, threads, signatures, and confusion
Message-Id: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
Date: Wed, 24 Jun 2020 08:52:01 -0700
To: Blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OFwBZd031713
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In reading some recent discussions, I've been completely unable to tell who was posting some of the messages.  This has caused me to be confused and discouraged.

The underlying problem is the way that the mailing list handles "from" addresses, giving no information about who the sender might be.  I really think this needs to be fixed, but that is probably not a short-term goal.

In the meanwhile, I implore folks to add some sort of identification to their messages, so that readers can follow the conversations without undue confusion. It isn't necessary to provide an email address, or even a full/legal name.  Just give us some way to tell who's saying what.

For example, if I were worried about protecting my identity, I might use an alias such as rdm or RichM, instead  of my full name.  Instead, I plan to provide both my name and email address (as shown below), so folks can contact me off-list, etc.

- Rich Morin (rdm@cfcl.com)


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

