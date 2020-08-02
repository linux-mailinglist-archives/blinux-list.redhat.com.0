Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 82236235648
	for <lists+blinux-list@lfdr.de>; Sun,  2 Aug 2020 12:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596363923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=65MAci7m8svQuXFoYhrLITmXJCdLuYPRQc5CW9/pi/o=;
	b=F8XYpU0XgWtvAw+NUaWzBZtO4PDk9fLS790NPkbIK6F8PpVT3Zfa81W+aXOCqCLdPZrUU8
	+7vWRfiba37aq5LoGHN9p76HFcEagRCfXkR+T3x8qv2qwW+gwc4yXtLtSOzgmmEhX8B1fK
	a5lzAugET21YtSTuUFCDvTwn9D7wa/k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-TV7VVYE-Pk6pfGrT08Xpwg-1; Sun, 02 Aug 2020 06:25:21 -0400
X-MC-Unique: TV7VVYE-Pk6pfGrT08Xpwg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E69551893DC0;
	Sun,  2 Aug 2020 10:25:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 519A07FEA9;
	Sun,  2 Aug 2020 10:25:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3897B1809554;
	Sun,  2 Aug 2020 10:24:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 072AOn7B007257 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Aug 2020 06:24:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A63BF11CC25A; Sun,  2 Aug 2020 10:24:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1EAD114F26E
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 10:24:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C57EE8007CD
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 10:24:46 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-140-j5hhYLOnNoS6K853HBQ5dg-1; Sun, 02 Aug 2020 06:24:44 -0400
X-MC-Unique: j5hhYLOnNoS6K853HBQ5dg-1
Received: by mail-wm1-f53.google.com with SMTP id f18so9237220wmc.0
	for <blinux-list@redhat.com>; Sun, 02 Aug 2020 03:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1f2ETcNsXNN3zGXiKlGWLRs1wZOihh0SlpBxrGAO5z0=;
	b=i1+q3uIPa2ucLQcitIddN+xaY+IsMedBnObao+QrbssLgFdenoW1Qsw2Nb2dBMH776
	nBafOc2uvdW3jw05NQsP3nGmZGbxvqk2Dta+3Y4ULbe4YYU/hJ82oRO+ewCpuEbVD4cW
	cN3MdLjZz9moJut96IXJYzdWtGbQZqA0H8ZNmDeRLVVJzItXKSml4dSwfhLcqeUeDh87
	R4YLJYidIBU328DsZfELjgWN4WePY43bqj7WFpL/USz5fb8pxdUvTuzOu6ClXWYIbeMj
	wkLknX6rFKcrtNIZE+HjITeTkOp7b2mIHVX1IGkJNqhPE5GVxMdqrJWuCycAwFsjEvJk
	mkYA==
X-Gm-Message-State: AOAM532L3DC4VvoMkAWvAun7o72FnH+d+shnGTaCJ6lomS4CXs1DR2IF
	s2umaN5IVlkKUCeSWE8g5AQQNBipxNMTDbQ/PTz9aw==
X-Google-Smtp-Source: ABdhPJz3lQUfRf1bHmu7Td8GmA02nmUQhKiZP6axtXLz0nAhLlkmSrQlLCL9pL3BKRZNr78TWYc6nvz5Lx8S1Lo/oUE=
X-Received: by 2002:a7b:ce0e:: with SMTP id m14mr11830062wmc.160.1596363883024;
	Sun, 02 Aug 2020 03:24:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6000:11cc:0:0:0:0 with HTTP; Sun, 2 Aug 2020 03:24:42
	-0700 (PDT)
Date: Sun, 2 Aug 2020 06:24:42 -0400
Message-ID: <CADj8Jxeftx5wEP7BBgW5rgr2=vhn2R==8EyBd+QZWN4-1G8Stg@mail.gmail.com>
Subject: tips for using gnucash
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So I'm wondering if anyone has played around with gnucash? It is for
the most part accessible but I am having a hard time entering
transactions.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

