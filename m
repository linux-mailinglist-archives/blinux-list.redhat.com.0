Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B90A4C2E7B
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 15:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645713232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eDcOVbN0TcYw13PBRitfc17tKvQiPiAPQfzL5hP2QOI=;
	b=Ku74e7wsJJfbq0Vbll8O7TfO/27sBBut9gnTPONMsJRoz3YrlIpXXpfVHqxUDcXN1Cumz8
	DHaBSGUjudytLcHgvGUZAp7P1sRJ790VL5SVwfzKq3VKgTZTCi7zUDH7pWKwMI8M0O8z0i
	RwsojA4hlyqNObxfCTBy8AQjQFMFzQA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-Nw2Czd-NM9uMncIgch1MaA-1; Thu, 24 Feb 2022 09:33:48 -0500
X-MC-Unique: Nw2Czd-NM9uMncIgch1MaA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20C53180FD71;
	Thu, 24 Feb 2022 14:33:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7E71106F77B;
	Thu, 24 Feb 2022 14:33:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B01CB4BB40;
	Thu, 24 Feb 2022 14:33:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21OEVLmW005285 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Feb 2022 09:31:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D5D64492D59; Thu, 24 Feb 2022 14:31:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE6C8492D55
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 14:31:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5CDF185A794
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 14:31:21 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
	[209.85.219.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-648-C-rcJvnxO4eGv37qwRiSQA-1; Thu, 24 Feb 2022 09:31:19 -0500
X-MC-Unique: C-rcJvnxO4eGv37qwRiSQA-1
Received: by mail-qv1-f52.google.com with SMTP id g23so3817609qvb.4
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 06:31:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=pDSAtuzrjwfUZWHIDNrCqms8+M3ira73oePLMLEhMks=;
	b=OrNdzFbV3VQHXljBUiK51nQxWiID9ZbEX9VcMPP9Dr4Oeeg71dYUowzXJU+D3JJ9dE
	zmUVtsDNaBPnC/JN5Rc419zy6fAa0XI6buruzOhygKWdRO1vx06gB4D94AUzLidF499N
	Sbkg9oTcp+ngD9yR3LnwCAu/nWms8e8f7P8ubDK/34OxmIcUuAH/KakaGPe27RWKbFRp
	NLs+84PtFKePXp9W0s8lQbTeYrsFeXlhex5b4m5fw1T1wktIGJkvj18GesYe8XgESETu
	jPGuGlIVyI6pvbB6CtPTYrjj4ouPv2ncq5q82urdtujQUrHTqabE38GwIFWit828bC0x
	3F4A==
X-Gm-Message-State: AOAM533OTWy501ND4fzLwztRyKLv2ibffxzF0Q4ClexKgEe9mwk3jq0G
	bKsRHQhc1o+uIa1aaeaZcxbYq4jkg8w=
X-Google-Smtp-Source: ABdhPJxphswsgY4NN8lMRl6HBCbWfASPPqSmaoyZGX7Ox0Hxe6e4GSBlFXlwK2yJw85TYBo6lX2+kw==
X-Received: by 2002:a05:6214:92f:b0:432:87ae:5471 with SMTP id
	dk15-20020a056214092f00b0043287ae5471mr1985514qvb.104.1645713079079;
	Thu, 24 Feb 2022 06:31:19 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	i21sm1505301qtq.32.2022.02.24.06.31.18 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 24 Feb 2022 06:31:18 -0800 (PST)
Date: Thu, 24 Feb 2022 09:31:17 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Easiest way to back up/pull data from a cloud w/speakup or Fenrir?
Message-ID: <9a53f58e-c018-5678-0db-97be3794f88a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


There is rclone which is like a rsync for cloud drives.
Here is the home page and a blurb about it:
https://rclone.org

Rclone mounts any local, cloud or virtual filesystem as a disk on Windows, macOS, linux and FreeBSD, and also serves these over SFTP, HTTP,
WebDAV, FTP and DLNA.

On Wed, 23 Feb 2022, Linux for blind general discussion wrote:

> As it says...
>
> What's the simplest way to back up data to a cloud server and pull it
> back down?
>
> I have a new laptop. It's running vanilla Arch post install, I want to
> pull down my configs and saved and backed up .config directory from my
> old machine, but every provider I'm trying needs a browser window, it
> seems like.
>
> So is there any that I can run from a purely text mode install,
> preferably from the repos or AUR that'll let me download my files? I'm
> hoping there is because I, rankly, don't want to install a desktop for
> just this one thing
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

