Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA77331FFE8
	for <lists+blinux-list@lfdr.de>; Fri, 19 Feb 2021 21:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613767175;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZmR9nsdpEyGGdwx7QqN/p3rtPPSi76FP383K4hOBNXs=;
	b=S26xuCRP6Tu6QC8AUed8jumnIkOh98fJHI9GdmI3gyTMN6ol1e6YtBt/195Y6ISPWE1ZE5
	Wuj3A+gImGhquZfBTeSLWMxyOCyN6P2ba8KQMoZzPRhHQtmpDutZ7BZGiZLs3dTkqTD0vc
	trdKPJfc6Ci5ToJ6wvZ0A4FxfTGz/5g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-Eulbe32xP0q56CaWprGs6Q-1; Fri, 19 Feb 2021 15:39:33 -0500
X-MC-Unique: Eulbe32xP0q56CaWprGs6Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4B70107AD2F;
	Fri, 19 Feb 2021 20:39:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 363A35D720;
	Fri, 19 Feb 2021 20:39:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 49E0318095CD;
	Fri, 19 Feb 2021 20:39:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11JKZwUF013471 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Feb 2021 15:35:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EA7AC1194E30; Fri, 19 Feb 2021 20:35:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E65F11194E3E
	for <blinux-list@redhat.com>; Fri, 19 Feb 2021 20:35:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 045FF186E121
	for <blinux-list@redhat.com>; Fri, 19 Feb 2021 20:35:55 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-153-q5AQH43mMyKEkKTgETrIZg-1; Fri, 19 Feb 2021 15:35:51 -0500
X-MC-Unique: q5AQH43mMyKEkKTgETrIZg-1
Received: by mail-lj1-f177.google.com with SMTP id a17so27680946ljq.2
	for <blinux-list@redhat.com>; Fri, 19 Feb 2021 12:35:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:date:message-id:user-agent:subject
	:mime-version;
	bh=Vshk6ZndV+9p5knZ4qC77Ix7jmLsJrGApuCwnEzIcdA=;
	b=EU9pZwQrmEc33RUmCHggAv9F2oaIL9An/DQ1C2lMiCLK4mnHi087s3jft2JRXF7gqw
	/5E0knj48VZDZAN+ZlggcfZuY4IpFc0ZZcWXY6nVuArA0VmQ9lnIlkvslooJ+a+AEkfH
	mx5u9Jr6g+C4v8ikg9IuDVK00xhnjDK0dOk7ed/YMnkA8igwJWA/sftgNzkZhQlOGhd0
	5/bBriZAN9QQAwx05GUxbLLTUKZmNliGGy9BdSUGLCwTPQxd4bJFn66+jaMlEhGcTx8x
	zeGU2wU28FqAxWPvoTaAVWBop640daA/5J0jQA99Mx4tZcQ5EV5KT4IuRxZLe5ZNRdUT
	DoXA==
X-Gm-Message-State: AOAM530Pa74jxiWcu8BWjxF3KkNbmxEAO4zT/juGEJAMvX/J4Zr6Xi1P
	tQw6UmyktfZThZj06Vn7lX5KoQb+ShNJMg==
X-Google-Smtp-Source: ABdhPJzxS8rEo5zRugWuxKdQY9zHG9r0jbZdrXi1JhclEBx2mEy4D6s4x/ZD3zpug7RhW6qWOTXlXg==
X-Received: by 2002:a05:6512:519:: with SMTP id
	o25mr6636960lfb.529.1613766949524; 
	Fri, 19 Feb 2021 12:35:49 -0800 (PST)
Received: from [100.115.92.14] (81-228-143-85-no527.tbcn.telia.com.
	[81.228.143.85]) by smtp.gmail.com with ESMTPSA id
	x22sm1083963ljg.95.2021.02.19.12.35.48 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 19 Feb 2021 12:35:48 -0800 (PST)
To: <blinux-list@redhat.com>
Date: Fri, 19 Feb 2021 21:35:46 +0100
Message-ID: <177bc016cd0.276f.afbff0009b353412c733e12e23e6ae2b@gmail.com>
User-Agent: AquaMail/1.28.0-1752 (build: 102800001)
Subject: chromebook
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

anyone here using linux with crouton on chromebook?
if so dont try debian buster and above
it dont speak
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

