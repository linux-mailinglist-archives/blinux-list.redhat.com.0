Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0334426C34F
	for <lists+blinux-list@lfdr.de>; Wed, 16 Sep 2020 15:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600263291;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4TkTUVg+XdolNDO3C2/hiig6J7u+k8Y9nDs27A0KJgM=;
	b=ClpXgmntP4VmnVP5vtcqjCDrmYp2g9hfk74ie+33Z+szJjXPgOYNtrvqI+hkgegfTCSPPR
	EhXGqoo2B6m4OjVyzn4w78coEuGMSTeGZx/HuzNRDleAPdd3AQTBxlXu3Hec2wMeaKKw6l
	TG7Jye8Gwk7ahxbLq3JcOLp4B9zQkfY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-NKw-AWD_P7iZV-jztFxLHw-1; Wed, 16 Sep 2020 09:34:48 -0400
X-MC-Unique: NKw-AWD_P7iZV-jztFxLHw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4254B1018723;
	Wed, 16 Sep 2020 13:34:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2800B60CCC;
	Wed, 16 Sep 2020 13:34:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 050FB44A6E;
	Wed, 16 Sep 2020 13:34:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08GDYcrF009411 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Sep 2020 09:34:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 083A920244F7; Wed, 16 Sep 2020 13:34:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 041842024508
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 13:34:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80DCE80096B
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 13:34:35 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-59-ihbAWJ__M1COU3404BcMoA-1; Wed, 16 Sep 2020 09:34:33 -0400
X-MC-Unique: ihbAWJ__M1COU3404BcMoA-1
Received: by mail-qk1-f169.google.com with SMTP id t138so8164336qka.0
	for <blinux-list@redhat.com>; Wed, 16 Sep 2020 06:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:user-agent
	:mime-version;
	bh=JTnm7GFtJSLu0v1iLDLDbVZZPx9yAfs6pzdTDTJlGSc=;
	b=R6lbaEO5Xevd0lJWtdzKxewBPaETHlXLj6YiuYBgLq31Of+/Ukv9juacoUhoS1LwVg
	r31p8Ih4mx7GXwiQT/yep3Rjk055CHFBGs2Jvwz7wmlv17Sw2mgsvkoFuv1c9Xbd4PGv
	0FbCa1YBtkGrbgKio8GDKwJlU2STKLCZIsR7m3z3vaWb7DjWoOn4eTAkJiNQbSyOEjKA
	RduANR5lSP0HL9Eu89QKBIg2fjM1xMjliKLj+ShXvXKkY24afS75Ki5AfyWNsj8nC5ub
	C+qOYH2Uy/HPwVYVG0TVzooaN5iWSt/1CdVHWNfG1uXruV0mwduZvn/k7W1AtzjKIlZd
	3Ueg==
X-Gm-Message-State: AOAM533Wr1mI+GZpEzQ0ficPlqob9y3IBkx8FXy+oxo1UP+qAQCmwNXK
	fwqete4XRiMEsqpbXq3Wo6eXMtVZDh8ZRw==
X-Google-Smtp-Source: ABdhPJz37/lSqUIHgHOOnY5+P8w3i5zzIe6pLgN+zJGjkHYxvfmVEZM8GleERK2NQOT8Ag5KaEkFrA==
X-Received: by 2002:a37:ef19:: with SMTP id j25mr21402291qkk.363.1600263272566;
	Wed, 16 Sep 2020 06:34:32 -0700 (PDT)
Received: from dans-mac-mini.home (pool-74-98-222-165.pitbpa.ftas.verizon.net.
	[74.98.222.165]) by smtp.gmail.com with ESMTPSA id
	q3sm20035148qkq.132.2020.09.16.06.34.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 16 Sep 2020 06:34:31 -0700 (PDT)
Date: Wed, 16 Sep 2020 09:34:30 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Question; was Strange Happenings in mpv?
Message-ID: <alpine.OSX.2.23.453.2009160932160.4379@dans-mac-mini.home>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


As for mpv, does anyone know of a mailing list for users?
On Tue, 15 Sep 2020, Linux for blind general discussion wrote:

> Well, just for the record, I am running Debian sid, as I certainly love
> getting the latest packages. So, 1 of my Linux experts created an audio
> editor which I can use after ripping streams. Just recently any files,
> especially dot aac, but really anything, now when I play them in mpv, I
> cannot arrow through to sample audio. I can arrow when playing these in m
> player. So, here's an even stranger aspect. If I move any of these files
> or their directory, I can then arrow. At that point, even if I change a
> name of a file, but if I move it back to its orriginal location, again I
> cannot arrow. First we thought there was some library bug in mpv, but the
> fact I can work with these files if they are moved, says its not that. My
> expert is useing a vlc library to enable me to edit. Can any1 please
> inform if you've ever seen this or what I can do to fixit? By the way vlc
> seems to never let me arrow through a file.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

