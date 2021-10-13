Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 92A9F42C088
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 14:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634129292;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mmo4M/9hDNIaxsXK361XuFHrOd79LaOXOtglnzQsdJQ=;
	b=eRqEq2qCWrf9SEgLNomI8T719Gs/NsheDVr4pUKy7bnYocW53UEQDJBG++cF8j7fQqPCa9
	JKfERoRdlpGTJ8P3xjUKqW/CjzFame9uNmsaN/eu1YCl30AGc/FALjOxvhP8sUvC7U1oP+
	uJl4+ZBRgANrR0RMfCtThpvLo+dvG8M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-qSjSvhpeMPqzKhgUnD_eyg-1; Wed, 13 Oct 2021 08:48:08 -0400
X-MC-Unique: qSjSvhpeMPqzKhgUnD_eyg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 483DA10B3940;
	Wed, 13 Oct 2021 12:48:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B85B19EF9;
	Wed, 13 Oct 2021 12:48:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C07C51800FDD;
	Wed, 13 Oct 2021 12:47:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DCleuU006172 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 08:47:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D4E7C111D7B7; Wed, 13 Oct 2021 12:47:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF2DB112D437
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 12:47:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B25A7800B28
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 12:47:36 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-326-MqnEz6J0NJaUZuUxz49_7w-1; Wed, 13 Oct 2021 08:47:35 -0400
X-MC-Unique: MqnEz6J0NJaUZuUxz49_7w-1
Received: by mail-pf1-f176.google.com with SMTP id g14so2376778pfm.1
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 05:47:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=QtnxJqmbKVgCJOJ9+GbYuN5oxZL7PRPYwYuAhcYB2KI=;
	b=4lqDz48+1PA7u6toaEPBT+GsjBwQt5k4BEUFHCVeYca+E5MDoCtDfIoyDzmgB67VT/
	CBuHPxWF9Qt5FtuXlSlP9AUMO7aiWFS0z8fS0gBGjAuNuKH/GZzZ+6778rpeTlqK6elk
	SzYPZt9idywD5tqvkK+sy3JGvrBrmYbECUZp9sSjEbmKw1oHQQuKIbueZibBwF4bJ7zj
	Ts08fYjd2ojy20uJJldIkHsbbLo+KocqsicV4K2z4ONl31vOQozndW6Fi2Ze9y+RWUWe
	EVqrPdgD56CunC4G1nSdTUP2/Tg6/IDDbsuKPMSBp4rKO23V9e5l/JXOZc6PZBBUTFON
	vWiw==
X-Gm-Message-State: AOAM532NUs6lvlBa1SUHExDfCGu8YNuTrPo550xp7EWmQjVqj1FHqDZV
	aWgAp8DFvTL4BvzirdU4/ZG4keg/yAI=
X-Google-Smtp-Source: ABdhPJyDy8po7lqh7DnKRoboZds0F4LiybV6+2yFHIG/7X2SIygqFIz9MWRArV1nNY/eHtZ6TlS+ow==
X-Received: by 2002:aa7:8042:0:b0:44c:78ec:c9a9 with SMTP id
	y2-20020aa78042000000b0044c78ecc9a9mr37250756pfm.45.1634129253590;
	Wed, 13 Oct 2021 05:47:33 -0700 (PDT)
Received: from [192.168.1.101] ([103.121.18.11])
	by smtp.gmail.com with ESMTPSA id
	p13sm5730274pjb.44.2021.10.13.05.47.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 05:47:33 -0700 (PDT)
To: blinux-list@redhat.com
Subject: GRUB boot tone on Fedora
Message-ID: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
Date: Wed, 13 Oct 2021 19:47:30 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi list,


I want to try Fedora on my laptop. So far I really like the experience 
from installation and all.

-- Next I want to add some minor tweak which I like from Debian based 
system which is boot tone.

I try adding "play x y z" to /boot/grub2/grub.cfg but nothing happened.

I hope someone can throw some suggestions. Any help is greatly appreciated.

Btw, it's an UEFI system.

Regards
--
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

