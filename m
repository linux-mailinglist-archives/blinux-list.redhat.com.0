Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 5F1F3195727
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 13:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585312494;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AvA8229ZBbzFxm1yo51GpzLg9PATORPI7BbxbYH2mdA=;
	b=Du/Y6SCBrpGM5csvgVl6m5UP6Kbk0Zi6Cwy883D2A9HkpJqFKCz599OJ7mjlFUGCfYGbgj
	1OslNnvMaygdvyeERycveWcZmB5/X5EEQ8PxNmbNAVlXP3MgSb2YsPaEw0kAw8kdI2cgL9
	ogATv4AlIjY5jqE0saI6MIdwkXkyfgY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-wB64sVG6PzODnVigMmRZ6g-1; Fri, 27 Mar 2020 08:34:51 -0400
X-MC-Unique: wB64sVG6PzODnVigMmRZ6g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 91D2F107ACC9;
	Fri, 27 Mar 2020 12:34:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D71E160BF4;
	Fri, 27 Mar 2020 12:34:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4BD188A024;
	Fri, 27 Mar 2020 12:34:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RCYL4l004121 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 08:34:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E6CE4121863; Fri, 27 Mar 2020 12:34:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2D3A121865
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 12:34:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ECCB48FF662
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 12:34:18 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-315-k2YnTPeeP6G33bTXgn9CkQ-1; Fri, 27 Mar 2020 08:34:01 -0400
X-MC-Unique: k2YnTPeeP6G33bTXgn9CkQ-1
Received: by mail-wr1-f45.google.com with SMTP id a25so11256798wrd.0
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 05:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=ngbadZkqglXr7MdK1w0gtEYrPjeXEP+EEzYg792vGJQ=;
	b=WMS3g8o6Cuzgc9IhPIVvEC/Xb+aRCxZl7JGIRXQwZya++pIy7e6sqb9ORj1BtEZ5QP
	auQX2Tq+Fk4GWhiQ0pW6cKtFbc4Xf4iyAGftsVTdj63xFMIza3u4Lu4HKPzodmHo0sns
	gbeMf26BYTPFx+M2DAQACCWplpy+dC5rgQ3n96NUjYsnHAQuU/kiPbc4nFtXMN09Zy3v
	06WoBHoMdML+wtP1/7NGB4ELEH1IUtpuyT46QVOL3pDdR7VN4NN/DgcQWALshuv5/XRJ
	bCmhjvvvJRnWGHsST6UcQhzw8vSRjh7ny4hSKB1zbL7xrmMD78403Ds5nyrna+I29+s0
	GOIA==
X-Gm-Message-State: ANhLgQ3R0G1YMVaIZaYWn2vg3ndG/rD4EQ8NNzCGnitlTHmL0DQ+iLdT
	bNwomjrrgVnzpqvTSsh40gBWn73xdXY=
X-Google-Smtp-Source: ADFU+vswsVNdepFXH0cC0/FmXbC6wtlAhaGahRrKp+YeMPKLR6Xwm3rLiefgG3XWOWcuFdYPv4wTwg==
X-Received: by 2002:a5d:65c4:: with SMTP id e4mr8281664wrw.147.1585312439460; 
	Fri, 27 Mar 2020 05:33:59 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	h10sm6785332wrq.33.2020.03.27.05.33.58 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 27 Mar 2020 05:33:58 -0700 (PDT)
To: blinux-list@redhat.com
Subject: new TalkingArch release
Message-ID: <9a8b1e30-4f6b-5c9b-dc0f-3e9c9d70023a@gmail.com>
Date: Fri, 27 Mar 2020 15:33:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US-large
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

hello. i am announcing a new TalkingArch release.
you can get it at talkingarch.info <https://talkingarch.info>
feel free to use, test and write about bugs or feature requests.

Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

