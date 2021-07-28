Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A68063D90C4
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jul 2021 16:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627482991;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O6KXv9bLqd8cgjrXyFU3GomHnZiVzWrMz0K4OvQY/KQ=;
	b=VXwNg0aSd/vRel6muC6rF8svFhEFylUtXc6eeI7w0Jyc7hnRW7xNdkyduk2dWkg8ARL2Wu
	WGPae76NHj2n8bW5EMoHcNIs/OHLL6ztrlhLjruPA7VUjTMi7ORkvndNY2HntqLIOUjntP
	Qjefqwiby/0q55/u0WsvZBagE+fSLBY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-PXR5RHnpPsSkHoSJX1pUYQ-1; Wed, 28 Jul 2021 10:36:30 -0400
X-MC-Unique: PXR5RHnpPsSkHoSJX1pUYQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C010887D56D;
	Wed, 28 Jul 2021 14:36:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7278769CB7;
	Wed, 28 Jul 2021 14:36:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F10E44A700;
	Wed, 28 Jul 2021 14:36:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16SEYmom005010 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 10:34:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9210C201B0BE; Wed, 28 Jul 2021 14:34:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BB6C201FD0C
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 14:34:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83611800159
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 14:34:44 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-152-TvMYEvItPT-_Sh4YeqYfeg-1; Wed, 28 Jul 2021 10:34:42 -0400
X-MC-Unique: TvMYEvItPT-_Sh4YeqYfeg-1
Received: by mail-wm1-f54.google.com with SMTP id b128so1566365wmb.4
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 07:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=9Ysk7ym73RAALTJNkxc9th13XTWrrnZV1UJH184PrYk=;
	b=bohxjLXR4/RiS3ko9DmIxawyh4x25dN6fGhRa9PjSZ+rnRoxg7OEoF/0BqjwRtRgZ1
	SW1tzc0b3bLYyFwFO69ULJjS2Jv8BVaHGRNoZvyfHKGX6/vvLTl2wTJchpexSxLhgFdu
	R1Kxe+98Qcp4rPKmtKWKN/PaxTPnqugBPL1G2ngKmWIGxyU/9Pr+7bLWi+tYZ4znzP/S
	t7220TuC6fOpnHPqkYXqP6ThTUdngOBduO0E/BTfsJIBUYOtjFGrjrd/igFrIQAjdrC8
	MMBtJrVz7jQnz9ajjnwkovcS/cwG/PbesNY3sHcmB73/3TmrwDN8dD+SuSfld/Dg3F9N
	LIKQ==
X-Gm-Message-State: AOAM532XqrC6H1nv+hFayo7UNm8Viw8Z+P2oxfcpoUHuTJw23Foz9UeJ
	xGeTrvqEXypzLQ5IbALZs85zkYjxevsZOw==
X-Google-Smtp-Source: ABdhPJypDtIIlpzFlx2ZC45dbq3K4gT5zor09Np3OePqqIrPHSunzrAC6uuEEL/m4MN1Jc9800dk5g==
X-Received: by 2002:a05:600c:1c0d:: with SMTP id
	j13mr55258wms.34.1627482880502; 
	Wed, 28 Jul 2021 07:34:40 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id
	q19sm5932772wmq.38.2021.07.28.07.34.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 28 Jul 2021 07:34:38 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Open Suse install?
Message-ID: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>
Date: Wed, 28 Jul 2021 16:34:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Hi all,


I would like to have a play with Open Suse tumbleweed. I would like to 
know if the installer is accessible, and if so, how do you get it to talk.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

