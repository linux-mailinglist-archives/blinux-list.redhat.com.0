Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id C1FC01CFD73
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 20:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589308849;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qC7Y/t5R5SSSwY9ettJXLvckm5Sldfqjtn/DvJma5m0=;
	b=IFekz2pDm4pxsWCMyN8OMYxb8wCHAZw1p+he6y3J4WsVhCuY+ocIphPvqaC2BXvbwOHiUW
	gDBg2hfdnHkdxKbXyFNBidmSBY0Qp0a0Ll4yiMjkaXQsH8icPtLYxd+OdDr+cBFpTgAjXg
	GSMVm/dmv+/5+3bXC+YQGKJ8QZva3Sg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-OcvVd22bN-uTrOWLGrsdWw-1; Tue, 12 May 2020 14:40:47 -0400
X-MC-Unique: OcvVd22bN-uTrOWLGrsdWw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D57A1009441;
	Tue, 12 May 2020 18:40:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 229925C1BB;
	Tue, 12 May 2020 18:40:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C0114ED34;
	Tue, 12 May 2020 18:40:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CIeYpi009039 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 14:40:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6DCDE100B8CF; Tue, 12 May 2020 18:40:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6867D103D22F
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:40:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84A77916102
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:40:31 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-338-4N0f4tqbOxmqt35pG-S1NA-1; Tue, 12 May 2020 14:40:28 -0400
X-MC-Unique: 4N0f4tqbOxmqt35pG-S1NA-1
Received: by mail-lf1-f48.google.com with SMTP id 188so11423830lfa.10
	for <Blinux-list@redhat.com>; Tue, 12 May 2020 11:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-language:thread-index:disposition-notification-to;
	bh=rSLOPEl0wrg/afgX0VKY49XZdsckHzMjQJSMQOY7wKA=;
	b=mdmTj0Nlg5Hoi7yDnscM6ULrwzGNjyq9tOt8ithMOIRg/LFcZ0/P+4yjPmAYWQcurn
	wNSWYaG+YwD6+IIAhnAim1wiZMqhZYHcJBUOZqILR7Xhyh51DL8BdK0lhDC0uvkcC1JB
	3mnE4mQ6jucsj9jsqPqySi3d3OLfxyFGTm/W8CoJMSbloxh0x0x5dB/ZaE77n0gKvBiY
	MDhWn/f/43jULGfb+0klH38uwP1LkHbzp7+7gevd/FauSrBqFXCwg2BOcHaKTeGVmXQW
	C81R6iHOrIqEP1rBscHfPt3CG+XC4nPysBcF0+WvH0EvAfiN3xFSpv1t4CTLp4eKzqmk
	jxTw==
X-Gm-Message-State: AOAM532IroVjERCQdCnlgNnphnIkxAQEaMp2E59ISgkTsYMBmEB2XnJ/
	UDd+js7Uw2sbTvQZ4B7eGwAHiZUD
X-Google-Smtp-Source: ABdhPJwZZ9mUMEAiFF41BBTnwijACqBeGNKZHof2fLd9mOPdgZibXwsr3UtHlYNuKWkkbl2+cUYItQ==
X-Received: by 2002:ac2:4c3b:: with SMTP id u27mr15210138lfq.212.1589308825910;
	Tue, 12 May 2020 11:40:25 -0700 (PDT)
Received: from DESKTOPJA0BLKE ([45.222.4.120])
	by smtp.gmail.com with ESMTPSA id
	q21sm15913171lfe.0.2020.05.12.11.40.24 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 May 2020 11:40:25 -0700 (PDT)
X-Google-Original-From: <BRANDT.STEENKAMP@GMAIL.COM>
To: <Blinux-list@redhat.com>
Subject: Teamtalk in Ubuntu 20.04
Date: Tue, 12 May 2020 20:40:22 +0200
Message-ID: <03e701d6288c$cce26590$66a730b0$@GMAIL.COM>
MIME-Version: 1.0
Content-Language: en-za
Thread-Index: AdYojA7UukgTHmd7Qeu4G0wdgqgz6g==
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

=20

I downloaded the TeamTalk software for Linux, but it looks like a messy,
almost portable thing.

=20

Can anyone help me get it =93installed=94 on my system so I can import .tt
files? Having to manually add my TeamTalk servers is ticking me off and
keeping me from other things.

=20

Thanks so long.

=20

Warm regards/Groetnis/herzliche Gr=FC=DFe,

=20

Brandt Steenkamp

=20

Contact/Kontak/Kontakt

=20

Twitter: www.twitter.com/brandtsteenkamp
<http://www.twitter.com/brandtsteenkamp>=20

=20

Skype: brandt.steenkamp007

=20

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

