Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AC798ADE0D
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:33:38 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B825F18EF693;
	Mon,  9 Sep 2019 17:33:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F9545D9D6;
	Mon,  9 Sep 2019 17:33:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2896924F30;
	Mon,  9 Sep 2019 17:33:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89HXV0r030432 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:33:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6F9926012A; Mon,  9 Sep 2019 17:33:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx07.extmail.prod.ext.phx2.redhat.com
	[10.5.110.31])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68F65600CD
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:33:28 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 565ABC08E2A3
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:33:28 +0000 (UTC)
Received: by server2.shellworld.net (Postfix, from userid 1028)
	id C26038C0407; Mon,  9 Sep 2019 17:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id C1D938C030A
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 10:28:12 -0700 (PDT)
Date: Mon, 9 Sep 2019 10:28:12 -0700
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Comunicating from your Linux machine?
In-Reply-To: <53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
Message-ID: <Pine.LNX.4.64.1909091026540.17435@server2.shellworld.net>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
MIME-Version: 1.0
X-Greylist: Delayed for 00:05:15 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.31]); Mon, 09 Sep 2019 17:33:28 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]);
	Mon, 09 Sep 2019 17:33:28 +0000 (UTC) for IP:'66.172.12.120'
	DOMAIN:'server2.shellworld.net' HELO:'server2.shellworld.net'
	FROM:'chime@hubert-humphrey.com' RCPT:''
X-RedHat-Spam-Score: 0.002  (SPF_HELO_NONE,
	SPF_NONE) 66.172.12.120 server2.shellworld.net
	66.172.12.120 server2.shellworld.net
	<chime@hubert-humphrey.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.31
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Mon, 09 Sep 2019 17:33:37 +0000 (UTC)

What about something like Linephone?
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
