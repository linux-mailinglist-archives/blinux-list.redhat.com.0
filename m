Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C31C07971AB
	for <lists+blinux-list@lfdr.de>; Thu,  7 Sep 2023 13:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694085514;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AqcD7WNXWVYec5scZM8st5ZFoj/VWT0j4FEVj4m6uUI=;
	b=Pr9W7thQGfO8ezEo9alHCEQPDy2/FC0oqbSmKde0se7Jr+ufpHNVt/zwMjiqno+sshkfC3
	JIsHuBJaS2sxLy4+4XDJpC0C+eOlKnJRU9swT+ezwPJ6yLUAsSDX1v0hrF94AdoghI8GJh
	dm0CmExXisVqNGtxOwIXPoCZ8PCTnoI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-IEvcHkYHMkOMboc9IrkZ0A-1; Thu, 07 Sep 2023 07:18:31 -0400
X-MC-Unique: IEvcHkYHMkOMboc9IrkZ0A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 944B9101A529;
	Thu,  7 Sep 2023 11:18:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 57D5F21EE56B;
	Thu,  7 Sep 2023 11:18:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 10CB819465A2;
	Thu,  7 Sep 2023 11:18:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 7 Sep 2023 07:18:18 -0400
To: blinux-list@redhat.com
Subject: gtorrent script
MIME-Version: 1.0
Message-ID: <mailman.1572.1694085502.353787.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What follows is a rather reliable torrent download script.
It uses aria2 to download torrents and runs on a command line.
It also uses gtorrent.inp which you create with one torrent url on each
line.
I control the download torrent by commenting the urls I don't want
downloaded.
I haven't figured out how to have aria2 download one torrent then move
onto the next torrent while continuing to seed the last url yet.
That maybe is for later.
The other file this script creates is gtorrent.log.  That file saves
output of aria2 for users to read later.
If you run gtorrent.sh, you can also read output of aria2 on the terminal
as it starts up.
I read long enough to find if the torrent I want to download actually
starts downloading then hit control-z to put gtorrent.sh into the
background.
To check gtorrent.log, I use wc -l gtorrent.log a few times to see if the
number of lines increases.  When it doesn't any longer, I use grep -i
"download was complete" gtorrent.log
To check and find if aria2 finished its download and has started seeding.
Then grep -i seeders gtorrent.log gets me the number of seeders and number
of leechers on the torrent.
cut here.

#!/usr/bin/env bash
# file: gtorrent.sh - get torrents with aria2c.
# dependencies: aria2.
GF=gtorrent.inp
if test -f "$GF";  then
   aria2c --check-integrity=true --log gtorrent.log -d /home/jude/Downloads --bt-stop-timeout=60 --bt-max-peers=0 --bt-min-crypto-level=arc4 --bt-force-encryption=true --seed-time=480 --seed-ratio=2 --continue=true --input-file=gtorrent.inp
else
    echo "useage: put download torrent urls one per line in file gtorrent.inp and try again."
fi

cut here.

-- 
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

