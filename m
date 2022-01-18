Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88199492E13
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 20:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642532465;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cYmIq4C/4KhMXothDpwArO3AICRlByX/Ezo9vO9VfLQ=;
	b=Cs+zJAUz5CdFLSFb5iDhqyAWjodtk73DlQx+WtKNO901GXli/fKX2xjTM0nQsuAByHcLPl
	6bjP1jXPuto6VwGINnPJQfxomEHjnSatTp03UlZYdLxwctYtx5XdTzZQYRouMMC9uSoQKe
	l729Qre6L5hOjnMeBehghY42I2qRcJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-67--zsGVca1NqaYEiLYjV82lQ-1; Tue, 18 Jan 2022 14:01:02 -0500
X-MC-Unique: -zsGVca1NqaYEiLYjV82lQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E00C46863;
	Tue, 18 Jan 2022 19:00:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0918C5D6B1;
	Tue, 18 Jan 2022 19:00:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 57AC44BB7C;
	Tue, 18 Jan 2022 19:00:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IIul8I018823 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 13:56:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 76F66401E57; Tue, 18 Jan 2022 18:56:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72BF8401E3C
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 18:56:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49DBC185A79C
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 18:56:47 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-620-12VLpLvXOYKN3nEF67T8Kw-1; Tue, 18 Jan 2022 13:56:45 -0500
X-MC-Unique: 12VLpLvXOYKN3nEF67T8Kw-1
Received: by mail-qv1-f44.google.com with SMTP id a7so258187qvl.1
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 10:56:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=P5qrSwoxHDVYJ81uVChVJxBIo4cPdOIRQJrGB/1Fb64=;
	b=YMxinzxAfAh6FGqMxkksch/uP0Z6DbvVR7VVo4mv8LANY8dzy2Cd5L0GplWUuIKV2m
	5Cmz1esfCzRcWk8tsGpS/T8oMS5SiEdk7WrlCvatfQK/rH9/nxAPr4BdMPniD3BfyBaL
	nLvzHvW/rLb60nlrGhyd8b9mA/BhgpKHOQBUlCCSyQ2mHGqEYuQwkMDsHjtnGz5gNxEu
	QMq7X9w8tkWviWVTfjGCommZQ/PtBiyydfBHcWFt9YC2rdpW5F7ygsOFEhnx8Voc2GOM
	cPULS19Bog5ZsBFFNfSSZdjqKg0V/8xbhR/wUIk6+HNSYTgqhQtgOU+Tma/ETqSHPH16
	gk4w==
X-Gm-Message-State: AOAM530rvAS5QfzIh+0HHCLA65HmJh0T53OhwCtj+Lk87nQ0JD1vXv6g
	o7fIbtlYXL7WxdFoIkX1jqVFWiHnC+SQT2VEMI9TszuN
X-Google-Smtp-Source: ABdhPJxqSVNu5XdufI/n25p0P4I5PUfZRqYmTmPVBQEbGgwQfos7BYCMKItRcG2iuIiSe/qRTxOHCNIPLujAmoziFpY=
X-Received: by 2002:ad4:5f4b:: with SMTP id p11mr24418775qvg.46.1642532205057; 
	Tue, 18 Jan 2022 10:56:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Tue, 18 Jan 2022 10:56:44
	-0800 (PST)
In-Reply-To: <6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
Date: Tue, 18 Jan 2022 18:56:44 +0000
Message-ID: <CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
Subject: Re: starting out with linux
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Ah, it being a systemd thing would explain my system's lack of an
/etc/vconsole.conf file, as my system is using sysvinit.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

