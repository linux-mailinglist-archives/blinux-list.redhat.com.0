Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 0D98E1C7E98
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 02:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588811904;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9c5lKoRVNh84XV1x6ccKNnXzSN1wHrc4Hdw1pvcmdcU=;
	b=Y36C8KVjffKtSM86YiRpHD1cbjOnsWmWgdxRMfPi76dYmlBNz1IbKwX/Fs8N0Zgbnvqn5d
	WlClHHKicYLHg+jST+/MHhhCKOvsTXmBvR+umfn5WUj7WDA4i8MGZzE+2e/4uDzWOuU4hq
	BdPKbuSxi/ts0h1E4I/7WzxojNJIkQ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-3y7VfQ9MOWSB2owLX_o-nA-1; Wed, 06 May 2020 20:38:21 -0400
X-MC-Unique: 3y7VfQ9MOWSB2owLX_o-nA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18D731005510;
	Thu,  7 May 2020 00:38:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFD0D5D9C5;
	Thu,  7 May 2020 00:38:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32B321809543;
	Thu,  7 May 2020 00:38:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0470c0KT025327 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 6 May 2020 20:38:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 19557F568B; Thu,  7 May 2020 00:38:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 157BDF5688
	for <blinux-list@redhat.com>; Thu,  7 May 2020 00:37:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AB978007C8
	for <blinux-list@redhat.com>; Thu,  7 May 2020 00:37:58 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-166-Yq2nse_DNye-MGgqmdwi7w-1; Wed, 06 May 2020 20:37:55 -0400
X-MC-Unique: Yq2nse_DNye-MGgqmdwi7w-1
Received: by server2.shellworld.net (Postfix, from userid 1028)
	id EF6B38C0595; Thu,  7 May 2020 00:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id EDA258C0133
	for <blinux-list@redhat.com>; Wed,  6 May 2020 17:37:53 -0700 (PDT)
Date: Wed, 6 May 2020 17:37:53 -0700
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Tab-Completing a Program After man?
Message-ID: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0470c0KT025327
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi All: Supposedly this may work in bash, however, I would like to do this in 
tcsh. Sometimes I want to explore man-pages with tab-completion. However, it 
only completes files or directories, not programs. So typing man  lyn  would 
show 
lynx.cfg and lynx_bookmarks but not actual lynx. Can some1 please suggest how I 
can fix this in Debian? Thanks so much in advance
Chime


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

