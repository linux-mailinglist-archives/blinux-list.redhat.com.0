Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 43FC53C8669
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 16:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626274496;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3mBTSp7fuCN+CvllnQIN4KotdnEz5QD5Adb95axJJVY=;
	b=JjT6ovs+uE3o1Qo64nHY9hnDOR50XnwfXnYOBdIQS7UO5tuiMXhpgJ23GAIYBviPktpLUg
	zIXsB6+ebF5FWQBNdGmbmT8dSHzVe0rdEJuGLaiKI6t654B1Z8JWtnbd3LOUBRSkDhZlGK
	9MqQQMkHzXtEjX6x9pdUIPal4mC6oVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-J4zHEPc3O-eDhSSwIM1SIQ-1; Wed, 14 Jul 2021 10:54:53 -0400
X-MC-Unique: J4zHEPc3O-eDhSSwIM1SIQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3A658015F5;
	Wed, 14 Jul 2021 14:54:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF1375D9DD;
	Wed, 14 Jul 2021 14:54:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15ADA4EA2F;
	Wed, 14 Jul 2021 14:54:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EEsZFJ008001 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 10:54:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E18A710E60FC; Wed, 14 Jul 2021 14:54:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC45810E60F8
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 14:54:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC7AD858287
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 14:54:30 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-567-b0knZBpHMcS6Mx3xSAgdDw-1; Wed, 14 Jul 2021 10:54:28 -0400
X-MC-Unique: b0knZBpHMcS6Mx3xSAgdDw-1
Received: by mail-wr1-f46.google.com with SMTP id u1so3626400wrs.1
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 07:54:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=0dguVsj6hDDctaD9gP/Lj+VlEMQojew2YRlMLRZ+XC4=;
	b=e//vLsBdgAU4YXJrgB9Ox5kmbXQxGPWuJgC0HOToPXqWYGInQNjSyJly1Wg7LQjbQQ
	v+T74OsB6t22VZY4zIUQE5/UCQJ1JC7Ag0Yf3hxZW4sWEo6X24w/IEKlU9lCOMGZUU+l
	C5VFQw68XGOH/N66KElw+Zy2La4R5fhzu2TTPVAHhHu4H4pCV4jNqnkSpthBWaxh8XSo
	S/BiIIwIlnCOqMfphm9UOypX26Vl/smvifGOyAH8pboAXwL6NnuM4K+LIUjqvSzpeDLK
	ptB5rMhhvnPxNhCCdw9qoaQnUSmo2TNzzPvuxnVAFeFdP/DeZ1CKJlVpWf3V9vzY8xiw
	GQug==
X-Gm-Message-State: AOAM532ITQB8KdjEPiDkGe4qtQ05QAwFmiRyJ49vg+Y9UyQrYJSZ8njy
	5kQIt9et07hQR3PZzKReKzrrbOzay8MwAA==
X-Google-Smtp-Source: ABdhPJwidmNZB2nRmHt+TVh6RcFta27lOhjJW3DgQ57b9pS7xAarFNC+c6l0SUkDFOQJd4aHUToobg==
X-Received: by 2002:a5d:5642:: with SMTP id j2mr13642241wrw.194.1626274467191; 
	Wed, 14 Jul 2021 07:54:27 -0700 (PDT)
Received: from [192.168.1.101] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id g3sm3013888wrv.64.2021.07.14.07.54.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Jul 2021 07:54:26 -0700 (PDT)
To: blinux-list@redhat.com
Subject: Cloud service
Message-ID: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
Date: Wed, 14 Jul 2021 16:54:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: cs
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

when I use Windows, I use Onedrive. It can store files online and 
download them only if needed. Now, I want to fully migrate to Linux, 
maybe to Arch. Which cloud storage is best for Linux / accessibility? 
Dropbox? I will use Mate desktop, because Gnome 40 is catastrophical for 
me and I need store files online and dofnload them only if needed feature.

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

