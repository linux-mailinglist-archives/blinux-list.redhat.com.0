Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 12846410DAF
	for <lists+blinux-list@lfdr.de>; Mon, 20 Sep 2021 00:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632091723;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RZQjOyKHKIu6m9N61muyOWtz8VGteBF+vZrV2xauBpQ=;
	b=inGa+RiuhUIFBs/APkyFaOp72Z/HPQ7dLebkukTgYtKU0ynLyW8bPQPOVwn3h2Yy74XC09
	vgVkgsLUOc0GJqDRyiRlkEUdXI9uMqscwYMXi/YiTDNq/BaFUpFUFX45N45i06F5VoXClC
	V7eaCj1F7brzWv8TbjBlDLw1hkC7N1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-hnFFA9SVP2agVGK3VvzGpQ-1; Sun, 19 Sep 2021 18:48:41 -0400
X-MC-Unique: hnFFA9SVP2agVGK3VvzGpQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 10B2F800FF3;
	Sun, 19 Sep 2021 22:48:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8714853E08;
	Sun, 19 Sep 2021 22:48:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD0A54E590;
	Sun, 19 Sep 2021 22:48:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18JMmG5d006522 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 19 Sep 2021 18:48:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 113FB2167D8E; Sun, 19 Sep 2021 22:48:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C5D42167D88
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 22:48:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EA1E899ECB
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 22:48:13 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-85-rFVQ3sCMOcye4iJiiL9WYg-1; Sun, 19 Sep 2021 18:48:11 -0400
X-MC-Unique: rFVQ3sCMOcye4iJiiL9WYg-1
Received: by mail-qv1-f53.google.com with SMTP id a9so2148512qvf.0
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 15:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=wIvrIn+wp8nHzgC52M/VTZmtsUICDogrN7fvVLKOKy0=;
	b=KfY8yR9cS6O0k9gqgHz8Gvyd32sUlbr5ovTvVJc8BQMHeJOO6UZ14asS77jdV4jEoh
	iuCyyZF7KInYZkSkmrP09TxAsXVD1LscfpuX4QxSwChYvqXON2RItCh37lOm7Wq8O/5K
	KUz82gny3aNCcMBvmUPKjEhkAehp6Euw1W9sQRw35bsj4924dhCivX3PniDRutX58DN9
	Oa2LDxLjA5JNAlzkaro9w5f+3IyxzQbJPg9t5v5LbhRK14A4+Cg8N+oRXBbqdp7f86/1
	dZezbfqkwICMFogJNmpCOSp2gHzmJEp70+MmCXqnetK597am5wNm/dWXljRbuz+ziH5E
	XOEA==
X-Gm-Message-State: AOAM532lcweFvi3JoPs5l+Qx2B46A/vML8S658+TCWI/Q09CJVUoHrBs
	i/EKuG3S4fg05IhnafFJFkahuKfK0gLCVw==
X-Google-Smtp-Source: ABdhPJzasCmjlN+oA6erlJXvpR5MzD/7/L8oPXxseY1uw6G9UFP6BgWxAizrqOO9cB3SpfXv6wu0pw==
X-Received: by 2002:a05:6214:1271:: with SMTP id
	r17mr22590866qvv.48.1632091690775; 
	Sun, 19 Sep 2021 15:48:10 -0700 (PDT)
Received: from smtpclient.apple ([2601:192:4c80:1420:4c01:17b6:369d:d6df])
	by smtp.gmail.com with ESMTPSA id h12sm8022752qth.1.2021.09.19.15.48.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 19 Sep 2021 15:48:10 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 19 Sep 2021 18:48:09 -0400
Subject: How to unmute pulseaudio from command line?
Message-Id: <A3A4EA2D-6149-4523-8D02-F26520A3A009@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18JMmG5d006522
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!

I accidentally muted the sound on a new installation of Ubuntu Mate 21.10, and cannot get the thing talking again.  I don't think amixer is the tool I need.  

Thanks,

Dave 

Sent from my iPhone


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

