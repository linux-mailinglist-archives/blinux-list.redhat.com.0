Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCB4441007
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 19:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635703857;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ArZN8GaNYBqBxQHUU7Y8tS0hLNBAHhQlhRMe73QfG9c=;
	b=gFZsNW5wWU90CqD6BfwROk2Zttoq6qxZAVWBMsfqLWnc1n+spiHmCUtiIHfMuUToffpE5X
	LteLnY4gdYGZSyU7/lksz7iPxcYfPNetpmAbJ+0rW+/lmoofidv1i5406wV/kgsOdJC9m0
	c4N1ouYFXQ29nL5d6kKGnZWGZivbeCI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-uIcLvWkEPgq5K3lKbdag4A-1; Sun, 31 Oct 2021 14:10:53 -0400
X-MC-Unique: uIcLvWkEPgq5K3lKbdag4A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F6AF806688;
	Sun, 31 Oct 2021 18:10:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDD26100239F;
	Sun, 31 Oct 2021 18:10:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD40F4A703;
	Sun, 31 Oct 2021 18:10:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VIAiHn018921 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 14:10:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 955BF51DD; Sun, 31 Oct 2021 18:10:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F87651DC
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:10:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73C7E811E76
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 18:10:41 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-556-bJCgU9qYPWGZDnR5FaSesQ-1; Sun, 31 Oct 2021 14:10:39 -0400
X-MC-Unique: bJCgU9qYPWGZDnR5FaSesQ-1
Received: by mail-qk1-f180.google.com with SMTP id a132so13515406qkg.0
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 11:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=A1rWn2DgJaSypvRt4RFiDps14cbUO73DBRYfHpbW1do=;
	b=moxrzZWU5+GYyulaepgleiF3l/Ztd4uyWKfnDqL/U0+UKNfoYrXn8Y86Y2y3lANoKd
	uEGJpG5zwnytpFBZiWSEzrkt3YuqPNdvfnwoUPZVIt8zhKAu5txtNhIE70VmiyU0vH4z
	OwQR94Fy7qq0dpaa7YmbkAn8muUwGGF+h+lV5be0NmKedqNDT8d0kP+RCW/LKq+Mcpt1
	ZC30+AJ+IMBGPyMpQdyXPkvVqJFi4dj2yuIt9tk7XoiT4MAYh8ZX1i/kSeRksnvaDp6G
	hqt9j4MJoDQfLJfOvqCskwxaX30RFMCAV4iwsEa7U2AE05TCLCAd95/iC1EGNYRmO7zz
	lMIg==
X-Gm-Message-State: AOAM5323FW2KJ4Y02PE8NF86LceC3EFp2nt5Op99kvN1/ktay9XE/Nnd
	06dAvwEq44TrFH/EIsqzLYbCQyhrFak=
X-Google-Smtp-Source: ABdhPJwwb6XtQ0m03tERvAN7R2vSuxeYFxmxB2pWBA0itdmRjHv4jk1hwAuqZ6LkEIW2lXreJHhalw==
X-Received: by 2002:a37:9fc9:: with SMTP id
	i192mr16269233qke.182.1635703838696; 
	Sun, 31 Oct 2021 11:10:38 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id y7sm8822783qtj.39.2021.10.31.11.10.38
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 31 Oct 2021 11:10:38 -0700 (PDT)
Message-ID: <4992392c-c4ea-7c33-5bd3-585e7620df5e@gmail.com>
Date: Sun, 31 Oct 2021 14:10:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: Beginner's Guide To The Linux Terminal
To: blinux-list@redhat.com
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
	<alpine.NEB.2.23.451.2110311320060.1691@panix1.panix.com>
	<afb0e612-5d09-f358-78b7-f4a455678088@gmail.com>
In-Reply-To: <afb0e612-5d09-f358-78b7-f4a455678088@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Looks like maybe you want

https://tldp.org/

That was quite a variation in mileage for me, 0 to 60 there. LOL.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

