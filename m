Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE2788D1B
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2019 22:04:43 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4D86B859FB;
	Sat, 10 Aug 2019 20:04:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBD4D60872;
	Sat, 10 Aug 2019 20:04:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B1DEA46F4A;
	Sat, 10 Aug 2019 20:04:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7AK1w5a023290 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 10 Aug 2019 16:01:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B799F183DE; Sat, 10 Aug 2019 20:01:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2D086E729
	for <blinux-list@redhat.com>; Sat, 10 Aug 2019 20:01:56 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C7671970DD
	for <blinux-list@redhat.com>; Sat, 10 Aug 2019 20:01:55 +0000 (UTC)
Received: by server2.shellworld.net (Postfix, from userid 1028)
	id A6BE58C048C; Sat, 10 Aug 2019 19:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A63BF8C03E7
	for <blinux-list@redhat.com>; Sat, 10 Aug 2019 12:55:44 -0700 (PDT)
Date: Sat, 10 Aug 2019 12:55:44 -0700
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Working with mp3info??
Message-ID: <Pine.LNX.4.64.1908101246520.16609@server2.shellworld.net>
MIME-Version: 1.0
X-Greylist: Delayed for 00:06:10 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.39]); Sat, 10 Aug 2019 20:01:55 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Sat, 10 Aug 2019 20:01:55 +0000 (UTC) for IP:'66.172.12.120'
	DOMAIN:'server2.shellworld.net' HELO:'server2.shellworld.net'
	FROM:'chime@hubert-humphrey.com' RCPT:''
X-RedHat-Spam-Score: 0.002  (SPF_HELO_NONE,
	SPF_NONE) 66.172.12.120 server2.shellworld.net
	66.172.12.120 server2.shellworld.net
	<chime@hubert-humphrey.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Sat, 10 Aug 2019 20:04:42 +0000 (UTC)

Hi All: I have my mp3s in deccade or style directories. I had downloaded many 
Christian files in my 2000s dir. Since these all came from Usenet, many of the 
file names are not so descriptive. In addition, I have 2 programs here in Debian 
which will display info from mp3tags. mp3info is not good at all but mp3info2 
seems lots better. Here are examples
01-Fading_Fast.mp3 does not have an ID3 1.x tag.

chime:/bell/mp3/2000s> mp3info2 01-Fading_Fast.mp3
File: /bell/mp3/2000s/01-Fading_Fast.mp3
Title:   Fading Fast                                        Track: 01/01
Performer: Odds of an Afterthought
Orchestra (etc): Odds of an Afterthought
Album:   Fading Fast - Single                           Year:  2018-07-01 15:00, 
Disk: 1/1
Comment:                                                    Genre: Christian & 
Gospel
First entry was mp3info. Anyway, I would love to have a tagging application 
march through that dir-and-rename these files to more descriptive names found in 
these tags. But wait, there's more. Also, would like to find all the matching 
Christian genre entries and move them to where they belong. Are their better 
commandline or menu-driven tagging programs I should try? Thanks so much in 
advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
