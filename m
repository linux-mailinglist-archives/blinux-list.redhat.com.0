Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 4C68B1A9745
	for <lists+blinux-list@lfdr.de>; Wed, 15 Apr 2020 10:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586940432;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ybr1T+hMq/4Lo2Z/jaiyfUa9dOirfemmIab3tJrS59c=;
	b=de/9AH95rf2vTaPIWAW3eS/Ory1LP56q5MO0QI0sWLexLVX+60tbbzwPJsJZJoWmZq34JL
	6Hz7dJPJASQ1L5Ea+rzq0XxHHrc/nHY//3Vkm32RhAfV3A3RWQL0EhQJL264jmXCxXNXBA
	ymxJ2kVk8pJ/qDI7OMZPS8mJWqGZjPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-NMtVZYI2NuKDn6_YkJxcnw-1; Wed, 15 Apr 2020 04:47:10 -0400
X-MC-Unique: NMtVZYI2NuKDn6_YkJxcnw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA558107ACC7;
	Wed, 15 Apr 2020 08:47:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1944C60BEC;
	Wed, 15 Apr 2020 08:46:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D0B2293065;
	Wed, 15 Apr 2020 08:46:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03F8kdFR015552 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Apr 2020 04:46:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED4741004035; Wed, 15 Apr 2020 08:46:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E77781004047
	for <blinux-list@redhat.com>; Wed, 15 Apr 2020 08:46:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8ED59185A78F
	for <blinux-list@redhat.com>; Wed, 15 Apr 2020 08:46:35 +0000 (UTC)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-490-ZGzqwlj5OZCkctAcSusUBw-1; Wed, 15 Apr 2020 04:46:33 -0400
X-MC-Unique: ZGzqwlj5OZCkctAcSusUBw-1
Received: by mail-qk1-f193.google.com with SMTP id j4so16313094qkc.11
	for <blinux-list@redhat.com>; Wed, 15 Apr 2020 01:46:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=i0PYE4gOwFngTPu/eHr986LPIxVcHW1UgW14Ta3T/MQ=;
	b=OGjqKfoWj3TwRng5n79dcH6QJtWo+FhL9L8PSDnaVR3k9SCtfgOIGI77TLOwlArjJb
	cBOe3Nh5b2h2PpDT3P8zYgJcg37SSqxX1BwDmm8N0WzutOdE96uuIjGw/QU2CloqU/HT
	j0XyxjWxmajNsMSqd6cyrulZ5PxzduqGtEvGztvfkud914G6mNSRxuZkGEvZzCNjreKX
	Q39TV1Dfh1qu1CVVUldBjqXOugEVfUYN257mkXFsbcOg9PgZbciOTjKdxgixeEC74Wdc
	57QyFbmOFs32hUWCcNr7moM3xkauA3emqQipxr3Q9JQ45ariEBSBEHLPSOWCB9WhgpMq
	48IA==
X-Gm-Message-State: AGi0PuYK+RkI7J8NlPhvX6DcznTYQVvYKLQ/aNQSr+wYMWD681b/V+gf
	PV0UEDud4ZmKbTozoN/BbrcTcvto
X-Google-Smtp-Source: APiQypI0aiKKFSLun5F/Wz8NKbINXpuWIhmhnGqA1CJdNmHQMmI0XJ9VDLZJQICzt+YmhHIChauLfQ==
X-Received: by 2002:a37:4a14:: with SMTP id x20mr25329098qka.357.1586940392445;
	Wed, 15 Apr 2020 01:46:32 -0700 (PDT)
Received: from [0.0.0.0] (24-220-234-87-dynamic.midco.net. [24.220.234.87])
	by smtp.gmail.com with ESMTPSA id
	u15sm12773024qte.91.2020.04.15.01.46.31 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Apr 2020 01:46:31 -0700 (PDT)
Message-ID: <20200415.084619.461.9@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: A question about kernel compilation on Debian
Date: Wed, 15 Apr 2020 03:46:19 -0500
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03F8kdFR015552
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm building linux-5.5.13 on a debian host with kernel version 4.19.0.
In the compilation process I got this error:
	make[1]: *** No rule to make target 'debian/certs/debian-uefi-certs.pem', needed by 'certs/x509_certificate_list'.  Stop.
In .config we have the line:
CONFIG_X509_CERTIFICATE_PARSER=y
This system is booting in bios legacy mode. If I change
CONFIG_X509_CERTIFICATE_PARSER=y
to n, will that render my system unbootable with this new kernel?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

