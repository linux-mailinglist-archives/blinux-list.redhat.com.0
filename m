Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5A36B3D094D
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 08:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626850785;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UB9PiAn8uxHZMWkBnqDExvulsSnBOV2XYfTcecK5MKw=;
	b=TiiHvxc2NFgjJsbOQYu6lSPerzf+EJe3Qw0FqpRv69WO6TRbKdJSPhiiGbrJ6vTsJz3utT
	eHzFHjzsGCjVfOnkjnK59KVVxiScdfWY5n+QE4Ub6nxqShGSWwjlqJ91bPz4IQPAY5CL+G
	u73offQRZEmKOJF+RYF/AEWgDqWREWI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-u3GIO6v0Ngu45nT3mN7uGQ-1; Wed, 21 Jul 2021 02:59:43 -0400
X-MC-Unique: u3GIO6v0Ngu45nT3mN7uGQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D77A19611A1;
	Wed, 21 Jul 2021 06:59:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FCA25D9DC;
	Wed, 21 Jul 2021 06:59:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC65F4BB7C;
	Wed, 21 Jul 2021 06:59:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16L6rfjX010656 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 02:53:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A21F510EB2BA; Wed, 21 Jul 2021 06:53:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E89A10EB2BB
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 06:53:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEFFF18A01A0
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 06:53:38 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-453-1f_kYlouMZqsUgqnYHr05g-1; Wed, 21 Jul 2021 02:53:36 -0400
X-MC-Unique: 1f_kYlouMZqsUgqnYHr05g-1
Received: by mail-ej1-f41.google.com with SMTP id hc15so1647587ejc.4
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 23:53:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=VeZZaYrwTUYsWMv2g+qMytcc9Bv1tvuLjx5tUDswshk=;
	b=JlCoOBwpmGuYmIJ+2+mYWN9MnJYV2+D6PCc0fxYGPk/88nrP9Y2EntItGXvz8RG7uR
	2J0DyvHPOt4IH9opsPsCQEznMVW/rnTivTVonjXEyZDPRUlbHiJVJz5Jg5E2Gubi0ZZS
	+dBvNHB8ki5gUfP5ynmO5eLJSGUWs6TnVCCrKXWE/ptMVF9BnZRl3AC/zMx0stzr7wD6
	Z1z6uPCPdbvPwyhZZxpSGccOyykevgtrl2RZd5hM05nxz1lfwPKi1tQkKGrC5U9dd11H
	CW/M6n3E/ypUUTqfc46NcI4ecyKak1ILhl5Gpk5nPBUbUVDbNTPwp3+ReoKs1EAnihIE
	esuw==
X-Gm-Message-State: AOAM533QHyipb0/zkMb5PI3mEXCB+LwrCXHEBvwQNpEdv60EMhH46UbW
	1CM+2/4LZFuuxxIVOxQNTXTCs7ax9/fAnQ==
X-Google-Smtp-Source: ABdhPJzNd+khXselqmNNd2pS4oaSsWA3kq4McVYcZ5x/KObtzRl+3gIVv4/03BS2C4jiqUAI0tGPYQ==
X-Received: by 2002:a17:906:a2c4:: with SMTP id
	by4mr18160002ejb.521.1626850415107; 
	Tue, 20 Jul 2021 23:53:35 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	o21sm5360992ejc.98.2021.07.20.23.53.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Jul 2021 23:53:34 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Thunderbird on Slint
Message-ID: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
Date: Wed, 21 Jul 2021 08:53:31 +0200
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I just checked the version of Thunderbird in slint, and I saw it is 
about 10 versions out of date. Is there a way to get a newer version of 
the software? I know, I can probably get it from github, but I must 
admit, it is not my favorite way of installing software.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

