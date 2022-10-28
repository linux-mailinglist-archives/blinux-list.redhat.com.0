Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5FC6115E4
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 17:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666971115;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4kQ+SNnSC02owAh0WIZ2grJuGvMzFPl7JTYcOdCUqg8=;
	b=dvviWBUjtMLVs2E1ozFpZvnKvlRdqFCLXwn7IgukV/bOIohhQ7BCnU72T3F5qzKZI/cxCr
	3vFVJKUL/8D76GWmhOYDGghXeu/dGnGndcJQqzoejS1fdWRFs2Cjw0chIJv+AlGFTT7iJP
	7g/rsO5hKgxHfL44P7VWKwqVlx6Gf8w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-395-xPQNwYHpNBaO0_XEQDw8bw-1; Fri, 28 Oct 2022 11:31:52 -0400
X-MC-Unique: xPQNwYHpNBaO0_XEQDw8bw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA7D9858F13;
	Fri, 28 Oct 2022 15:31:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8C4A02166B26;
	Fri, 28 Oct 2022 15:31:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EEAD21946A7F;
	Fri, 28 Oct 2022 15:31:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: better way to extract dvd audio with ffmpeg
Date: Fri, 28 Oct 2022 10:27:00 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.1.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9jwC39jXXZU=;FHbQu0Fcl+JzzC/pav/U5noTaZk
 T0/NaD0Rw0ZVAlT4VqgewpWhU4X/KUNl5gNxZ2SX5+Ph2luMpl7aCerdS4aVCXqwLNeIvbPp5
 RAgYYXdtY+Qppfd19DYqDM56njrXczxUieLiK92h5rqXuHCR8UN9kyLEvgUEAhg71Y9QQsjnS
 vMOG0Hku/uUJuOlzn4wUMpkhNQ557AySH3o5n/BA1kGTc7aO43YWhY561RxyDv8eV2CiEVDJH
 kjPPKqY+Iwi/r+G1cE7mmY9ker2zYweuEYlCwN4m/FDcBt+0/16qWwZD4m+fas2uuR2oxQd3U
 2lUQkiH91dQiKivr4BgdZwnbkbGNOinYFMIEomfZ9Fu97/F3264CrTos0qEtSNOxE9esCzAlf
 M6JDA/TTdVQeCZHqFqZ20j9DQMQSHEhyWFHBe3ZqkTdqdla0kibj3QgG73ZLeNKHWPqp/Q1LD
 0SdWNqB3saOqvyKE6eZtAspYo4xjncMoy2p0M9ImZjUDsnSD8GoRsEG4Vwf8hy+RlBHkFOalV
 DL9MhBLhUe/AI6mXqbmG5mGdn5ZoRzo0KvBwLf7q1xERSXwrgbKOjeSfOTY4sjIPyGe9o62u2
 hGue/T40/7iR1rCkel/3Vl1X5jXHSgHSo1srxLZ9JCG6iGhXQm5Dg1j0qVlJpLaW559QtTEs/
 Q/H0xj+5VnGvGy9x1uk0RrsBk9ieHPGXvNOs9Ew0M25rX2MAjpwTg67AHtO+jgD0UJQv3WPPR
 82HpcEuD0xpEiQ+xoffL5JK2maT0a8VmzSoS/ckMqa1VgqgvHnbdiXAEAtaxP1BLr/pj4R9uz
 C1VnOjGRA+kBzQzPH15MKz6L3WzYkrpYEI6V/tA6Ku0kKrufxLAkpaMydPPwkQzNehB0ALOpE
 1MCnKgCjglGKGSYZ5y1VZjB9iJCRrR2NVd8Al4AIsPi/nYozBVK1wv98QOBpkn6Mh3iK0P2XX
 kyuGnzH8MR4UEPjfwDhxXvsMBLs=
Message-ID: <mailman.3402.1666971107.3004.blinux-list@redhat.com>
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

So normally, when I get a dvd, I go into the VIDEO_TS folder and go
cat *.VOB > ../video.vob

However, ffmpeg often complains about invalid streams when doing this. Is there a better way to extract dvd audio?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

